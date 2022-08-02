CC=g++
INC=/usr/local/include/opencv4
LIB=/usr/local/lib
LIBS=-lopencv_core -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc -lopencv_objdetect -lopencv_video -lopencv_videoio -g

prog: watermark.cpp
	$(CC) -I$(INC) watermark.cpp -o watermark -L$(LIB) $(LIBS)

clean:
	rm -f *.o *~ watermark