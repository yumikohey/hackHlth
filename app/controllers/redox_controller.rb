class RedoxController < ApplicationController
    skip_before_action :verify_authenticity_token 

    def index
        verification_token = request.headers["verification-token"]
        if verification_token == "docIOHealthHack2018"
            render :json => {"body": "success"}
        end
    end

end