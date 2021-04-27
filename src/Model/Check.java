package Model;

import Data.Comment;
import Data.DataBase;
import Data.Thread;
import Data.User;

import java.util.List;

public class Check {
    DataBase dataBase = new DataBase();
    User curUser;

    public boolean checkUser(String username, String password) {
        for (User u : dataBase.getUsersList()) {
            if (username.equals(u.getUsername()) && password.equals(u.getPassword())) {
                curUser = u;
                return true;
            }
        }
        return false;
    }

    public User getCurUser() {
        return curUser;
    }

    public DataBase getDataBase() {
        return dataBase;
    }

    public void increaseLike(int idx) {
        int i = getDataBase().getThreads().get(idx).getLikes() + 1;
        getDataBase().getThreads().get(idx).setLikes(i);
    }

    public void deleteThread(int idx) {
        getDataBase().getThreads().remove(getDataBase().getThreads().get(idx));
    }

    public void add(String title, String description) {
        getDataBase().getThreads().add(new Thread(title, description, 0, getDataBase().getComments()));
    }

    public void addComment(Thread thread, String text) {
        getDataBase().getComments().add(new Comment(text, thread));
    }

    public void editThread(int idx, String title, String description, int likes, List<Comment> comment) {
        getDataBase().getThreads().set(idx, new Thread(title, description, likes, comment));
    }
}
