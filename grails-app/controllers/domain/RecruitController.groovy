package domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RecruitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recruit.list(params), model:[recruitInstanceCount: Recruit.count()]
    }

    def show(Recruit recruitInstance) {
        respond recruitInstance
    }

    def create() {
        respond new Recruit(params)
    }

    @Transactional
    def save(Recruit recruitInstance) {
        if (recruitInstance == null) {
            notFound()
            return
        }

        if (recruitInstance.hasErrors()) {
            respond recruitInstance.errors, view:'create'
            return
        }

        recruitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recruit.label', default: 'Recruit'), recruitInstance.id])
                redirect recruitInstance
            }
            '*' { respond recruitInstance, [status: CREATED] }
        }
    }

    def edit(Recruit recruitInstance) {
        respond recruitInstance
    }

    @Transactional
    def update(Recruit recruitInstance) {
        if (recruitInstance == null) {
            notFound()
            return
        }

        if (recruitInstance.hasErrors()) {
            respond recruitInstance.errors, view:'edit'
            return
        }

        recruitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recruit.label', default: 'Recruit'), recruitInstance.id])
                redirect recruitInstance
            }
            '*'{ respond recruitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Recruit recruitInstance) {

        if (recruitInstance == null) {
            notFound()
            return
        }

        recruitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recruit.label', default: 'Recruit'), recruitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recruit.label', default: 'Recruit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
