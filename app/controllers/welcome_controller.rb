class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "finance tracker API" }
      end
end
