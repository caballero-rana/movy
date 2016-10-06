package cl.movy.servicio.dto;

import java.io.Serializable;
import java.util.Date;

public class UsuarioDTO implements Serializable {

	private static final long serialVersionUID = 6238919063349475666L;

	private String nombre;
	private String apellidoPaterno;
	private String apellidoMaterno;
	private Date fechaNAcimiento;
	private int rutUsuario;
	private char dv;
	private String nombreUsuario;
	private String password;
	private int rutUsuarioIngresa;
	private Date fechaVencimiento;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}
	public void setApellidoPaterno(String apellidoPaterno) {
		this.apellidoPaterno = apellidoPaterno;
	}
	public String getApellidoMaterno() {
		return apellidoMaterno;
	}
	public void setApellidoMaterno(String apellidoMaterno) {
		this.apellidoMaterno = apellidoMaterno;
	}
	public Date getFechaNAcimiento() {
		return fechaNAcimiento;
	}
	public void setFechaNAcimiento(Date fechaNAcimiento) {
		this.fechaNAcimiento = fechaNAcimiento;
	}
	public int getRutUsuario() {
		return rutUsuario;
	}
	public void setRutUsuario(int rutUsuario) {
		this.rutUsuario = rutUsuario;
	}
	public char getDv() {
		return dv;
	}
	public void setDv(char dv) {
		this.dv = dv;
	}
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRutUsuarioIngresa() {
		return rutUsuarioIngresa;
	}
	public void setRutUsuarioIngresa(int rutUsuarioIngresa) {
		this.rutUsuarioIngresa = rutUsuarioIngresa;
	}
	public Date getFechaVencimiento() {
		return fechaVencimiento;
	}
	public void setFechaVencimiento(Date fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}
	@Override
	public String toString() {
		return "UsuarioDTO {nombre=" + nombre + ", apellidoPaterno=" + apellidoPaterno + ", apellidoMaterno="
				+ apellidoMaterno + ", fechaNAcimiento=" + fechaNAcimiento + ", rutUsuario=" + rutUsuario + ", dv=" + dv
				+ ", nombreUsuario=" + nombreUsuario + ", password=" + password + ", rutUsuarioIngresa="
				+ rutUsuarioIngresa + ", fechaVencimiento=" + fechaVencimiento + "}";
	}
	
}
