package com.example.demo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.ResourceBundle;

@WebServlet(value = "/locale")
public class LocaleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String lang = req.getParameter("lang");
            if (lang == null) {
                lang = "vi_Vn";
            }
            String[] lg = lang.split("_");
            String language = lg[0], country = lg[1];
            Locale locale = new Locale(language,country);
            NumberFormat number =  NumberFormat.getNumberInstance(locale);
            req.setAttribute("fnumber", number.format(123456789));

            NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
            req.setAttribute("fCurrency", currency.format(1234567890));

            ResourceBundle resourceBundle = ResourceBundle.getBundle("ApplicationResources", locale);
            String welcome = resourceBundle.getString("welcome");
            req.setAttribute("welcome", welcome);

            req.getRequestDispatcher("/localeDemo.jsp").forward(req,resp);

        } catch (Exception ex) {
            log(ex.getMessage());
        }
    }
}
