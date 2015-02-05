class TimeDilationController < ApplicationController

  def time_dilation
    t_0 = params[:delta_t].to_f
    b = params[:velocity].to_f
    @dt_p = t_0/(Math.sqrt(1-(b**2)))
    #render 'time_dilation'
  end

  def test
    1 + 1
  end
end
