class RedoxController < ApplicationController
    skip_before_action :verify_authenticity_token 
    def index
        if request.get?
            puts "get POST"
            verification_token = request.headers["verification-token"]
            if verification_token == "docIOHealthHack2018"
                render body: params["challenge"]
            end
        end
        if request.post?
            puts "post"
            render status: 200
        end
    end

end
