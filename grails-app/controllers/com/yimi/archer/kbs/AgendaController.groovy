package com.yimi.archer.kbs

import org.springframework.dao.DataIntegrityViolationException

class AgendaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [agendaInstanceList: Agenda.list(params), agendaInstanceTotal: Agenda.count()]
    }

    def create() {
        [agendaInstance: new Agenda(params)]
    }

    def save() {
        def agendaInstance = new Agenda(params)
        if (!agendaInstance.save(flush: true)) {
            render(view: "create", model: [agendaInstance: agendaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'agenda.label', default: 'Agenda'), agendaInstance.id])
        redirect(action: "show", id: agendaInstance.id)
    }

    def show(Long id) {
        def agendaInstance = Agenda.get(id)
        if (!agendaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "list")
            return
        }

        [agendaInstance: agendaInstance]
    }

    def edit(Long id) {
        def agendaInstance = Agenda.get(id)
        if (!agendaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "list")
            return
        }

        [agendaInstance: agendaInstance]
    }

    def update(Long id, Long version) {
        def agendaInstance = Agenda.get(id)
        if (!agendaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (agendaInstance.version > version) {
                agendaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'agenda.label', default: 'Agenda')] as Object[],
                          "Another user has updated this Agenda while you were editing")
                render(view: "edit", model: [agendaInstance: agendaInstance])
                return
            }
        }

        agendaInstance.properties = params

        if (!agendaInstance.save(flush: true)) {
            render(view: "edit", model: [agendaInstance: agendaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'agenda.label', default: 'Agenda'), agendaInstance.id])
        redirect(action: "show", id: agendaInstance.id)
    }

    def delete(Long id) {
        def agendaInstance = Agenda.get(id)
        if (!agendaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "list")
            return
        }

        try {
            agendaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'agenda.label', default: 'Agenda'), id])
            redirect(action: "show", id: id)
        }
    }
}
