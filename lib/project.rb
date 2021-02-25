class Project
	attr_accessor	:title, :backers

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
  
	def add_backer(backer)
    @backers << backer.tap {|b| b.backed_projects << self}
	end
end