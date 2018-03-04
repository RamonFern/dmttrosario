package br.com.dmttrosario.ramon.models;

import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Liberacao {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String descricao;
	private BigDecimal valor_diarias;
	private int numero_diarias;
	
	@Enumerated(EnumType.STRING)
	private TipoLiberacao tipo;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar data_liberacao;

	@ManyToOne
	private Veiculo veiculo;
	


	public TipoLiberacao getTipo() {
		return tipo;
	}

	public void setTipo(TipoLiberacao tipo) {
		this.tipo = tipo;
	}

	public Veiculo getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(Veiculo veiculo) {
		this.veiculo = veiculo;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public BigDecimal getValor_diarias() {
		return valor_diarias;
	}

	public void setValor_diarias(BigDecimal valor_diarias) {
		this.valor_diarias = valor_diarias;
	}

	public int getNumero_diarias() {
		return numero_diarias;
	}

	public void setNumero_diarias(int numero_diarias) {
		this.numero_diarias = numero_diarias;
	}

	public Calendar getData_liberacao() {
		return data_liberacao;
	}

	public void setData_liberacao(Calendar data_liberacao) {
		this.data_liberacao = data_liberacao;
	}

	@Override
	public String toString() {
		return "Liberacao [descricao=" + descricao + ", valor_diarias="
				+ valor_diarias + ", numero_diarias=" + numero_diarias
				+ ", tipo=" + tipo + ", data_liberacao=" + data_liberacao
				+ ", veiculo=" + veiculo + "]";
	}

	
	

}
