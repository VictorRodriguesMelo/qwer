package com.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.domain.entity.ItemPedido;

public interface ItemsPedido extends JpaRepository<ItemPedido, Integer> {
}
