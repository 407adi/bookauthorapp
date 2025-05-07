package com.example.bookauthorapp.entity;

import jakarta.persistence.*;
import java.util.Set;

import java.time.LocalDate;

import io.micrometer.common.lang.NonNull;

@Entity
@Table(name = "Books")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long bookID;

    @NonNull
    private String title;

    private LocalDate publishedDate;

    private String isbn;

    @ManyToOne
    @JoinColumn(name = "AuthorID")
    @NonNull
    private Author author;

    @ManyToOne
    @JoinColumn(name = "CategoryID")
    @NonNull
    private Category category;

    // Many-to-Many with Author
    @ManyToMany
    @JoinTable(
        name = "book_author",
        joinColumns = @JoinColumn(name = "bookid"),
        inverseJoinColumns = @JoinColumn(name = "authorid")
    )
    private Set<Author> authors;

    // Getters and Setters
    public Long getBookID() {
        return bookID;
    }

    public void setBookID(Long bookID) {
        this.bookID = bookID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDate getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(LocalDate publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
