package domain.goal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContinuousController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Continuous.list(params), model:[continuousInstanceCount: Continuous.count()]
    }

    def show(Continuous continuousInstance) {
        respond continuousInstance
    }

    def create() {
        respond new Continuous(params)
    }

    @Transactional
    def save(Continuous continuousInstance) {
        if (continuousInstance == null) {
            notFound()
            return
        }

        if (continuousInstance.hasErrors()) {
            respond continuousInstance.errors, view:'create'
            return
        }

        continuousInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'continuous.label', default: 'Continuous'), continuousInstance.id])
                redirect continuousInstance
            }
            '*' { respond continuousInstance, [status: CREATED] }
        }
    }

    def edit(Continuous continuousInstance) {
        respond continuousInstance
    }

    @Transactional
    def update(Continuous continuousInstance) {
        if (continuousInstance == null) {
            notFound()
            return
        }

        if (continuousInstance.hasErrors()) {
            respond continuousInstance.errors, view:'edit'
            return
        }

        continuousInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Continuous.label', default: 'Continuous'), continuousInstance.id])
                redirect continuousInstance
            }
            '*'{ respond continuousInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Continuous continuousInstance) {

        if (continuousInstance == null) {
            notFound()
            return
        }

        continuousInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Continuous.label', default: 'Continuous'), continuousInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'continuous.label', default: 'Continuous'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
