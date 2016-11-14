import com.security.*

class BootStrap {

    def init = { servletContext ->
		if (User.count()==0)
		{
	    	def user = new User("admin","admin").save(flush:true,failOnError:true)
	    	def role = new Role("ROLE_ADMIN").save(flush:true,failOnError:true)
	    	UserRole.create(user,role)
		}
    }
    def destroy = {
    }
}
