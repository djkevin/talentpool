import grails.util.GrailsUtil
import talentpool.Person

class BootStrap {

    def init = { servletContext ->

        if(GrailsUtil. developmentEnv){

                                                                                                                                 /*

            def categories = ["Relocation", "Retirement", "Education", "Harassment","Work-related", "Conflict", "Health", "Financial", "Former SM/ Retiree Issues", "Legal", "Personal", "Death in Service",
                    "Death of former staff member", "Local Authorities"].collect {val-> new Category(name:val).save(failOnError:false)}

            def organizations = ["UNOG/DM/ICTS","UNCTAD/DTL","UNHCR ","HRMS","SDLS","FRMS","MED. SER","DCM","LIBRARY","DSS","UNIS","CSS","ODG","ECE","ISDR","OCHA","OHCHR","OIOS","UNCTAD","UNEP","UNICEF",
                    "WFP","ITC","JIU","UNIDIR","UNITAR","UNJSPF","UNRISD","UNV BONN","UN DPKO","OTHER"].collect {val-> new Organization(name:val).save(failOnError:false)}

            //PersonTypes
            def staffMember = new PersonType(personType:"Staff member", description:"UN staff").save(failOnError:false)
            def spouse = new PersonType(personType:"Spouse", description:"spouse of UN staff").save(failOnError:false)
            def retiree = new PersonType(personType:"Retiree", description:"retired UN staff").save(failOnError:false)
            def depChild = new PersonType(personType:"Dependent child", description:"dependent child").save(failOnError:false)
            def parent = new PersonType(personType:"Parent", description:"parent of staff member").save(failOnError:false)     */


            //Create Person
            byte[] b = [0, 0, 0, 0, 0]
            def person1 = new Person(firstName:"Bob", lastName:"Marley", dateOfBirth:new Date(), professionalHeadline: "rastafarai", city:"Kingston Town", country:"Jamaica", industry:"manufacturing", email:"djutliah@gmail.com", summary:"sample text", image:b).save(failOnError:true)
            def person2 = new Person(firstName:"John", lastName:"Doe", dateOfBirth:new Date(), professionalHeadline: "rastafarai", city:"Old Town", country:"USA", industry:"music", email:"djutliah@gmail.com", summary:"sample text", image:b).save(failOnError:true)
            def person3 = new Person(firstName:"Max", lastName:"Mustermann", dateOfBirth:new Date(), professionalHeadline: "rastafarai", city:"Old Town", country:"Germany", industry:"amizer", email:"djutliah@gmail.com", summary:"sample text", image:b).save(failOnError:true)


            /*
            def orgUNCTAD = new Organization(name:"UNCTAD", longName:"United Nations Conference on Trade and Development").save(failOnError:false)
            def orgUNOG = new Organization(name:"UNoG", longName:"United Nations Office at Geneva").save(failOnError:false)
            def orgUNRISD = new Organization(name:"UNRISD", longName:"United Nations Research Institure for Social Development").save(failOnError:false)

            def person1 = new Person(title:"Mr", lastName:"Marley", firstName:"Bob", middleName: "rastafarai", indexNumber:"898989", personType:staffMember, organization:orgUNRISD).save(failOnError:false)
            */

        }
    }
    def destroy = {
    }
}
