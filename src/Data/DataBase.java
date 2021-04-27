package Data;

import java.util.ArrayList;
import java.util.List;

public class DataBase {

    List<User> usersList = new ArrayList<>();
    List<Thread> threads = new ArrayList<>();
    List<Comment> comments =  new ArrayList<>();


    public DataBase(){
        usersList.add(new User("admin", "admin", true, true));
        usersList.add(new User("user", "user", false, true));
        usersList.add(new User("", "", false, false));

        threads.add(new Thread("Poop into kuvshin", "Auf auf nasral v kuvskin", 10, comments));
        threads.add(new Thread("Devochki vse na nagotochki", "Zapis na nagotochki", 20, comments));
        threads.add(new Thread("Zbornaya po fortochke", "nagiraem anonav na chempionat", 30, comments));
    }

    public List<User> getUsersList(){
        return usersList;
    }

    public List<Thread> getThreads() {
        return threads;
    }

    public List<Comment> getComments() {
        return comments;
    }
}


