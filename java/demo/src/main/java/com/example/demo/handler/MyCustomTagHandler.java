package com.example.demo.handler;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;

public class MyCustomTagHandler implements Tag {

    private PageContext pageContext;
    private Tag parent;
    private String name;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void setPageContext(PageContext pageContext) {
        this.pageContext = pageContext;
    }

    @Override
    public void setParent(Tag tag) {
        this.parent = tag;
    }

    @Override
    public Tag getParent() {
        return null;
    }

    @Override
    public int doStartTag() throws JspException {
        JspWriter writer = pageContext.getOut();
        try {
            writer.write("<h1>Hello "+name +". Welcome to custom taglib</h1>");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
//        return SKIP_PAGE;
    }

    @Override
    public void release() {

    }
}
