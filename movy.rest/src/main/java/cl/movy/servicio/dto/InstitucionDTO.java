package cl.movy.servicio.dto;

import java.io.Serializable;

public class InstitucionDTO implements Serializable {

	private static final long serialVersionUID = -9093070095548497145L;

	private int idInstitucion;
	private String descripcionInstituciones;
	private String nombreCorto;
	private String urlIcono;
	
	public int getIdInstitucion() {
		return idInstitucion;
	}
	public void setIdInstitucion(int idInstitucion) {
		this.idInstitucion = idInstitucion;
	}
	public String getDescripcionInstituciones() {
		return descripcionInstituciones;
	}
	public void setDescripcionInstituciones(String descripcionInstituciones) {
		this.descripcionInstituciones = descripcionInstituciones;
	}
	public String getNombreCorto() {
		return nombreCorto;
	}
	public void setNombreCorto(String nombreCorto) {
		this.nombreCorto = nombreCorto;
	}
	public String getUrlIcono() {
		return urlIcono;
	}
	public void setUrlIcono(String urlIcono) {
		this.urlIcono = urlIcono;
	}
	@Override
	public String toString() {
		return "InstitucionDTO {idInstitucion=" + idInstitucion + ", descripcionInstituciones=" + descripcionInstituciones + ", nombreCorto=" + nombreCorto + ", urlIcono=" + urlIcono + "}";
	}
	
		
	
	
	
	
}
