package members

class Member {
	
	String name1
	int age
	String regNo1

    static constraints = {
		name1(blank:false)
		age(nullable:false)
		regNo1(blank:false)
    }
	
	
	static hasMany = [memberships:Membership]
}
