class Mortier {
    Vuurwerk granaat;
    float angle, x;

    Mortier(float x, float angle) {
        this.angle = angle;
        this.x = x;
    }

    void setMortier(Vuurwerk granaat) {
        granaat.vaart.set(PVector.fromAngle(angle).mult(granaat.lanceerSnelheid));
        granaat.positie.x = x;
        granaat.positie.y = height + granaat.grootte / 2;
        this.granaat = granaat;
    }
}
