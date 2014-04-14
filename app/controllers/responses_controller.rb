class ResponsesController < ApplicationController
  before_action :set_response, only: [:edit, :update, :destroy]

  def new

  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.create(response_params)
    redirect_to question_path(@question)
  end

  def update

  end

  def edit

  end

  def destroy

  end

  private
  def set_response
    @response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit(:response)
  end

end
