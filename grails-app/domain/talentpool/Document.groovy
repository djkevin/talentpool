package talentpool

class Document {

    String documentType
    String description
    byte[] document

    static belongsTo = [person:Person]

    static constraints = {

        documentType maxSize: 50
        description maxSize: 1000
        document maxSize: 10*1024*1024 //10 MB

    }

}
