package livro;

import java.util.Objects;

public class Livro {

    private int id;
    private String titulo;
    private String autor;
    private String editora;
    private String genero;
    private int ano;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    @Override
    public String toString() {
        return """
                ID: %d
                Livro: %s
                Autor: %s
                Ano: %d
                Editora: %s
                """.formatted(id, titulo, autor, ano, editora);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || getClass() != obj.getClass())
            return false;
        final Livro livro = (Livro) obj;
        return Double.compare(livro.id, id) == 0 && ano == livro.ano && Objects.equals(titulo, livro.titulo)
                && Objects.equals(autor, livro.autor);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, titulo, autor, editora, ano);
    }


    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
}

