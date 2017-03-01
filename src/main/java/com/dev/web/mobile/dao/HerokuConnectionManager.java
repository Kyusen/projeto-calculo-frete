package com.dev.web.mobile.dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;

public class HerokuConnectionManager implements ConnectionManager {

	private static ConnectionManager connectionManager = null;
	private static BasicDataSource dataSource = null;

	@Override
	public Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	HerokuConnectionManager() throws URISyntaxException {
		URI uri = new URI(System.getenv("DATABASE_URL"));
		String username = uri.getUserInfo().trim().split(":")[0];
		String password = uri.getUserInfo().trim().split(":")[1];
		;
		String host = "jdbc:postgresql://" + uri.getHost().trim() + uri.getPath().trim();

		dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.postgresql.Driver");
		dataSource.setUrl(host);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		dataSource.setInitialSize(10);
	}

	public static synchronized ConnectionManager getInstance() throws URISyntaxException {
		
		if(connectionManager == null)
			connectionManager = new HerokuConnectionManager();
		
		return connectionManager;
	}

}
