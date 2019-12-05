package com.ipartek.formacion.model.pojos;

public class Perro {
	
	private int id;
	private String nombre;
	private String foto;
	

	//Constructor completo
	public Perro(int id, String nombre, String foto) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.foto = foto;
	}
	
	//Constructor vacío
	public Perro() {
		super();
		this.id = 0;
		this.nombre="";
		this.foto = "https://i.ytimg.com/vi/1OEn1Lsq-QA/maxresdefault.jpg";
	}
	
	
	

	//Getters y Setters
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	//Método toString
	@Override
	public String toString() {
		return "Perro [id=" + id + ", nombre=" + nombre + ", foto=" + foto + "]";
	}
	
	

}
