Engine engine;
Screen screen;
Input input;

void setup() {
    size(800, 600);

    engine = new Engine();

    screen = new Menu();
}

void draw() {
    screen.update();
    screen.draw();
}
