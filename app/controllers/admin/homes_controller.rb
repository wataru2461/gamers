class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!, except: [:sessions]
  
  def top
    @orders = Order.all
  end
end
