class School

	#Global Variable
	@@active_schools = []

    #Global Methods
	def self.all
		return	@@active_schools
	end

	def self.count
		@@active_schools.length
	end

	def self.reset_all
		@@active_schools = []
	end

    #Instance -----------------------

	#Accessors
	attr_accessor :name
	attr_accessor :location
	attr_reader :ranking
	attr_reader :students
	attr_reader :instructors

	def initialize (name, location, ranking)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = []
		@@active_schools.push self
	end


	#Instance Methods
	def add_student (name, grade, semester)
		new_student = {:name => name, :grade => grade, :semester => semester}
		students.push new_student
	end

	def remove_student (name)
		@students.delete_if{|name| student[:name] == name}
	end

end

