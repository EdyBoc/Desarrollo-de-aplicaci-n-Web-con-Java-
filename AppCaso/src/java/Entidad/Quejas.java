package Entidad;

public class Quejas {

    int Id;
    String Descripcion;
    String Medios;
    String Estatus;
    String Nombre;
    String NombreOficina;
    String NombreEmpleado;
    String Correo;
    String Siglas;
    int Telefono;

    public Quejas() {

    }

    public Quejas(int Id, String Descripcion, String Medios, String Estatus, String Nombre, String NombreOficina, String NombreEmpleado, String Correo, String Siglas, int Telefono) {
        this.Id = Id;
        this.Descripcion = Descripcion;
        this.Medios = Medios;
        this.Estatus = Estatus;
        this.Nombre = Nombre;
        this.NombreOficina = NombreOficina;
        this.NombreEmpleado = NombreEmpleado;
        this.Correo = Correo;
        this.Siglas = Siglas;
        this.Telefono = Telefono;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getMedios() {
        return Medios;
    }

    public void setMedios(String Medios) {
        this.Medios = Medios;
    }

    public String getEstatus() {
        return Estatus;
    }

    public void setEstatus(String Estatus) {
        this.Estatus = Estatus;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNombreOficina() {
        return NombreOficina;
    }

    public void setNombreOficina(String NombreOficina) {
        this.NombreOficina = NombreOficina;
    }

    public String getNombreEmpleado() {
        return NombreEmpleado;
    }

    public void setNombreEmpleado(String NombreEmpleado) {
        this.NombreEmpleado = NombreEmpleado;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getSiglas() {
        return Siglas;
    }

    public void setSiglas(String Siglas) {
        this.Siglas = Siglas;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }
}
