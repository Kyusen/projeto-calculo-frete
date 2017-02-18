package com.dev.web.mobile.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.web.mobile.interfaces.Instancia;
import com.dev.web.mobile.util.Constantes;

public class Login implements Instancia {

	public String executa(HttpServletRequest request, HttpServletResponse response) {
		// TODO Realiza o login validando o usuário e então encaminha para o início
		return Constantes.raizPages + "inicio.jsp";
	}

}
