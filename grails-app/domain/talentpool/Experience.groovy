package talentpool



class Experience {

    String companyName
    String title
    String location
    String website
    Date dateFrom
    Date dateTo
    Boolean isCurrentPosition
    String description

    static belongsTo = [person:Person]

    static constraints = {
        companyName nullable: false
        title nullable:false
        location maxSize: 100
        website()
        dateFrom()
        dateTo()
        isCurrentPosition()
        description maxSize: 500
    }
}
