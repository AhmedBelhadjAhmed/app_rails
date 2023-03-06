class MainController < ApplicationController
    def index 
        flash[:name] = "ahmed"
        flash[:email] = "exemple@gmail.com"
    end
end