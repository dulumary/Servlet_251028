package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String introduce = request.getParameter("introduce");

        out.println("" +
                "<html>\n" +
                "   <head><title>자기소개</title></head>\n" +
                "   <body>");

        out.println("" +
                "       <h2>" + name + "님의 지원이 완료되었습니다</h2>\n" +
                "       <hr>\n" +
                "       <div>지원내용<br>" + introduce + "</div>");


        out.println("" +
                "   </body>\n" +
                "</html>");



    }
}
