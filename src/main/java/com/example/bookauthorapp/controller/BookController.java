package com.example.bookauthorapp.controller;

import com.example.bookauthorapp.entity.Book;
import com.example.bookauthorapp.repository.AuthorRepository;
import com.example.bookauthorapp.repository.BookRepository;
import com.example.bookauthorapp.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;


@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private AuthorRepository authorRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping
    public String getAllBooks(Model model) {
        List<Book> books = bookRepository.fetchBooksWithAuthorAndCategory();
        for (Book book : books) {
            System.out.println("Book: " + book.getTitle() + 
                ", Author: " + book.getAuthor().getName() + 
                ", Category: " + book.getCategory().getCategoryName());
        }
    
        model.addAttribute("books", books);
        return "books";
    }

    @GetMapping("/add")
    public String addBookForm(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("authors", authorRepository.findAll());
        model.addAttribute("categories", categoryRepository.findAll());
        return "add-book";
    }

    @PostMapping("/save")
    public String saveBook(@ModelAttribute Book book) {
        bookRepository.save(book);
        return "redirect:/books";
    }
}


