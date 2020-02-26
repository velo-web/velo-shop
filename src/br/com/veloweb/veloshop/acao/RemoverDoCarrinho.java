package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Banco;
import br.com.veloweb.veloshop.modelo.Produto;

public class RemoverDoCarrinho implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session =  request.getSession();
		
		List<Produto> lista = (List<Produto>) session.getAttribute("carrinho");
		
		String id = request.getParameter("id");
		Banco banco = new Banco();
		Produto produto = banco.getProdutoPorId(id);
		
		if (lista.contains(produto)) {
			lista.remove(produto);
		}
		
		return "rd:CarrinhoLista";
	}

}
