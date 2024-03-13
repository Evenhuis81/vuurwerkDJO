class Sequencer implements Update {
    int[] timeStamps = { 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000 };
    float[] angles = { 1.25, 1.30, 1.35, 1.40, 1.45, 1.50, 1.55, 1.60, 1.65, 1.70, 1.75 };
    int currentIndex = 0;
    float timeStart, timePassed;
    Mortier mortier;

    Sequencer() {
        mortier = new Mortier(width/2, PI * 1.75);
        Vuurwerk[] vuurwerk = new Vuurwerk[11];

        for (int i = 0; i < vuurwerk.length; i++) {
            vuurwerk[i] = new Dahlia();
        }

        mortier.setFireworks(vuurwerk);
    }

    void start() {
        engine.addUpdate(this);
        timeStart = millis();
    }

    void update() {
        timePassed = millis() - timeStart;

        if (timePassed > timeStamps[currentIndex]) {
            mortier.angle = angles[currentIndex];
            mortier.launch(currentIndex);

            engine.addUpdate(mortier.granaat[currentIndex]);
            engine.addShow(mortier.granaat[currentIndex]);

            currentIndex++;

            if (currentIndex > timeStamps.length - 1) {
                engine.removeUpdate(this);
            }
        }
    }
}
