package com.yimi.archer.kbs

class Agenda {
    String title;           // 主题
    String content;         // 内容
    String notes;           // 备注
    Date startTime;         // 开始时间
    Date endTime;           // 结束时间
    Date createTime;        // 创建时间
    Employee createByEmp;   // 创建者
    Employee belongToEmp;   // 所有者

    static belongsTo = [belongToEmp: Employee, createByEmp: Employee]

    static constraints = {
        title(maxSize: 40, blank: false, unique: false);
        content(maxSize: 300, widget: 'textarea');
        notes(maxSize: 300, widget: 'textarea');
        startTime(nullable: false);
        endTime(nullable: false);
        createTime(nullable: false);
    }

    def beforeInsert = {
        createTime = new Date();
        startTime = new Date();
        endTime = new Date();
    }
}
