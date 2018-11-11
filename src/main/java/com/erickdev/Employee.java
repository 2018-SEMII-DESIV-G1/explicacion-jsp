package com.erickdev;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Employee {
    private int id;
    private String name;
    private String department;
    private long salary;
 
    private static Logger log = LoggerFactory.getLogger(Employee.class);

    // constructors
    public Employee(int _id, String _name, String _department, long _salary) {
        log.debug("Init Employee...");
        this.id = _id;
        this.name = _name;
        this.department = _department;
        this.salary = _salary;
    }
    // standard getters and setters.
}