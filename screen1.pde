class Screen1 implements Screen {
    Button startButton;

    Screen1() {
        startButton = new Button("Start", width - 120, height - 120);

        input = new InputScreen1(startButton);
    }

    void update() {
        engine.update();
    }

    void draw() {
        background(0);

        engine.show();

        startButton.show();

        fill(255);
        textSize(32);
        text(engine.updates.size(), 100, 100);
        text(engine.shows.size(), 100, 150);
    }
}
