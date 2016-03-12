class PoemsController < ApplicationController
  def index
=begin
    @holidays = Holiday.all
    @authors = Author.all
=end
    @resource = define_source
    @poems = @resource.poems
  end

  def new
    @poems = Poem.new
    @holiday = Holiday.find(params[:holiday_id])
  end

  def create
    @holiday = Holiday.find(params[:holiday_id])
    @poem = @holiday.poems.create(poems_params)

    if @poem.save
      redirect_to holiday_poems_path
    else
      render 'new'
    end
  end

  def show
    @poem = Poem.find(params[:id])
  end

  def edit
    @poem = Poem.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])

    if @holiday.update(holiday_params)
      redirect_to holidays_path
    else
      render 'edit'
    end
  end

  def destroy
    @holiday = Holiday.find(params[:id])
    @poem =

    @holiday.destroy

    redirect_to holidays_path
  end

  private

  def poems_params
    params.require(:poem).permit(:text)
  end

 begin
  def define_source
    if params[:author_id].present?
      return Author.find(params[:author_id])
    end
    if params[:holiday_id].present?
      return Holiday.find(params[:holiday_id])
    end
  end
 end

end