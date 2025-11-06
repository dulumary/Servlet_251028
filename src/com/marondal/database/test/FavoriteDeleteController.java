package com.marondal.database.test;

import com.marondal.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String id = request.getParameter("id");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        mysqlService.update("DELETE FROM `favorite` WHERE `id` = " + id +";");

        mysqlService.disconnect();
        response.sendRedirect("/db/favorite/list.jsp");


    }
}
