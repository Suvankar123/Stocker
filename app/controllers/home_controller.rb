class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey do you forget to enter any name??"
    elsif 
      if params[:id]
        begin
         @stock = StockQuote::Stock.quote(params[:id])
        rescue 
         @error = "Hey thats not a stock..search in google!!"
        end
      end
    end

    def about
    end
  end
end
