package br.com.fiap.conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	public static Connection getConnection() throws Exception {
		return DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL", "<USERNAME>",
				"<PASSWORD>");
	}
}
