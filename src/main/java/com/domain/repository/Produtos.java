package com.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.domain.entity.Produto;

public interface Produtos extends JpaRepository<Produto,Integer> {
}
