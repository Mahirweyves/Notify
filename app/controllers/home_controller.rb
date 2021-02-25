class HomeController < ApplicationController
  def index
  		if account_signed_in?
  		redirect_to trade_path, flash: { success: "successfully signed in. welcome to Notify!" } and return
    end
  end
end
