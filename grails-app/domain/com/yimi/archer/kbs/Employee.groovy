package com.yimi.archer.kbs

class Employee {
    String name;
    String code;
    String gender;
    String workMail;
    String mobilePhone;
    String status;
    String memo;
    Department dept;

    static belongsTo = [Department]

    static hasMany = [agendaBelongToMe:Agenda,agendaCreateByMe:Agenda];

    static mappedBy = [agendaBelongToMe:"belongToEmp",agendaCreateByMe:"createByEmp"];

    static constraints = {
        name(size: 3..20, blank: false, unique: false);
        code(maxSize: 7, blank: false, unique: true);
        gender(inList: ["F", "M"]);
        workMail(email: true, nullable: true, maxSize: 200);
        mobilePhone(nullable: true);
        status(inList: ["在岗", "出差", "请假"])
        memo(maxSize: 300, widget: 'textarea');
        dept(nullable: true);
    }

}
