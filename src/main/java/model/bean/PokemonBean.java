package model.bean;

public class PokemonBean {
    private int id;
    private String nome;
    private String tipo1;
    private String tipo2;
    private String descrizione;

    public PokemonBean(){
        //costruttore vuoto
    }

    public PokemonBean(int id, String nome, String tipo1, String tipo2, String descrizione){
        this.id = id;
        this.nome = nome;
        this.tipo1 = tipo1;
        this.tipo2 = tipo2;
        this.descrizione = descrizione;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo1() {
        return tipo1;
    }

    public void setTipo1(String tipo1) {
        this.tipo1 = tipo1;
    }

    public String getTipo2() {
        return tipo2;
    }

    public void setTipo2(String tipo2) {
        this.tipo2 = tipo2;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    @Override
    public String toString() {
        return "PokemonBean{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", tipo1='" + tipo1 + '\'' +
                ", tipo2='" + tipo2 + '\'' +
                ", descrizione='" + descrizione + '\'' +
                '}';
    }
}
