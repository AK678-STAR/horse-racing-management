package com.horseracing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    private static final String USER = "sa";
    private static final String PASS = "123456";
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=HorseRacingDB;encrypt=true;trustServerCertificate=true;";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
