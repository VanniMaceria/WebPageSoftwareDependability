import com.sun.net.httpserver.HttpServer;
import controller.PokemonController;
import java.io.IOException;
import java.net.InetSocketAddress;

public class App {
    public static void main(String[] args) {
        HttpServer server = null;
        try {
            server = HttpServer.create(new InetSocketAddress(8080), 0);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        server.createContext("/pokemon", new PokemonController());    //assegno al path "/pokemon" il controller "controller.PokemonController"
        server.setExecutor(null); // Usa l'esecutore predefinito
        server.start();
        System.out.println("Server in esecuzione su http://localhost:8080/pokemon");
    }
}
