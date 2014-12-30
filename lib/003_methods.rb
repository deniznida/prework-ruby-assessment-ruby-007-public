# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

#'get_grade' 
#returns the grade of a student, given that student's name" 
#expect(get_grade(school, "Sophie")).to eq("C")
def get_grade(school, name)
    return school[:students].select{ |student| student[:name] == name}[0][:grade] 
end


#update_subject' 
#"udpates an instructor's subject given the instructor and the new subject"  
#update_subject(school, "Jeff", "Ruby on Rails")
#expect(school[:instructors][2][:subject]).to eq("Ruby on Rails")
def update_subject(school, name, subject)
	school[:instructors].each { |instructor| instructor[:subject] = subject if instructor[:name] == name}
end


#'add_new_student'  
#"adds a new student to the schools student array"  
#add_new_student(school, "Amanda")
#expect(school[:students][-1][:name]).to eq("Amanda")
def add_new_student(school, name)
	school[:students].push({:name => name})
end


#'add_new_key'  
#'adds a new key at the top level of the school hash, given a key and a value' 
#add_new_key(school, :ranking, 1)
#expect(school[:ranking]).to eq(1)
def add_new_key(school, ranking, value)
	school[ranking] = value
end