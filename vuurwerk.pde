Engine engine;
Sequencer sequencer;
Button startButton;

void setup() {
    size(800, 600);

    engine = new Engine();

    sequencer = new Sequencer();

    startButton = new Button("Start", width - 120, height - 120);
}

void draw() {
    background(0);

    engine.run();

    startButton.show();
}
