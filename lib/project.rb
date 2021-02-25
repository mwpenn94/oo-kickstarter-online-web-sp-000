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

  def self.find_or_create_by_name(project_name)
    self.find(project_name) ? self.find(project_name) : self.new(project_name)
  end
  
	def back_project(project)
    @backed_projects << project.tap {|p| p.add_backer(self)}
	end
end