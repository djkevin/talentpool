
package talentpool

import org.joda.time.*

class Person {

    String firstName
    String lastName
    Date dateOfBirth
    String professionalHeadline
    String city
    String country
    String industry
    String email
    String summary
    byte[] image

    static hasMany = [education:Education, experience:Experience, skill:Skill, document:Document]



    static constraints = {
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        dateOfBirth()
        professionalHeadline()
        city()
        country()
        industry()
        email email: true
        image()
        summary maxSize: 1000
    }

    Integer getAge(){

        if (dateOfBirth == null) return 0

        DateMidnight birthdate = new DateMidnight(dateOfBirth)
        DateTime now = new DateTime()
        Years age = Years.yearsBetween(birthdate, now)
        return age.getYears()
    }
}
