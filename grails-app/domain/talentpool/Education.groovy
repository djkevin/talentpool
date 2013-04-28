package talentpool

class Education {

    Date startDate
    Date endDate
    String degree
    String fieldOfStudy
    String grade
    String activities
    String description


    static belongsTo = [person:Person]

    static constraints = {

        startDate()
        endDate()
        degree maxSize: 100
        fieldOfStudy maxSize: 100
        grade maxSize: 100
        activities maxSize: 500
        description maxSize: 1000
    }
}
