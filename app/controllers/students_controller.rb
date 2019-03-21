class StudentsController < ApplicationController
  def show
    student = Student.find(params[:id])
    render json: student 
  end

  def create 
    Student.create(student_params)
    students = Student.all
    render json: students
  end

  def edit
    student = Student.find(params[:id])
    render json: student
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    render json: student
  end

  def index
    #if params[:team_id]
      #users = Team.find(params[:team_id]).users
    #else
    students = Student.all 
    #end
    render json: students
  end

  private

    def student_params
      params.permit(:name, :stage, :user_id)
    end
end
