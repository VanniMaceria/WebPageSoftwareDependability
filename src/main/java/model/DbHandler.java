package model;

import model.bean.PokemonBean;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class DbHandler {
    private static final String URL = "jdbc:mysql://host.docker.internal:3306/rowandb"; //by Losor2002
    private static final String USER = "root";
    private static final String PASSWORD = "Juventus01*";

    //metodo per ottenere una connessione al database
    private static Connection getConnection() throws SQLException {
        try {
            // Abilita il logging dettagliato del DriverManager
            DriverManager.setLogWriter(new PrintWriter(System.out));

            // Carica il driver manualmente
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver MySQL caricato correttamente.");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver MySQL non trovato.");
            e.printStackTrace();
        }

        // Prova a ottenere la connessione
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }



    //metodo per ottenere i dati dal database
    public static List<PokemonBean> getRandomPkmn() throws SQLException{
        String query = "SELECT id, nome, tipo1, tipo2, descrizione FROM pokemon ORDER BY RAND() LIMIT 3";
        QueryRunner runner = new QueryRunner();

        try (Connection conn = getConnection()) { //usa il metodo getConnection() per ottenere la connessione
            return runner.query(conn, query, new BeanListHandler<>(PokemonBean.class));
        } catch (SQLException e) {
            System.out.println("Errore durante l'esecuzione della query.");
            e.printStackTrace();
            return null;
        }
    }
}
