package com.example.bookauthorapp.repository;

import com.example.bookauthorapp.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}
