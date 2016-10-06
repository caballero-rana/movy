package cl.movy.servicio.dto;

import java.io.Serializable;

public class ComunaDTO implements Serializable {

	private static final long serialVersionUID = -6964585338594361061L;

	
	private int idRegion;
	private int idComuna;
	private String descripcionComuna;
	
	public int getIdRegion() {
		return idRegion;
	}
	public void setIdRegion(int idRegion) {
		this.idRegion = idRegion;
	}
	public int getIdComuna() {
		return idComuna;
	}
	public void setIdComuna(int idComuna) {
		this.idComuna = idComuna;
	}
	public String getDescripcionComuna() {
		return descripcionComuna;
	}
	public void setDescripcionComuna(String descripcionComuna) {
		this.descripcionComuna = descripcionComuna;
	}
	@Override
	public String toString() {
		return "ComunaDTO {idRegion=" + idRegion + ", idComuna=" + idComuna + ", descripcionComuna=" + descripcionComuna + "}";
	}
	
	

}
