class Backer
	attr_accessor	:name, :backed_projects
	
	@@all = []

	def initialize
	  @name = name
		@backed_projects = []
		save
	end
	
	def save
	  @@all << self
	end

  def self.find_or_create_by_name(backer_name)
    self.find(backer_name) ? self.find(backer_name) : self.new(backer_name)
  end
  
	def back_project(project)
    self.project = Project.find_or_create_by_name(project)
    project.find_or_create_by_name(self)
	end
end