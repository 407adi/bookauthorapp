
package com.example.bookauthorapp.repository;

import com.example.bookauthorapp.entity.Author;

import java.util.List;
import java.time.LocalDate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface AuthorRepository extends JpaRepository<Author, Long> {
    @Query("SELECT a FROM Author a WHERE a.birthdate < :date")
List<Author> findAuthorsBornBefore(@Param("date") LocalDate date);
}
