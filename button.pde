class MenuButton extends Button {
    // MenuButton(String txt, float x, float y) {
    //     super(txt, x, y);
    // }

    void released() {
        if (releasedInside()) {
            println("released inside");
        }
    }
}

class Button {
    int w, h, r, s, fillC, strokeC; // r: rounded corner, s: textSize
    float x, y, textDesc; // correction for vertical alignment
    String txt;
    boolean active;

    Button() { // default constructor
        txt = "Button";
        x = 0;
        y = 0;
        w = 100;
        h = 40;
        r = 5;
        s = 30;
        fillC = 0;
        strokeC = 255;
        textSize(s);
        textDesc = 0.6 * textDescent();
        active = false;
    }

    Button(String buttonText, float x, float y) {
        this();
        txt = buttonText;
        this.x = x;
        this.y = y;
    }

    void pressed() {
        if (inside()) press();
    }

    boolean releasedInside() {
        if (active) {
            release();
            
            if (inside()) return true;
        }

        return false;
    }

    boolean inside() {
        return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
    }

    void press() {
        active = true;
        fillC = 100;
    }

    void release() {
        fillC = 0;
        active = false;
    }

    void show() {
        stroke(strokeC);
        strokeWeight(2);
        fill(fillC);
        rect(x, y, w, h, r);

        textAlign(CENTER, CENTER);
        textSize(s);
        fill(255);
        text(txt, x + w/2, y + h/2 - textDesc);

        // line to check middle of text for vertical alignment
        // strokeWeight(1);
        // line(x, y + h/2, x + w, y + h/2);
    }
}
