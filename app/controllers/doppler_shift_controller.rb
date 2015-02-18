class DopplerShiftController < ApplicationController
  def doppler_shift
    f_0 = params[:frequendy].to_f
    @b = params[:velocity].to_f/299792458.0
    @dt_p = t_0/(Math.sqrt(1-(@b**2)))
  end
end
