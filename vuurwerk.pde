Mortier mortier;
Mortier mortier2;
Dahlia dahlia;
Dahlia dahlia2;

Engine engine;

void setup() {
    size(800, 600);

    engine = new Engine();

    mortier = new Mortier(width/2, PI * 1.4);
    mortier2 = new Mortier(width/2, PI * 1.6);

    dahlia = new Dahlia();
    dahlia2 = new Dahlia();

    dahlia2.red = 0;
    dahlia2.blue = 255;

    mortier.setMortier(dahlia);
    mortier2.setMortier(dahlia2);

    engine.setUpdate(mortier.granaat);
    engine.setShow(mortier.granaat);

    engine.setUpdate(mortier2.granaat);
    engine.setShow(mortier2.granaat);
}

void draw() {
    background(0);

    engine.run();
}
