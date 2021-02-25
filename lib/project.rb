class Project
	attr_accessor	:name, :backers

	@@all = []

	def initialize
	  @name = name
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
    self.backer = Backer.find_or_create_by_name(backer)
    backer.find_or_create_by_name(self)
	end
end