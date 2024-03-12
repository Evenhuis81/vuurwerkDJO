Deeltje deeltje;

void setup() {
    size(800, 600);    

    deeltje = new Deeltje();
}

void draw() {
    background(0);

    deeltje.update();
    deeltje.show();
}
