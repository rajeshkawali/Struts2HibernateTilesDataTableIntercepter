package com.dao;


public class StudentDAOFactory {
    public static StudentDAO create() {
           return (new StudentDAOImplements());
    }
}