class TimeDilationController < ApplicationController

  def time_dilation
    t_0 = delta_t
    b = rel_velocity
    dt_p = (t_0)/(Math.sqrt(1-b**2))
  end

  def test
    1 + 1
  end
end
