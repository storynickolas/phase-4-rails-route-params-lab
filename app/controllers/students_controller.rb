class StudentsController < ApplicationController

  def index
    if params[:first_name] || params[:last_name]
      student = Student.where(:last_name => params[:last_name]).or(Student.where(:first_name => params[:first_name]))
      render json: student
    else
      student = Student.all
      render json: student
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def sample
    student = Student.where(:last_name => params[:last_name])
    render json: student
  end

end
