package app.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProjectServlet")
public class ProjectServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("name","Project name");
        request.setAttribute("project_description", "Project descriptionProject descriptionProject descriptionProject descriptionProject descriptionProject descriptionProject description");
        request.setAttribute("photo_main","imgs/mindmap.png");
        request.setAttribute("photo_add", "imgs/presen.png");
        request.setAttribute("SOW_description", "tz description");
        request.setAttribute("design_description", "design description");
        request.setAttribute("print_description", "print description");
        request.setAttribute("form_description", "form description");
        request.setAttribute("product_description", "product description");
        String[] files = new String[]{"imgs/mindmap.png","imgs/presen.png"};
        request.setAttribute("files", files);
        request.setAttribute("files_description", "slkdjfas als;kdjf;asl lsdjf aslkdfj lskdjf lslks adflajsk dflkjf laksjf akdslf sdfl jsdflajk dlkaj dflajs dfj l");
        getServletContext().getRequestDispatcher("/views/project/project.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
