package com



import org.junit.*
import grails.test.mixin.*

@TestFor(HistorialMedicoController)
@Mock(HistorialMedico)
class HistorialMedicoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/historialMedico/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.historialMedicoInstanceList.size() == 0
        assert model.historialMedicoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.historialMedicoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.historialMedicoInstance != null
        assert view == '/historialMedico/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/historialMedico/show/1'
        assert controller.flash.message != null
        assert HistorialMedico.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/historialMedico/list'

        populateValidParams(params)
        def historialMedico = new HistorialMedico(params)

        assert historialMedico.save() != null

        params.id = historialMedico.id

        def model = controller.show()

        assert model.historialMedicoInstance == historialMedico
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/historialMedico/list'

        populateValidParams(params)
        def historialMedico = new HistorialMedico(params)

        assert historialMedico.save() != null

        params.id = historialMedico.id

        def model = controller.edit()

        assert model.historialMedicoInstance == historialMedico
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/historialMedico/list'

        response.reset()

        populateValidParams(params)
        def historialMedico = new HistorialMedico(params)

        assert historialMedico.save() != null

        // test invalid parameters in update
        params.id = historialMedico.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/historialMedico/edit"
        assert model.historialMedicoInstance != null

        historialMedico.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/historialMedico/show/$historialMedico.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        historialMedico.clearErrors()

        populateValidParams(params)
        params.id = historialMedico.id
        params.version = -1
        controller.update()

        assert view == "/historialMedico/edit"
        assert model.historialMedicoInstance != null
        assert model.historialMedicoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/historialMedico/list'

        response.reset()

        populateValidParams(params)
        def historialMedico = new HistorialMedico(params)

        assert historialMedico.save() != null
        assert HistorialMedico.count() == 1

        params.id = historialMedico.id

        controller.delete()

        assert HistorialMedico.count() == 0
        assert HistorialMedico.get(historialMedico.id) == null
        assert response.redirectedUrl == '/historialMedico/list'
    }
}
