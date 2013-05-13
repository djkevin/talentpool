package talentpool

class Skill {

    String skillName

    static belongsTo = [person:Person]

    static constraints = {
    }
}
