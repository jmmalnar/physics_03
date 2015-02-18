class TimeDilationController < ApplicationController

  def time_dilation
    unit = params[:units].to_i
    if unit == 1
      t_0 = params[:delta_t].to_f
      @b = params[:velocity].to_f/299792458.0
      @dt_p = t_0/(Math.sqrt(1-(@b**2)))
      @u = 'm/s'
    elsif unit == 2
      t_0 = params[:delta_t].to_f
      @b = params[:velocity].to_f/670616629.0
      @dt_p = t_0/(Math.sqrt(1-(@b**2)))
      @u = 'mph'
    elsif unit == 3
      t_0 = params[:delta_t].to_f
      @b = params[:velocity].to_f/1079252850.0
      @dt_p = t_0/(Math.sqrt(1-(@b**2)))
      @u = 'kph'
    elsif unit == 4
      t_0 = params[:delta_t].to_f
      @b = params[:velocity].to_f
      @dt_p = t_0/(Math.sqrt(1-(@b**2)))
      @u = 'c'
    end

    #render 'time_dilation'
  end

end
