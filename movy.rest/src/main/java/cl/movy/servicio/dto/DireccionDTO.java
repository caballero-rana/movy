package cl.movy.servicio.dto;

import java.io.Serializable;

public class DireccionDTO implements Serializable {

	private static final long serialVersionUID = 6328494906299721534L;

	private int rutUsuario;
	private String calle;
	private String numero;
	private String dpto;
	private int idComuna;
	private String celular;
	private String fijo;
	private String referencia;
	
	
	public int getRutUsuario() {
		return rutUsuario;
	}
	public void setRutUsuario(int rutUsuario) {
		this.rutUsuario = rutUsuario;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getDpto() {
		return dpto;
	}
	public void setDpto(String dpto) {
		this.dpto = dpto;
	}
	public int getIdComuna() {
		return idComuna;
	}
	public void setIdComuna(int idComuna) {
		this.idComuna = idComuna;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getFijo() {
		return fijo;
	}
	public void setFijo(String fijo) {
		this.fijo = fijo;
	}
	public String getReferencia() {
		return referencia;
	}
	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}
	@Override
	public String toString() {
		return "DireccionDTO {rutUsuario=" + rutUsuario + ", calle=" + calle + ", numero=" + numero + ", dpto=" + dpto
				+ ", idComuna=" + idComuna + ", celular=" + celular + ", fijo=" + fijo + ", referencia=" + referencia + "}";
	}
}
