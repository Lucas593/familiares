package familiares.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

public class Familiares {
	@NotBlank(message = "É necessario informar o nome!")
	private String nome;
	@NotNull(message = "Deve ser selecionado um genero!")
	private String genero;
	@NotBlank(message = "É necessario informar a idade!")
	@Min(value = 1, message = "Idade não pode ser menor que 1 ano!")
	@Max(value = 100, message = "Idade não pode ser maior que 100 anos!")
	private Integer idade;
	@NotNull(message = "Deve ser selecionado pelomenos um campo!")
	private String[] servicos;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Integer getIdade() {
		return idade;
	}

	public void setIdade(Integer idade) {
		this.idade = idade;
	}

	public String[] getServicos() {
		System.out.println(servicos);
		return servicos;
	}

	public void setServicos(String[] servicos) {
		System.out.println(servicos.toString());
		this.servicos = servicos;
	}

}
