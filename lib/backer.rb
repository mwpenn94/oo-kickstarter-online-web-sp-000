class Backer
	attr_accessor	:name, :backed_projects
	
	@@all = []

	def initialize(name)
	  @name = name
		@backed_projects = []
		save
	end
	
	def save
	  @@all << self
	end

  def back_project(project)
    @backed_projects << project.tap {|p| p.add_backer(self)}
	end
end