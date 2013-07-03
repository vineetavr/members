package members

class Member {
	
	String name
	int age
	String regNo

    static constraints = {
		name(blank:false)
		age(nullable:false)
		regNo(blank:false)
    }
	
	
	static hasMany = [memberships:Membership]
}
