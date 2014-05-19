package domain.goal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DiscreteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Discrete.list(params), model:[discreteInstanceCount: Discrete.count()]
    }

    def show(Discrete discreteInstance) {
        respond discreteInstance
    }

    def create() {
        respond new Discrete(params)
    }

    @Transactional
    def save(Discrete discreteInstance) {
        if (discreteInstance == null) {
            notFound()
            return
        }

        if (discreteInstance.hasErrors()) {
            respond discreteInstance.errors, view:'create'
            return
        }

        discreteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'discrete.label', default: 'Discrete'), discreteInstance.id])
                redirect discreteInstance
            }
            '*' { respond discreteInstance, [status: CREATED] }
        }
    }

    def edit(Discrete discreteInstance) {
        respond discreteInstance
    }

    @Transactional
    def update(Discrete discreteInstance) {
        if (discreteInstance == null) {
            notFound()
            return
        }

        if (discreteInstance.hasErrors()) {
            respond discreteInstance.errors, view:'edit'
            return
        }

        discreteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Discrete.label', default: 'Discrete'), discreteInstance.id])
                redirect discreteInstance
            }
            '*'{ respond discreteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Discrete discreteInstance) {

        if (discreteInstance == null) {
            notFound()
            return
        }

        discreteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Discrete.label', default: 'Discrete'), discreteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'discrete.label', default: 'Discrete'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
