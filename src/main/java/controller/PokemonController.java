package controller;

import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpExchange;
import model.DbHandler;
import model.bean.PokemonBean;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;

public class PokemonController implements HttpHandler {
    @Override
    public void handle(HttpExchange exchange) throws IOException {
        // Risposta in HTML
        StringBuilder response = new StringBuilder();
        response.append("<html><head><meta charset=\"UTF-8\"></head><body>");
        response.append("<h1>Pokemon randomico</h1>");
        response.append("<table border='1'><tr><th>ID</th><th>Nome</th><th>Tipo1</th><th>Tipo2</th><th>Descrizione</th></tr>");

        //se il metodo della richiesta http è una get
        if ("GET".equals(exchange.getRequestMethod())) {
            try {
                //recupera i dati dal database
                List<PokemonBean> pkmns = DbHandler.getRandomPkmn();
                for (PokemonBean pkmn : pkmns) {
                    System.out.println("Pokemon randomico: " + pkmn.toString());
                    response.append("<tr>");
                    response.append("<td>").append(pkmn.getId()).append("</td>");
                    response.append("<td>").append(pkmn.getNome()).append("</td>");
                    response.append("<td>").append(pkmn.getTipo1()).append("</td>");
                    if(pkmn.getTipo2() == null){
                        response.append("<td>").append("").append("</td>");
                    } else{
                        response.append("<td>").append(pkmn.getTipo2()).append("</td>");
                    }
                    response.append("<td>").append(pkmn.getDescrizione()).append("</td>");
                    response.append("</tr>");
                }
            } catch (SQLException e) {
                response.append("<tr><td colspan='3'>Errore nel recupero dei dati.</td></tr>");
            }
        } else {
            response.append("<tr><td colspan='3'>Metodo non supportato.</td></tr>");
        }

        response.append("</table>");
        response.append("</body></html>");

        // Imposta le intestazioni della risposta
        exchange.getResponseHeaders().add("Content-Type", "text/html");
        byte[] responseBytes = response.toString().getBytes(StandardCharsets.UTF_8);

        // Invia la risposta
        OutputStream os = exchange.getResponseBody();
        try {
            exchange.sendResponseHeaders(200, responseBytes.length);
            os.write(responseBytes);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            os.close();
        }
    }
}

