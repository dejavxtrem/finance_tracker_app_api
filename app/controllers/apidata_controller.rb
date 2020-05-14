class ApidataController < ApplicationController
    def search
        
        render json: {status: 200, message: "Hello word"}
    end
end
