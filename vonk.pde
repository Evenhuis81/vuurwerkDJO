class Vonk implements Update, Show, Deeltje {
    PVector positie = new PVector(300, 400);
    PVector vaart = new PVector();
    PVector acceleratie = new PVector();
    color fillColor = 255;
    int grootte = 10;

    void update() {
        vaart.add(acceleratie);
        positie.add(vaart);
    }
    void show() {
        fill(fillColor);
        circle(positie.x, positie.y, 10);
    }
}
