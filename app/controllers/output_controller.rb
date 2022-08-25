class OutputController < ApplicationController

  def index
    @outputs = Output.all
  end

  def show
    @output = Output.find(params[:id])
  end
end
