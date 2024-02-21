/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity.Product;

import java.util.Date;

public class Author {
    private String name;
    private Date birthday;
    private String bio;
    
    public Author() {
    }

    public Author(String name, Date birthday, String bio) {
        this.name = name;
        this.birthday = birthday;
        this.bio = bio;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthDate) {
        this.birthday = birthDate;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    @Override
    public String toString() {
        return "\nAuthor{" + "name=" + name + ", birthday=" + birthday + ", bio=" + bio + '}';
    }
    
    
    
    
    
}
