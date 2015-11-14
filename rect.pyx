
cdef extern from "Rectangle.h" namespace "shapes":
    cdef cppclass Rectangle[T]:
        Rectangle(T, T, T, T) except +
        T x0, y0, x1, y1
        T getLength()
        T getHeight()
        T getArea()
        void move(T, T)

cdef class IntRectangle:
    cdef Rectangle[int] *thisptr      # hold a C++ instance which we're wrapping
    def __cinit__(self, int x0, int y0, int x1, int y1):
        self.thisptr = new Rectangle[int](x0, y0, x1, y1)
    def __dealloc__(self):
        del self.thisptr
    def getLength(self):
        return self.thisptr.getLength()
    def getHeight(self):
        return self.thisptr.getHeight()
    def getArea(self):
        return self.thisptr.getArea()
    def move(self, dx, dy):
        self.thisptr.move(dx, dy)

cdef class DoubleRectangle:
    cdef Rectangle[double] *thisptr      # hold a C++ instance which we're wrapping
    def __cinit__(self, double x0, double y0, double x1, double y1):
        self.thisptr = new Rectangle[double](x0, y0, x1, y1)
    def __dealloc__(self):
        del self.thisptr
    def getLength(self):
        return self.thisptr.getLength()
    def getHeight(self):
        return self.thisptr.getHeight()
    def getArea(self):
        return self.thisptr.getArea()
    def move(self, dx, dy):
        self.thisptr.move(dx, dy)

#
# cdef Rectangle *rec = new Rectangle(1, 2, 3, 4)
# try:
#     recLength = rec.getLength()
#     print recLength
# finally:
#     del rec     # delete heap allocated object
