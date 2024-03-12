ArrayList<Deeltje> deeltjes = new ArrayList<Deeltje>();
Engine engine;
Vonk vonk;

void setup() {
    size(800, 600);

    engine = new Engine();
    vonk = new Vonk();

    vonk.vaart.y = -2;
    vonk.acceleratie.y = 0.01;

    engine.setUpdate(vonk);
    engine.setShow(vonk);
}

void draw() {
    background(0);

    engine.run();
}
