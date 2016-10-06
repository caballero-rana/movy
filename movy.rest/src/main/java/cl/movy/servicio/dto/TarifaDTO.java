package cl.movy.servicio.dto;

import java.io.Serializable;

public class TarifaDTO implements Serializable{

	private static final long serialVersionUID = -4090030051239377397L;

	private int idInstitucion;
	private int valor;
	private char tipo;
	
	public int getIdInstitucion() {
		return idInstitucion;
	}
	public void setIdInstitucion(int idInstitucion) {
		this.idInstitucion = idInstitucion;
	}
	public int getValor() {
		return valor;
	}
	public void setValor(int valor) {
		this.valor = valor;
	}
	public char getTipo() {
		return tipo;
	}
	public void setTipo(char tipo) {
		this.tipo = tipo;
	}
	@Override
	public String toString() {
		return "TarifaDTO {idInstitucion=" + idInstitucion + ", valor=" + valor + ", tipo=" + tipo + "}";
	}

}
