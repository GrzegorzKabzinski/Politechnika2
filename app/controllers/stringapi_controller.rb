class StringapiController < ApplicationController
  def index
    given_string = params[:mystring]
    if check_string(given_string)
      render json: 'A string contains only digits'
    end
    if !check_string(given_string)
      render json: 'A string does not contain digits'
    end
  end

  def check_string(string)
    string !~ /\D/
  end
end
