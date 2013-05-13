package talentpool



import grails.test.mixin.*
import org.junit.*
import org.joda.time.*;

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Person)
class PersonTests {

    void testIfPersonAgeIsCorrectlyCalculated() {
        def person1 = new Person(firstName:"Bob", lastName:"Marley", dateOfBirth:new Date(), professionalHeadline: "rastafarai", city:"Kingston Town", country:"Jamaica", industry:"manufacturing", email:"djutliah@gmail.com", summary:"sample text")
        person1.dateOfBirth = new DateMidnight(1970, 1, 20).toDate();

        assertEquals(43,person1.getAge())

    }

    void testIfNullDateOfBirthReturnsZero(){
        def person2 = new Person()

        assertEquals(0,person2.getAge())
    }
}
