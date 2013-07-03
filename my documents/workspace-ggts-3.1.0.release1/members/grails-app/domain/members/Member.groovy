package members

class Member {
	
	String name
	int age
	String regNo1

    static constraints = {
		name(blank:false)
		age(nullable:false)
		regNo1(blank:false)
    }
	
	
	static hasMany = [memberships:Membership]
}
