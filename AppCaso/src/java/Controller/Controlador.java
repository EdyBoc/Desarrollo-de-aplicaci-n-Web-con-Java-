package Controller;

import Config.Conexion;
import Entidad.Quejas;
import Entidad.Usuario;
import java.awt.Menu;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List datos;

    //Pagina de Bienvenida
    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }

    //Mostar a Login
    @RequestMapping("Error.htm")
    public ModelAndView Listar22() {
        mav.addObject("lista", datos);
        mav.setViewName("Error");
        return mav;
    }

    //Mostar a Login
    @RequestMapping("Login.htm")
    public ModelAndView Listar2() {
        mav.addObject("lista", datos);
        mav.setViewName("Login");
        return mav;

    }

//Pagina de Bienvenida
    @RequestMapping(value = "Login.htm", method = RequestMethod.POST)
    public ModelAndView Login(Usuario u) {

        List datos = null;
        String consulta = "SELECT COUNT(*) FROM Usuario WHERE Nombre=? AND Clave=? and User = 'Admin'";
        int rw = this.jdbcTemplate.queryForObject(consulta, Integer.class, u.getUser(), u.getClave());
        if (rw > 0) {
            return new ModelAndView("redirect:/Menu3.htm");
        } else {
            consulta = "SELECT COUNT(*) FROM Usuario WHERE Nombre=? AND Clave=? and User = 'Receptor'";
            rw = this.jdbcTemplate.queryForObject(consulta, Integer.class, u.getUser(), u.getClave());
            if (rw > 0) {
                return new ModelAndView("redirect:/Menu4.htm");
            } else {
                return new ModelAndView("redirect:/Error.htm");
            }

        }
    }

    //Menu 
    @RequestMapping("Menu.htm")
    public ModelAndView Listar3() {
        String sql = "select * from quejas WHERE Estatus != 'Eliminado'";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Menu");
        return mav;
    }

    //Ventana para Editar
    @RequestMapping(value = "Editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from quejas where Id=" + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Editar");
        return mav;

    }

    //Agregar lo Editado
    @RequestMapping(value = "Editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Quejas p) {
        String sql = "UPDATE quejas SET Descripcion=?, Estatus=?, Nombre=?, NombreOficina=?, NombreEmpleado=?, Correo=?, Telefono=?, FechaModificacion= NOW() WHERE Id=" + id;
        this.jdbcTemplate.update(sql, p.getDescripcion(), p.getEstatus(), p.getNombre(), p.getNombreOficina(), p.getNombreEmpleado(), p.getCorreo(), p.getTelefono());
        return new ModelAndView("redirect:/Menu.htm");
    }

    //Agregar Nueva queja
    @RequestMapping(value = "Agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Quejas());
        mav.setViewName("Agregar");
        String sql = "select Id, Estatus From estatus";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("estatus_Lista", datos);
        mav.setViewName("Agregar");
        return mav;
    }

    @RequestMapping(value = "Agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Quejas p, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://Agregar.htm");

        } else {

            String sql = "INSERT INTO `quejas` (`Descripcion`, `Estatus`, `Nombre`, `NombreOficina`, `NombreEmpleado`, `Correo`, `Telefono`, `FechaCreacion`) values(?,?,?,?,?,?,?,NOW())";
            this.jdbcTemplate.update(sql, p.getDescripcion(), p.getEstatus(), p.getNombre(), p.getNombreOficina(), p.getNombreEmpleado(), p.getCorreo(), p.getTelefono());
            return new ModelAndView("redirect:/Receptor.htm");

        }
    }

    //Eliminar
    @RequestMapping(value = "delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "update quejas set Estatus ='Eliminado' WHERE id=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/Menu.htm");

    }

    //Receptor
    @RequestMapping("Receptor.htm")
    public ModelAndView Listar5() {
        mav.addObject("lista", datos);
        mav.setViewName("Receptor");
        return mav;

    }
    List co;

    @RequestMapping(value = "Receptor.htm", method = RequestMethod.POST)
    public ModelAndView Redireccionar(Quejas q) {
        String consulta = "SELECT COUNT(*) FROM quejas WHERE concat_ws('','QMS-',ID,'-',year(FechaCreacion) ) = '" + q.getDescripcion() + "'";
        int rw = this.jdbcTemplate.queryForObject(consulta, Integer.class);

        if (rw >= 1) {
            String sql = "SELECT *, concat_ws('','QMS-',ID,'-',year(FechaCreacion) )AS "
                    + "'CORRELATIVO' FROM `quejas` WHERE concat_ws('','QMS-',ID,'-',year(FechaCreacion) ) =  '" + q.getDescripcion() + "'";
            this.co = this.jdbcTemplate.queryForList(sql);
            return new ModelAndView("redirect:/Buscar.htm");
        }
        return new ModelAndView("redirect:/Receptor.htm");

    }

    //ReceptorCapcha
    @RequestMapping("ReceptorCapcha.htm")
    public ModelAndView Listar6() {
        mav.addObject("lista", datos);
        mav.setViewName("ReceptorCapcha");
        return mav;

    }

    //Buscar
    @RequestMapping("Buscar.htm")
    public ModelAndView Listar7() {
        mav.addObject("lista", this.co);
        mav.setViewName("Buscar");
        return mav;
    }

