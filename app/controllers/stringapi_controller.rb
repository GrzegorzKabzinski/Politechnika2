class StringapiController < ApplicationController

  def index
    @output_value = 'string contains '
    given_string = params[:mystring].to_s

    check_string(given_string)

    render json: @output_value
  end

  private

  def check_string(given_string)
    if given_string.count("0-9") > 0
      @output_value += 'digits '
    end

    if given_string.count("A-Z") > 0
      @output_value += 'capital letters '
    end

    if given_string.count("a-z") > 0
      @output_value += 'small letters '
    end

    if given_string.count('[!@#$%^&*(),.?":{}|<>]') > 0
      @output_value += 'special signs'
    end
  end
end
