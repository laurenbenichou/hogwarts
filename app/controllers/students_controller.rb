class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @houses = House.all
  end

  def create
    @house = House.offset(rand(House.count)).first
    new_student = @house.students.new(params[:student])
    if new_student.save
      redirect_to student_path(new_student.id)
    else
      flash[:message] = "Last Name already in used"
      redirect_to new_student_path
    end
  end


  def show
    @student = Student.find(params[:id])
    @student_house = @student.house
  end

end