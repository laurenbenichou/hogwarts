class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
  end

  def new
    @houses = House.all
  end

  def create
    @house = House.find_by_name(params[:house][:name])
    new_student = @house.students.create(params[:student])
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
    @student_house = @student.house
  end

end