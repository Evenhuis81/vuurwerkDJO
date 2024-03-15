class Mortier {
    Vuurwerk[] granaat;
    float angle, x;

    Mortier(float x, float angle) {
        this.angle = angle;
        this.x = x;
    }

    void setFireworks(Vuurwerk[] granaat) {
        this.granaat = new Vuurwerk[granaat.length];
        for (int i = 0; i < granaat.length; i++)  this.granaat[i] = granaat[i];
    }

    void launch(int index) {
        granaat[index].vaart.set(PVector.fromAngle(PI * angle).mult(granaat[index].lanceerSnelheid));
        granaat[index].positie.x = x;
        granaat[index].positie.y = height + granaat[index].grootte / 2;
    }
}
