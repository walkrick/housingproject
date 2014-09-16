class PagesController < ApplicationController
  skip_before_filter :ensure_current_user

  # def show
  #   render params[:id]
  # end

  def about

  end

end
