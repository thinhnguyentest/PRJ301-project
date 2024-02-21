package entity.Product;

import java.sql.Date;

class Publisher {
    private String PublisherName;
    private Date DateEstablished;

    public Publisher() {
    }

    public Publisher(String PublisherName, Date DateEstablished) {
        this.PublisherName = PublisherName;
        this.DateEstablished = DateEstablished;
    }

    public String getPublisherName() {
        return PublisherName;
    }

    public void setPublisherName(String PublisherName) {
        this.PublisherName = PublisherName;
    }

    public Date getDateEstablished() {
        return DateEstablished;
    }

    public void setDateEstablished(Date DateEstablished) {
        this.DateEstablished = DateEstablished;
    }

    @Override
    public String toString() {
        return "\nPublisher{" + "PublisherName=" + PublisherName + ", DateEstablished=" + DateEstablished + '}';
    }

}
