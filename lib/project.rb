class Project
	attr_accessor	:backers
	attr_reader :title

	@@all = []

	def initialize(title)
	  @title = title
		@backers = []
		save
	end

  def save
    @@all << self
  end
  
	def back_project(project)
    @backed_projects << project.tap {|p| p.add_backer(self)}
	end
end