class Vuurwerk extends Vonk {
    int lanceerSnelheid = 5;
    // Vonk[] burstCharge;
}

class Dahlia extends Vuurwerk {
    boolean exploded = false;

    Dahlia() {
        green = 0;
        blue = 0;
        alpha = 128;
    }

    void update() {
        super.update();

        if (vaart.y > 0 && !exploded) {
            exploded = true;
            explode(25);
            engine.removeUpdate(this);
            engine.removeShow(this);
        }
    }

    void explode(int amount) {
        for (int i = 0; i < amount; i++) {
            Vonk vonk = new VonkVervagen();
            vonk.positie.set(positie);
            vonk.vaart.set(PVector.random2D().mult(random(2, 4)));
            vonk.red = (int) random(256);
            vonk.blue = (int) random(256);
            vonk.green = (int) random(256);

            engine.addUpdate(vonk);
            engine.addShow(vonk);
        }
    }
}
