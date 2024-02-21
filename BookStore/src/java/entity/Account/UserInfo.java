
package entity.Account;

/*
 * @author tuanngp
 */
public class UserInfo extends Account{
    private String name, email, phone, address;

    public UserInfo() {
    }

    public UserInfo(String name, String email, String phone, String address) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }

    public UserInfo(String name, String email, String phone, String address, String username, String password, String role, boolean isActive) {
        super(username, password, role, isActive);
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User{" + "name=" + name + ", email=" + email + ", phone=" + phone + ", address=" + address + '}';
    }
}
