import members.Member
import members.Membership

class BootStrap {

    def init = { servletContext ->
		
		def a1=new Membership(name:'a1').save()
		
	 	new Member(name:'asd', regNo:'34', age:'33').save()
		.addToMemberships(a1)
		new Member(name:'as', regNo:'3', age:'23').save()
		
		
    }
    def destroy = {
    }
}
