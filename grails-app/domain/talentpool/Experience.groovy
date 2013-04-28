package talentpool

class Experience {

    String companyName
    String title
    String location
    String dateFrom
    String dateTo
    Boolean isCurrentPosition
    String description





    static constraints = {
        companyName nullable: false
        title nullable:false
        location maxSize: 100
        dateFrom()
        dateTo();
        isCurrentPosition()
        description maxSize: 500
    }
}
