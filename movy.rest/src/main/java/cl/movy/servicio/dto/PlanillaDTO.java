package cl.movy.servicio.dto;

import java.io.Serializable;
import java.util.Date;

public class PlanillaDTO implements Serializable {


	private static final long serialVersionUID = 7905821016878421552L;
	private int idPlanilla;
	private Date fecha;
	private String patente;
	private int rutUsuario;
	private int idInstitucion;
	private int valor;
	private boolean pagada;
	private boolean activa;
	private int numeroMovil;
	private String comentario;
	private boolean editable;
	private int rutUIsuarioGraba;
	private int rutUsuarioElimina;
	private int rutUsuarioCobra;
	private Date fechaPago;
	private Date fechaElimina;
	private Date fechaMigracion;
	public int getIdPlanilla() {
		return idPlanilla;
	}
	public void setIdPlanilla(int idPlanilla) {
		this.idPlanilla = idPlanilla;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getPatente() {
		return patente;
	}
	public void setPatente(String patente) {
		this.patente = patente;
	}
	public int getRutUsuario() {
		return rutUsuario;
	}
	public void setRutUsuario(int rutUsuario) {
		this.rutUsuario = rutUsuario;
	}
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
	public boolean isPagada() {
		return pagada;
	}
	public void setPagada(boolean pagada) {
		this.pagada = pagada;
	}
	public boolean isActiva() {
		return activa;
	}
	public void setActiva(boolean activa) {
		this.activa = activa;
	}
	public int getNumeroMovil() {
		return numeroMovil;
	}
	public void setNumeroMovil(int numeroMovil) {
		this.numeroMovil = numeroMovil;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public boolean isEditable() {
		return editable;
	}
	public void setEditable(boolean editable) {
		this.editable = editable;
	}
	public int getRutUIsuarioGraba() {
		return rutUIsuarioGraba;
	}
	public void setRutUIsuarioGraba(int rutUIsuarioGraba) {
		this.rutUIsuarioGraba = rutUIsuarioGraba;
	}
	public int getRutUsuarioElimina() {
		return rutUsuarioElimina;
	}
	public void setRutUsuarioElimina(int rutUsuarioElimina) {
		this.rutUsuarioElimina = rutUsuarioElimina;
	}
	public int getRutUsuarioCobra() {
		return rutUsuarioCobra;
	}
	public void setRutUsuarioCobra(int rutUsuarioCobra) {
		this.rutUsuarioCobra = rutUsuarioCobra;
	}
	public Date getFechaPago() {
		return fechaPago;
	}
	public void setFechaPago(Date fechaPago) {
		this.fechaPago = fechaPago;
	}
	public Date getFechaElimina() {
		return fechaElimina;
	}
	public void setFechaElimina(Date fechaElimina) {
		this.fechaElimina = fechaElimina;
	}
	public Date getFechaMigracion() {
		return fechaMigracion;
	}
	public void setFechaMigracion(Date fechaMigracion) {
		this.fechaMigracion = fechaMigracion;
	}
	@Override
	public String toString() {
		return "PlanillaDTO {idPlanilla=" + idPlanilla + ", fecha=" + fecha + ", patente=" + patente + ", rutUsuario="
				+ rutUsuario + ", idInstitucion=" + idInstitucion + ", valor=" + valor + ", pagada=" + pagada
				+ ", activa=" + activa + ", numeroMovil=" + numeroMovil + ", comentario=" + comentario + ", editable="
				+ editable + ", rutUIsuarioGraba=" + rutUIsuarioGraba + ", rutUsuarioElimina=" + rutUsuarioElimina
				+ ", rutUsuarioCobra=" + rutUsuarioCobra + ", fechaPago=" + fechaPago + ", fechaElimina=" + fechaElimina
				+ ", fechaMigracion=" + fechaMigracion + "}";
	}
	
	
	
	
	
}
