class StudentsController < ApplicationController
  def show
    student = Student.find(params[:id])
    render json: student 
  end

  def create 
    student = Student.create(student_params)
    render json: student
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
      params.permit(:name, :stage)
    end
end
