class FormsController < ApplicationController
  def index
    @form = Form.all
  end

  def new
    @form = Form.new
  end

  def show
    @form = Form.find(params[:id])
  end

  def edit
    @form = Form.find(params[:id])
  end

  def create
    @form = Form.new(form_params)

    if @form.save
      redirect_to @form
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @form = Form.find(params[:id])

    if @form.update(form_params)
      redirect_to @form
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @form = Form.find(params[:id])

    @form.destroy
    redirect_to forms_path
  end

  private def form_params
    params.require(:form).permit(:surname, :school, :grade, :place)
  end
end
