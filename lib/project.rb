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
  
	def add_backer(backer)
    @backers << backer.tap {|b| b.backed_projects << self}
  end
end