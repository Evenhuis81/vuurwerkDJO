class Vonk implements Update, Show, Deeltje {
    PVector positie = new PVector(300, 400);
    PVector vaart = new PVector();
    PVector acceleratie = new PVector(0, 0.03); // default gravity
    int red = 255;
    int green = 255;
    int blue = 255;
    int alpha = 255;
    int grootte = 10;

    void update() {
        vaart.add(acceleratie);
        positie.add(vaart);
    }
    void show() {
        fill(red, green, blue, alpha);
        circle(positie.x, positie.y, 10);
    }
}

class VonkVervagen extends Vonk {
    void update() {
        super.update();
        
        alpha--;
        if (alpha < 1) {
            engine.removeUpdate(this);
            engine.removeShow(this);
        }
    }
}
