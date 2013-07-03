package members

class MemberController {
	
def shows(){	
	def m=params.name
	def a=Member.findByAge(m)
println a

if(a){
	println "member found"
	flash.message=message(code:'default.found.message',args:[message(code:'member.label',default:'Member')])
		render(view:'show',model:[mem: a])
}
else{
flash.message=message(code:'default.not.found.message',args:[message(code:'member.label',default:'Member')])
render(view:'search',model:[mem:Member])
}
}
    def index() {
		redirect(action:'list',params:params)
	}
	
	def create(){
		[mem:new Member(params)]
		
	}
	
	def list(){
		[memList:Member.list(params)]
	//	def memList1= new ArrayList<Membership>()
		
//memList1.add(Membership.name)
		
		
		
		
	}
	def save(){
		def mem=new Member(params)
		if(!mem.save(flush:true)){
			render(view:"create",model:[mem:mem])
			return
			
		}
		redirect(action:"show",id:mem.id)
	}
	
	def show(int id){
		def mem=Member.get(id)
		if(!mem){
			redirect(action:"list")
			return
		}
		[mem:mem]	
	}
	
	def show1(){
		
		
		render(view:'tableGrid',model:[m1:Member])
	}
	
	def search(){
		def m=Member.findByName("asd")
		
	if(!m?.save(flush:true)){
	
		flash.message=message(code:'default.not.found.message',args:[message(code:'member.label',default:'Member')])
		render(view:'search',model:[m1:Member])
		return
	}
	
	redirect(action:"show",id:m?.id)
		
	}
	
	
	/*def search1(){
		//def mem1=params.name
	//	println "mem1="+"${mem1}"
		
		//render(view:'search1',model:[mem:Member])
		
		
		println a
		
		
		if(a){
			flash.message=message(code:'found.member',args:[message(code:'member.label',default:'Member')])
			render(view:'display',model:[m: Member])
			
		}
		redirect(action:"list")
		//println mem1
		//render(view:'search1',model:[mem:Member])
		/*def n=params.name1
		def n1=Member.findByName(n)
		println n1
		if(!n1){
			flash.message=message(code:'default.not.found.message',args:[message(code:'member.label',default:'Member')])
			render(view:'search',model:[m1:Member])
			return
		}
		
		redirect(action:"show")//,id:n1?.id)*/
			
		//} 
	def edit(Long id){
		def mem=Member.get(id)
		if(!mem){
			flash.message=message(code:'default.not.found.message',args:[message(code:'member.label',default:'Member')],id)
		
	//	redirect(action:'update',id:mem?.id)
	//	render(view:'edit',model:[mem:mem])
			
			redirect(action:"list")
		return
		}
		[mem:mem]
		//render(view:'edit',model:[mem:mem])
		//redirect(action:'list')
		
			}
	def update(Long id){
		def mem=Member.get(id)
		if(!mem){
			flash.message=message(code:'default.not.found.message',args:[message(code:'member.label',default:'Member')])
			
			redirect(action:'list')
			
			return
		}
		
		mem.properties=params
		if(!mem.save(flush:true)){
			render(view:'edit',model:[mem:mem])
			return
		}
		redirect(action:"show",id:mem.id)
	}	
		
}

