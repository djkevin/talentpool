package talentpool

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

    static hasMany = [education:Education]


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
}
