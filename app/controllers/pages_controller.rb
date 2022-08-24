class PagesController < ApplicationController

  def home
    if params[:query].present?
      @location = params[:query]
      @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=metric&appid=e2cc1cfee45e67ee3794108cf00f39fe"
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @output = JSON.parse(@response)
      @final_output = @output
    # else
    #   @final_output = "Please try again"
    end

    # @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=metric&appid=e2cc1cfee45e67ee3794108cf00f39fe"
    # @uri = URI(@url)
    # @response = Net::HTTP.get(@uri)
    # @output = JSON.parse(@response)

  #   if @output.empty?
  #     @final_output = "hello"
  #   else
  #     @final_output = @output
  # end
end
end
