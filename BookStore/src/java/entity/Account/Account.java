
package entity.Account;

/*
 * @author tuanngp
 */
public class Account {
    private String username, password, role;
    private boolean isActive;

    public Account() {
    }

    public Account(String username, String password, String role, boolean isActive) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.isActive = isActive;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", role=" + role + ", isActive=" + isActive + '}';
    }
}
