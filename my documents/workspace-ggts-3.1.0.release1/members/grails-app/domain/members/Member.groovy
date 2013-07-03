package members

class Member {
	
	String name
	int Age
	String regNo1

    static constraints = {
		name(blank:false)
		Age(nullable:false)
		regNo1(blank:false)
    }
	
	
	static hasMany = [memberships:Membership]
}
