package com.dnsouzadev.dslearn.entities.pk;

import com.dnsouzadev.dslearn.entities.Offer;
import com.dnsouzadev.dslearn.entities.User;
import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class EnrollmentPK implements Serializable {

    @Serial
    private final static long serialVersionUID = 1L;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPK() {
    }

    public EnrollmentPK(User user, Offer offer) {
        this.user = user;
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        EnrollmentPK that = (EnrollmentPK) o;
        return Objects.equals(user, that.user) && Objects.equals(offer, that.offer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user, offer);
    }
}