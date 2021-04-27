package Data;

public class Comment {
    String text;
    Thread thread;

    public Comment(String text, Thread thread) {
        this.text = text;
        this.thread = thread;
    }

    public Thread getThread() {
        return thread;
    }

    public String getText() {
        return text;
    }
}
