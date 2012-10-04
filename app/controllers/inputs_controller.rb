class InputsController < ApplicationController

  def new
    @input = Input.new
  end

  def create
    @input = Input.new(params[:input])

    if @input.save
      flash[:success] = "Input successfully imported,  total amount gross revenue = #{@input.total_amount}"
      redirect_to new_input_path
    else
      flash[:error] = @input.errors.full_messages.to_sentence
      render :new
    end

  end
end
