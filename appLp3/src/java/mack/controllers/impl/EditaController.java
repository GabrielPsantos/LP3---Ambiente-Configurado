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
public class EditaController extends AbstractController {

    public void execute() {
            String mensagem = "Erro ao editar Usuario !";
        try {
            UsuarioDAO dao = UsuarioDAOFactory.getUsuarioDAO();
            String nome = this.getRequest().getParameter("nome");
            String sobrenome = this.getRequest().getParameter("sobrenome");
            Integer id = Integer.parseInt(this.getRequest().getParameter("id"));
            dao.updateUsuario(id, nome, sobrenome);
            mensagem = "Usuario  atualizado com Sucesso";
            this.getRequest().setAttribute("mensagem", mensagem);
            
            //Adiciona os Usuarios na Request para enviar para a index.jsp
            List usuarios = new ArrayList<Usuario>();
            usuarios = (List) dao.buscaTodosUsuarios();
            this.setReturnPage("/index.jsp");
            this.getRequest().setAttribute("usuarios", usuarios);
        } catch (Exception ex) {
            Logger.getLogger(EditaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
