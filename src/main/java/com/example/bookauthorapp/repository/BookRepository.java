package com.example.bookauthorapp.repository;

import com.example.bookauthorapp.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {

    @Query("SELECT b FROM Book b JOIN FETCH b.author JOIN FETCH b.category")
    List<Book> fetchBooksWithAuthorAndCategory();
}