//Caso de uso 4
    //Menu 
    @RequestMapping("Menu4.htm")
    public ModelAndView Listar13() {
        String sql = "select * from quejas WHERE Estatus != 'Eliminado'";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Menu4");
        return mav;
    }

    //Ventana para Editar
    @RequestMapping(value = "Editar4.htm", method = RequestMethod.GET)
    public ModelAndView Editar4(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from quejas where Id=" + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Editar4");
        return mav;

    }

    //Agregar lo Editado
    @RequestMapping(value = "Editar4.htm", method = RequestMethod.POST)
    public ModelAndView Editar4(Quejas p) {
        String sql = "UPDATE quejas SET Descripcion=?, Estatus=?, Nombre=?, NombreOficina=?, NombreEmpleado=?, Correo=?, Telefono=?, FechaModificacion= NOW() WHERE Id=" + id;
        this.jdbcTemplate.update(sql, p.getDescripcion(), p.getEstatus(), p.getNombre(), p.getNombreOficina(), p.getNombreEmpleado(), p.getCorreo(), p.getTelefono());
        return new ModelAndView("redirect:/Menu4.htm");
    }

    //Agregar Nueva queja
    @RequestMapping(value = "Agregar4.htm", method = RequestMethod.GET)
    public ModelAndView Agregar4() {
        mav.addObject(new Quejas());
        mav.setViewName("Agregar4");
        String sql = "select Id, Estatus From estatus";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("estatus_Lista", datos);

        String sqls = "select * from medios";
        List datoss = this.jdbcTemplate.queryForList(sqls);
        mav.addObject("medios_lista", datoss);

        mav.setViewName("Agregar4");
        return mav;
    }

    @RequestMapping(value = "Agregar4.htm", method = RequestMethod.POST)
    public ModelAndView Agregar4(Quejas p, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://Agregar4.htm");

        } else {

            String sql = "INSERT INTO `quejas` (`Descripcion`,`Medios`, `Estatus`, `Nombre`, `NombreOficina`, `NombreEmpleado`, `Correo`, `Telefono`, `FechaCreacion`) values(?,?,?,?,?,?,?,?,NOW())";
            this.jdbcTemplate.update(sql, p.getDescripcion(), p.getMedios(), p.getEstatus(), p.getNombre(), p.getNombreOficina(), p.getNombreEmpleado(), p.getCorreo(), p.getTelefono());
            return new ModelAndView("redirect:/Menu4.htm");
        }
    }

    //Eliminar
    @RequestMapping(value = "delete4.htm")
    public ModelAndView Delete4(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "update quejas set Estatus ='Eliminado' WHERE id=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/Menu4.htm");

    }

    //Receptor
    @RequestMapping("Receptor4.htm")
    public ModelAndView Listar15() {
        mav.addObject("lista", datos);
        mav.setViewName("Receptor4");
        return mav;

    }
    List cost;

    @RequestMapping(value = "Receptor4.htm", method = RequestMethod.POST)
    public ModelAndView Redireccionar1(Quejas q) {
        String consulta = "SELECT COUNT(*) FROM quejas WHERE concat_ws('','QMS-',ID,'-',year(FechaCreacion) ) = '" + q.getDescripcion() + "'";
        int rw = this.jdbcTemplate.queryForObject(consulta, Integer.class);

        if (rw >= 1) {
            String sql = "SELECT *, concat_ws('','QMS-',ID,'-',year(FechaCreacion) )AS "
                    + "'CORRELATIVO' FROM `quejas` WHERE concat_ws('','QMS-',ID,'-',year(FechaCreacion) ) =  '" + q.getDescripcion() + "'";
            this.co = this.jdbcTemplate.queryForList(sql);
            return new ModelAndView("redirect:/Buscar4.htm");
        }
        return new ModelAndView("redirect:/Receptor4.htm");

    }

    //Buscar
    @RequestMapping("Buscar4.htm")
    public ModelAndView Listar17() {
        mav.addObject("lista", this.co);
        mav.setViewName("Buscar4");
        return mav;
    }

// Caso de uso 3 
    //Menu 
    @RequestMapping("Menu3.htm")
    public ModelAndView Listar113() {
        String sql = "select * from tipo_queja WHERE Estatus != 'Eliminado'";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Menu3");
        return mav;
    }

    //Ventana para Editar
    @RequestMapping(value = "Editar3.htm", method = RequestMethod.GET)
    public ModelAndView Editar3(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from quejas where Id=" + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("Editar3");
        return mav;

    }

    //Agregar lo Editado
    @RequestMapping(value = "Editar3.htm", method = RequestMethod.POST)
    public ModelAndView Editar3(Quejas q) {
        String sql = "UPDATE tipo_queja SET Descripcion=?, Fecha_Modificacion=curdate() WHERE Id=" + id;
        this.jdbcTemplate.update(sql, q.getDescripcion());
        return new ModelAndView("redirect:/Menu3.htm");
    }

    //Agregar Nueva queja
    @RequestMapping(value = "Agregar3.htm", method = RequestMethod.GET)
    public ModelAndView Agregar3() {
        mav.addObject(new Quejas());
        mav.setViewName("Agregar3");
        return mav;
    }

    @RequestMapping(value = "Agregar3.htm", method = RequestMethod.POST)
    public ModelAndView Agregar3(Quejas p, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://Agregar3.htm");

        } else {
            String consulta1 = "SELECT COUNT(*) FROM TIPO_QUEJA WHERE Siglas=? ";
            int rw = this.jdbcTemplate.queryForObject(consulta1, Integer.class, p.getSiglas());
            if (rw > 0) {
                return new ModelAndView("redirect:/Agregar3.htm");
            } else {
                String sql = "INSERT INTO tipo_queja (`Descripcion`, `Siglas`,`Fecha_Creacion` ) values(?,?,CURDATE())";
                this.jdbcTemplate.update(sql, p.getDescripcion(), p.getSiglas());
                return new ModelAndView("redirect:/Menu3.htm");

            }
        }
    }

    //Eliminar
    @RequestMapping(value = "delete3.htm")
    public ModelAndView Delete3(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "update tipo_queja set Estatus ='Eliminado' WHERE id=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/Menu3.htm");

    }
}
