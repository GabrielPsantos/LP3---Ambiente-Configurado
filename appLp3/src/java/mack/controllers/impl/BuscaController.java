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
public class BuscaController extends AbstractController {

    @Override
    public void execute() {
        try {
            String nome = this.getRequest().getParameter("nomeBusca");
            List usuarios = new ArrayList<Usuario>();
            UsuarioDAO dao = UsuarioDAOFactory.getUsuarioDAO();
            usuarios = (List) dao.buscaUsuarioPorNome(nome);
            String mensagem = "Parametro da Busca : "+nome;
            this.setReturnPage("/index.jsp");
            this.getRequest().setAttribute("usuarios", usuarios);
            this.getRequest().setAttribute("mensagem",mensagem);
        } catch (Exception ex) {
            Logger.getLogger(BuscaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
