package model;

public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String rank;
    protected String goal;

    public User(String name, String email, String rank, String goal) {

        this.name = name;
        this.email = email;
        this.rank = rank;
        this.goal = goal;
    }

    public User(int id, String name, String email, String rank, String goal) {

        this.id = id;
        this.name = name;
        this.email = email;
        this.rank = rank;
        this.goal = goal;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getRank() {
        return rank;
    }
    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getGoal() {
        return goal;
    }
    public void setGoal(String goal) {
        this.goal = goal;
    }
}
