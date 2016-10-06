package cl.movy.servicio.dto;

import java.io.Serializable;

public class VehiculoDTO implements Serializable {

	private static final long serialVersionUID = -2258525427882089681L;

	private String marca;
	private String modelo;
	private String patente;
	private int anio;
	private int numeroMovil;
	private boolean activo;
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getPatente() {
		return patente;
	}
	public void setPatente(String patente) {
		this.patente = patente;
	}
	public int getAnio() {
		return anio;
	}
	public void setAnio(int anio) {
		this.anio = anio;
	}
	public int getNumeroMovil() {
		return numeroMovil;
	}
	public void setNumeroMovil(int numeroMovil) {
		this.numeroMovil = numeroMovil;
	}
	public boolean isActivo() {
		return activo;
	}
	public void setActivo(boolean activo) {
		this.activo = activo;
	}
	@Override
	public String toString() {
		return "VehiculoDTO {marca=" + marca + ", modelo=" + modelo + ", patente=" + patente + ", anio=" + anio
				+ ", numeroMovil=" + numeroMovil + ", activo=" + activo + "}";
	}

}
