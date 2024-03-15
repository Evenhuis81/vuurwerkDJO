class Menu implements Screen {
    Button[] buttons;

    Menu() {
        buttons = new MenuButton[1];
        buttons[0] = new MenuButton("TEST", width/2, height/2); 
        // buttons[0] = new Button("Screen 1", width/2 - 50, height/2); // Playfield
        // buttons[1] = new Button("Screen 2", width/2 - 50, height/2 + 50); // Sequencer (editor)
        
        input = new InputMenu(buttons);
    }


    void update() {
        //
    }

    void draw() {
        background(80, 0, 0);

        buttons[0].show();
        // buttons[1].show();
    }
}

class Playfield implements Screen {
    Button[] startButton;

    Playfield() {
        startButton = new Button[1];
        startButton[0] = new Button("Start", width - 120, height - 120);

        input = new InputScreen1(startButton);
    }

    void update() {
        engine.update();
    }

    void draw() {
        background(0);

        engine.show();

        startButton[0].show();

        fill(255);
        textSize(32);
        text(engine.updates.size(), 100, 100);
        text(engine.shows.size(), 100, 150);
    }
}
