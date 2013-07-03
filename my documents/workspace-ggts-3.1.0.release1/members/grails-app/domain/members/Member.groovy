package members

class Member {
	
	String name1
	int Age
	String regNo1

    static constraints = {
		name1(blank:false)
		Age(nullable:false)
		regNo1(blank:false)
    }
	
	
	static hasMany = [memberships:Membership]
}
