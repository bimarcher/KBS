package com.yimi.archer.kbs

class Department {
    String name;
    String code;
    String memo;

    static hasMany = [emp:Employee];

    static constraints = {
        name(size: 3..20, blank: false, unique: false);
        code(maxSize: 7, blank: false, unique: true);
        memo(maxSize: 300, widget: 'textarea');
    }
}
