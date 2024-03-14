void mousePressed() {
    input.mousePress();
}

void mouseReleased() {
    input.mouseRelease();
}

class InputScreen1 implements Input {
    Button button;

    InputScreen1(Button button) {
        this.button = button;
    }

    void mousePress() {
        if (button.inside()) button.press();
    }
    void mouseRelease() {
        if (button.pressed) {
            if (button.inside()) {
                Sequencer sequencer = new Sequencer();

                sequencer.start();
            }

            button.release();
        }
    }
}
