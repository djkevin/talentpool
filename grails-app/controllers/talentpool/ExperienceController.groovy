package talentpool

import org.springframework.dao.DataIntegrityViolationException

class ExperienceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [experienceInstanceList: Experience.list(params), experienceInstanceTotal: Experience.count()]
    }

    def create() {
        [experienceInstance: new Experience(params)]
    }

    def save() {
        def experienceInstance = new Experience(params)
        if (!experienceInstance.save(flush: true)) {
            render(view: "create", model: [experienceInstance: experienceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'experience.label', default: 'Experience'), experienceInstance.id])
        redirect(action: "show", id: experienceInstance.id)
    }

    def show(Long id) {
        def experienceInstance = Experience.get(id)
        if (!experienceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "list")
            return
        }

        [experienceInstance: experienceInstance]
    }

    def edit(Long id) {
        def experienceInstance = Experience.get(id)
        if (!experienceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "list")
            return
        }

        [experienceInstance: experienceInstance]
    }

    def update(Long id, Long version) {
        def experienceInstance = Experience.get(id)
        if (!experienceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (experienceInstance.version > version) {
                experienceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'experience.label', default: 'Experience')] as Object[],
                        "Another user has updated this Experience while you were editing")
                render(view: "edit", model: [experienceInstance: experienceInstance])
                return
            }
        }

        experienceInstance.properties = params

        if (!experienceInstance.save(flush: true)) {
            render(view: "edit", model: [experienceInstance: experienceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'experience.label', default: 'Experience'), experienceInstance.id])
        redirect(action: "show", id: experienceInstance.id)
    }

    def delete(Long id) {
        def experienceInstance = Experience.get(id)
        if (!experienceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "list")
            return
        }

        try {
            experienceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'experience.label', default: 'Experience'), id])
            redirect(action: "show", id: id)
        }
    }
}
