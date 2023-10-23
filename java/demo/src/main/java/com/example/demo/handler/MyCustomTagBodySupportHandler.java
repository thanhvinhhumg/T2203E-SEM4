package com.example.demo.handler;

import com.example.demo.entity.CustomerEntity;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;
import java.util.List;

public class MyCustomTagBodySupportHandler extends BodyTagSupport {
    private List<CustomerEntity> customers;
    private int count;
    int returnValue;
    public List<CustomerEntity> getCustomers() {
        return customers;
    }

    public void setCustomers(List<CustomerEntity> customers) {
        this.customers = customers;
    }

    @Override
    public int doStartTag() throws JspException {
        count=0;
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        JspWriter writer = pageContext.getOut();
        if(count == customers.size()){
            returnValue = SKIP_BODY;
        } else {
            try {
                writer.println("<table class=\"table table-bordered\">");
                writer.println("<tr>");
                writer.println("<th>STT</th>");
                writer.println("<th>Name</th>");
                writer.println("<th>Age</th>");
                writer.println("</tr>");
                for (CustomerEntity a : customers){
                    count++;
                    writer.println("<tr>");
                    writer.println("<td>"+count+"</td>");
                    writer.println("<td>"+a.getName()+"</td>");
                    writer.println("<td>"+a.getAge()+"</td>");
                    writer.println("</tr>");
                }
                writer.println("</table>");
                returnValue = SKIP_BODY;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return returnValue;
    }
}
