package cl.movy.servicio.dto;

import java.io.Serializable;

public class RolDTO implements Serializable {

	private static final long serialVersionUID = -864464135908182250L;

	private int idRol;
	private String descripcionRol;
	private boolean seleccionable;
	
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public String getDescripcionRol() {
		return descripcionRol;
	}
	public void setDescripcionRol(String descripcionRol) {
		this.descripcionRol = descripcionRol;
	}
	public boolean isSeleccionable() {
		return seleccionable;
	}
	public void setSeleccionable(boolean seleccionable) {
		this.seleccionable = seleccionable;
	}
	
	
	public String toString() {
		return "RolDTO {idRol=" + idRol + ", descripcionRol=" + descripcionRol + ", seleccionable=" + seleccionable	+ "}";
	}
	
	
	
	
	
	
	
	
}
