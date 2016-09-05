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
 * @author Gabriel
 */
public class DeletaController extends AbstractController {

    @Override
    public void execute() {
        String mensagem = "Erro ao Deletar Usuario";
        try {
            UsuarioDAO dao = UsuarioDAOFactory.getUsuarioDAO();
            Integer id = Integer.parseInt(this.getRequest().getParameter("id"));
            dao.removeUsuario(id);
            mensagem = "Usuario  Deletado com Sucesso";
            this.getRequest().setAttribute("mensagem", mensagem);
            
            //Adiciona os Usuarios na Request para enviar para a index.jsp
            List usuarios = new ArrayList<Usuario>();
            usuarios = (List) dao.buscaTodosUsuarios();
            this.setReturnPage("/index.jsp");
            this.getRequest().setAttribute("usuarios", usuarios);
        } catch (Exception ex) {
            Logger.getLogger(DeletaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
