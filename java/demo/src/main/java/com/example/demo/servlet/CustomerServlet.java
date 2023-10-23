package com.example.demo.servlet;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.dao.impl.CustomerDAOImpl;
import com.example.demo.entity.CustomerEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/customer-servlet")
public class CustomerServlet extends HttpServlet {
    private CustomerDAO customerDAO;
    public void init() {
        customerDAO = new CustomerDAOImpl();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerEntity cust = customerDAO.findById(9);
        req.setAttribute("customer", cust);
        req.setAttribute("image","fileUpload/avata.png");
        req.getRequestDispatcher("/customTag.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
