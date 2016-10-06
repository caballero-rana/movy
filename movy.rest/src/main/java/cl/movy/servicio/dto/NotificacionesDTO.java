package cl.movy.servicio.dto;

import java.io.Serializable;
import java.util.Date;

public class NotificacionesDTO implements Serializable {

	private static final long serialVersionUID = 2184507580480516862L;
	
	private int idNotificacion;
	private String descripcionNotificacion;
	private int rutUsuarioDestino;
	private int idInstitucion;
	private int rutUsuarioIngresa;
	private Date fecha;
	public int getIdNotificacion() {
		return idNotificacion;
	}
	public void setIdNotificacion(int idNotificacion) {
		this.idNotificacion = idNotificacion;
	}
	public String getDescripcionNotificacion() {
		return descripcionNotificacion;
	}
	public void setDescripcionNotificacion(String descripcionNotificacion) {
		this.descripcionNotificacion = descripcionNotificacion;
	}
	public int getRutUsuarioDestino() {
		return rutUsuarioDestino;
	}
	public void setRutUsuarioDestino(int rutUsuarioDestino) {
		this.rutUsuarioDestino = rutUsuarioDestino;
	}
	public int getIdInstitucion() {
		return idInstitucion;
	}
	public void setIdInstitucion(int idInstitucion) {
		this.idInstitucion = idInstitucion;
	}
	public int getRutUsuarioIngresa() {
		return rutUsuarioIngresa;
	}
	public void setRutUsuarioIngresa(int rutUsuarioIngresa) {
		this.rutUsuarioIngresa = rutUsuarioIngresa;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	@Override
	public String toString() {
		return "NotificacionesDTO {idNotificacion=" + idNotificacion + ", descripcionNotificacion="
				+ descripcionNotificacion + ", rutUsuarioDestino=" + rutUsuarioDestino + ", idInstitucion="
				+ idInstitucion + ", rutUsuarioIngresa=" + rutUsuarioIngresa + ", fecha=" + fecha + "}";
	}

}
