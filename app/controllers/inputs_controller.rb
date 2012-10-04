class InputsController < ApplicationController

  def new
    @input = Input.new
  end

  def create
    @input = Input.new(params[:input])

    if @input.save
      flash[:success] = "Input successfully imported,  total amount gross revenue = #{@input.total_amount}"
    else
      flash[:alert] = @input.errors.full_messages.to_sentence
    end

    render :new
  end
end
