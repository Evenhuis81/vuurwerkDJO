Engine engine;
Screen screen;
Input input;

void setup() {
    size(800, 600);

    engine = new Engine();

    screen = new Screen1();
}

void draw() {
    screen.update();
    screen.draw();
}
