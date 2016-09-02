/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.controllers.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mack.controllers.AbstractController;
import mack.dao.usuario.UsuarioDAO;
import mack.dao.usuario.UsuarioDAOFactory;
import mack.entities.Usuario;

/**
 *
 * @author gsantos
 */
public class VisualizaController extends AbstractController{

    @Override
    public void execute() {
            try {
            Integer acao = Integer.parseInt(this.getRequest().getParameter("edit"));
            String pagina = (acao == 1) ? "/editaUsuario.jsp" : "/visualizaUsuario.jsp";
            UsuarioDAO dao = UsuarioDAOFactory.getUsuarioDAO();
            Integer id = Integer.parseInt(this.getRequest().getParameter("id"));
            Usuario usuario = dao.buscaUsuarioPorId(id);
            this.setReturnPage(pagina);
            this.getRequest().setAttribute("usuario", usuario);
        } catch (Exception ex) {
            Logger.getLogger(VisualizaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
