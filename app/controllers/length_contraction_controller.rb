class LengthContractionController < ApplicationController

  def length_contraction
    unit = params[:units].to_i
    if unit == 1
      l_0 = params[:length].to_f
      b = params[:velocity].to_f/299792458.0
      @dl = l_0*(Math.sqrt(1-(b**2)))
    elsif unit == 2
      l_0 = params[:length].to_f
      b = params[:velocity].to_f/670616629.0
      @dl = l_0*(Math.sqrt(1-(b**2)))
    elsif unit == 3
      l_0 = params[:length].to_f
      b = params[:velocity].to_f/1079252850.0
      @dl = l_0*(Math.sqrt(1-(b**2)))
    elsif unit == 4
      l_0 = params[:length].to_f
      b = params[:velocity].to_f
      @dl = l_0*(Math.sqrt(1-(b**2)))
    end
    #render 'time_dilation'
  end
end
