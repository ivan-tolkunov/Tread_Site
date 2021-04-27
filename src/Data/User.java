package Data;

public class User {

    String username;
    String password;
    boolean isAdmin;
    boolean isReg;

    public User(String username, String password, boolean isAdmin, boolean isReg) {
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isReg = isReg;
    }

    public String getUsername(){
        return username;
    }

    public String getPassword(){
        return password;
    }

    public boolean getIsAdmin(){
        return isAdmin;
    }

    public boolean getIsReg(){
        return isReg;
    }


}
