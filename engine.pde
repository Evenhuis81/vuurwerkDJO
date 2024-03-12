class Engine {
    ArrayList<Update> updates = new ArrayList<Update>();
    ArrayList<Show> shows = new ArrayList<Show>();

    void run() {
        for (Update u : updates) u.update();
        for (Show s : shows) s.show();
    }
    
    void setUpdate(Update update) {
        updates.add(update);
    }

    void setShow(Show show) {
        shows.add(show);
    }
}
