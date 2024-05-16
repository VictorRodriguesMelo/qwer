package com.service;

import java.util.Optional;

import com.domain.entity.Pedido;
import com.domain.enums.StatusPedido;
import com.rest.dto.PedidoDTO;

public interface PedidoService {
    Pedido salvar( PedidoDTO dto );
    Optional<Pedido> obterPedidoCompleto(Integer id);
    void atualizaStatus(Integer id, StatusPedido statusPedido);
}
