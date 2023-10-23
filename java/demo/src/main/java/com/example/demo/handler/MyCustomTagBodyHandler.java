package com.example.demo.handler;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTag;
import javax.servlet.jsp.tagext.Tag;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyCustomTagBodyHandler implements BodyTag {

    private PageContext pageContext;
    private Tag parent;
    private BodyContent bodyContent;

    @Override
    public void setBodyContent(BodyContent bodyContent) {
        this.bodyContent = bodyContent;
    }

    @Override
    public void doInitBody() throws JspException {

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
        return this.parent;
    }

    @Override
    public void release() {

    }

    @Override
    public int doStartTag() throws JspException {
        return EVAL_BODY_BUFFERED;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            JspWriter writer = pageContext.getOut();
            String content = bodyContent.getString();
            SimpleDateFormat frm = new SimpleDateFormat("dd-MMM-yyy");
            String finalString = content.concat(frm.format(new Date()));
            writer.write(finalString.toUpperCase());
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        return SKIP_BODY;
    }

}
