class Api::V1::UrlsController < ApplicationController
  def show
  	if params[:id]
        url = Url.find(params[:long])
    	render json: { success: true, list: url }
    else
    	render json: { success: false, message: 'This information requires a url' }
    end
  end
end