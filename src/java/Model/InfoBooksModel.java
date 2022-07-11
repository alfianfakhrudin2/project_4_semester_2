/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author User
 */
public class InfoBooksModel {
    private String id;
    private String books_title;
    private String writer;
    private String page;
    private String issued_date;

    public void setissued_date(String expired) {
        this.issued_date = issued_date;
    }

    public String getissued_date() {
        return issued_date;
    }

    public void setid(String name) {
        this.id = id;
    }

    public String getid() {
        return id;
    }

    public void setpage(String price) {
        this.page = page;
    }

    public String getpage() {
        return page;
    }

    public void setwriter(String stock) {
        this.writer = writer;
    }

    public String getwriter() {
        return writer;
    }

    public void setbooks_title(String type) {
        this.books_title = books_title;
    }

    public String getbooks_title() {
        return books_title;
    } 
}
