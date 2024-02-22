
package entity.Product;

import dao.BookDAO;
import java.util.ArrayList;
import java.util.List;

public class Book {
    private int id;
    private String title, genre, description;
    private int quantity;
    private float price;
    private Author author;
    private Publisher publisher;
    private List<String> images = new ArrayList<>();
    public Book() {
    }

    public Book(int id, String title, String genre, String description, int quantity, float price, int AuthorId, int PublisherId) {
        this.id = id;
        this.title = title;
        this.genre = genre;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.author = BookDAO.getAuthor(AuthorId);
        this.publisher = BookDAO.getPublisher(PublisherId);
        this.images = BookDAO.getImages(id);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", title=" + title + ", genre=" + genre + ", description=" + description + ", quantity=" + quantity + ", price=" + price + ", author=" + author + ", publisher=" + publisher + ", images=" + images + '}';
    }

    
    
}