class Engine {
    ArrayList<Update> updates = new ArrayList<Update>();
    ArrayList<Update> updatesToRemove = new ArrayList<Update>();
    ArrayList<Update> updatesToAdd = new ArrayList<Update>();
    ArrayList<Show> shows = new ArrayList<Show>();
    ArrayList<Show> showsToRemove = new ArrayList<Show>();
    ArrayList<Show> showsToAdd = new ArrayList<Show>();
    
    void addUpdate(Update update) {
        updatesToAdd.add(update);
    }

    void addShow(Show show) {
        showsToAdd.add(show);
    }

    void removeUpdate(Update update) {
        updatesToRemove.add(update);
    }

    void removeShow(Show show) {
        showsToRemove.add(show);
    }

    void update() {
        for (Update u : updates) u.update();

        updates.removeAll(updatesToRemove);
        updates.addAll(updatesToAdd);

        updatesToRemove.clear();
        updatesToAdd.clear();
    }

    void show() {
        for (Show s : shows) s.show();

        shows.removeAll(showsToRemove);
        shows.addAll(showsToAdd);

        showsToRemove.clear();
        showsToAdd.clear();
    }
}
