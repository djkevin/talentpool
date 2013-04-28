package talentpool



import org.junit.*
import grails.test.mixin.*

@TestFor(ExperienceController)
@Mock(Experience)
class ExperienceControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/experience/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.experienceInstanceList.size() == 0
        assert model.experienceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.experienceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.experienceInstance != null
        assert view == '/experience/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/experience/show/1'
        assert controller.flash.message != null
        assert Experience.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/experience/list'

        populateValidParams(params)
        def experience = new Experience(params)

        assert experience.save() != null

        params.id = experience.id

        def model = controller.show()

        assert model.experienceInstance == experience
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/experience/list'

        populateValidParams(params)
        def experience = new Experience(params)

        assert experience.save() != null

        params.id = experience.id

        def model = controller.edit()

        assert model.experienceInstance == experience
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/experience/list'

        response.reset()

        populateValidParams(params)
        def experience = new Experience(params)

        assert experience.save() != null

        // test invalid parameters in update
        params.id = experience.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/experience/edit"
        assert model.experienceInstance != null

        experience.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/experience/show/$experience.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        experience.clearErrors()

        populateValidParams(params)
        params.id = experience.id
        params.version = -1
        controller.update()

        assert view == "/experience/edit"
        assert model.experienceInstance != null
        assert model.experienceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/experience/list'

        response.reset()

        populateValidParams(params)
        def experience = new Experience(params)

        assert experience.save() != null
        assert Experience.count() == 1

        params.id = experience.id

        controller.delete()

        assert Experience.count() == 0
        assert Experience.get(experience.id) == null
        assert response.redirectedUrl == '/experience/list'
    }
}
