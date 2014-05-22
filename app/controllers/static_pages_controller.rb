class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
    @user = User.last;
  end

end
