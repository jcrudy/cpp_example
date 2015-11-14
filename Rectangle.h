namespace shapes {
    template <typename T>
    class Rectangle {
    public:
        T x0, y0, x1, y1;
        Rectangle(T x0, T y0, T x1, T y1);
        ~Rectangle();
        T getLength();
        T getHeight();
        T getArea();
        void move(T dx, T dy);
    };
    template <typename T>
    Rectangle<T>::Rectangle(T X0, T Y0, T X1, T Y1) {
        x0 = X0;
        y0 = Y0;
        x1 = X1;
        y1 = Y1;
    }

    template <typename T>
    Rectangle<T>::~Rectangle() { }

    template <typename T>
    T Rectangle<T>::getLength() {
        return (x1 - x0);
    }

    template <typename T>
    T Rectangle<T>::getHeight() {
        return (y1 - y0);
    }

    template <typename T>
    T Rectangle<T>::getArea() {
        return (x1 - x0) * (y1 - y0);
    }

    template <typename T>
    void Rectangle<T>::move(T dx, T dy) {
        x0 += dx;
        y0 += dy;
        x1 += dx;
        y1 += dy;
    }
}
