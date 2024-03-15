void mousePressed() {
    input.mousePress();
}

void mouseReleased() {
    input.mouseRelease();
}

class InputMenu implements Input {
    MenuButton[] buttons;

    InputMenu(MenuButton[] buttons) {
        this.buttons = buttons;
    }

    void mousePress() {
        for (MenuButton b : buttons) b.pressed();
    }

    void mouseRelease() {
        for (MenuButton b : buttons) {
            b.released();
            // if (b.pressed) {
            //     b.release();
            //     goToPlayField();
            // }
        }
        // if (buttons[0].pressed) {
        //     if (buttons[0].inside()) {
        //         // goToPlayfield();
        //     }

        //     buttons[0].release();
        // }

        // if (buttons[1].pressed) {
        //     if (buttons[1].inside()) {
        //         // goToPlayfield();
        //     }

        //     buttons[1].release();
        // }
    }
}


class InputScreen1 implements Input {
    Button[] buttons;

    InputScreen1(Button[] buttons) {
        this.buttons = buttons;
    }

    void mousePress() {
        if (buttons[0].inside()) buttons[0].press();
    }
    
    void mouseRelease() {
        // if (buttons[0].pressed) {
        //     if (buttons[0].inside()) {
        //         Sequencer sequencer = new Sequencer();

        //         sequencer.start();
        //     }

        //     buttons[0].release();
        // }
    }
}
