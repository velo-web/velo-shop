package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.veloweb.veloshop.modelo.Banco;
import br.com.veloweb.veloshop.modelo.Produto;

public class ProdutoLista implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Banco banco = new Banco();
		List<Produto> produtos = banco.getListaDeProdutos();
		
		request.setAttribute("listaDeProdutos", produtos);
		
		return "fw:listaProdutos.jsp";
	}

}