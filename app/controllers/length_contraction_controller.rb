class LengthContractionController < ApplicationController

  def length_contraction
    l_0 = params[:length].to_f
    b = params[:velocity].to_f
    @dl = l_0*(Math.sqrt(1-(b**2)))
    #render 'time_dilation'
  end
end
