class HomeController < ApplicationController
  def index
    @case = Case.current
  end
end
