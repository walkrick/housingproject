class HoasController < ApplicationController

  def new
    @hoa = Hoa.new
  end
  def show
    @hoa = Hoa.find(params[:id])
  end

  def create
    # @hoa = Hoa.new(allowed_parameters)
    @hoa = current_user.hoas.new(allowed_parameters)

    @hoa.user_id = params[:id]


    if @hoa.save
      redirect_to "/"
    else
      render :new
    end
  end

end



private

def allowed_parameters
  params.require(:hoa).permit(:location, :document, :user_id)
end
