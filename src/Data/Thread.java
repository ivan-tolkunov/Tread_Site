package Data;

import java.util.List;

public class Thread {
    String title;
    String description;
    int likes;
    List<Comment> comment;

    public Thread(String title, String description, int likes, List<Comment> comment) {
        this.title = title;
        this.description = description;
        this.likes = likes;
        this.comment = comment;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getLikes() {
        return likes;
    }

    public List<Comment> getComment() {
        return comment;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
}
