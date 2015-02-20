class ProjectileController < ApplicationController
  # Need to get x_0, v_0, t_0, total_time
  def projectile
    step_size = 0.1
    x_0 = params[:x_0].to_f
    v_0 = params[:v_0].to_f
    t_0 = params[:t_0].to_f
    total_time = params[:total_time].to_f
    @x_t = [[x_0, t_0]]
    g = 9.8

    (step_size..total_time).step(step_size) do |dt|
      x_0 = -0.5*g*(dt**2) + v_0*dt + x_0
      t_0 = t_0 + dt
      @x_t << [x_0, t_0]

      if (x_0 < 0)
        puts "Total time elapsed until it hits the ground #{t_0} seconds"
        break
      end
    end

  end
end
