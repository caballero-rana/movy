package cl.movy.servicio.dto;

import java.io.Serializable;

public class RegionDTO implements Serializable {

	private static final long serialVersionUID = 8975406572465941349L;

	private int idRegion;
	private String descripcionRegion;
	public int getIdRegion() {
		return idRegion;
	}
	public void setIdRegion(int idRegion) {
		this.idRegion = idRegion;
	}
	public String getDescripcionRegion() {
		return descripcionRegion;
	}
	public void setDescripcionRegion(String descripcionRegion) {
		this.descripcionRegion = descripcionRegion;
	}
	@Override
	public String toString() {
		return "RegionDTO {idRegion=" + idRegion + ", descripcionRegion=" + descripcionRegion + "}";
	}
	
}
