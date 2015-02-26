class ProjectileController < ApplicationController

  G = 9.81

  # Need to get x_0, v_0, t_0, total_time
  def free_fall
    dt = 0.1
    x_0 = params[:x_0].to_f
    v_0 = params[:v_0].to_f
    t_0 = params[:t_0].to_f
    @x_t = []

    # Time to hit the ground?
    @hit = Math.sqrt((2*x_0)/G)

    (0..@hit.round(1)).step(dt) do |t|
      x = -0.5*G*(t**2) + v_0*t + x_0
      @x_t << [t.round(2), x.round(3)]
    end

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(:height => '300')
      f.series(:type => 'scatter', :name =>
          'Free Fall Motion',
               data: @x_t, :color => '#00463f')
      f.plotOptions({line: {enableMouseTracking: false}})
      f.legend({:align => 'center', :verticalAlign=> 'top',
                :y => 0, :borderWidth => 0, style: {color: "#333"}})
    end
  end

  def projectile
    dt = 0.1
    x_0 = params[:x_0].to_f
    y_0 = params[:y_0].to_f
    v_0 = params[:v_0].to_f
    angle = params[:angle].to_f
    @x_y = []

    # Max height
    @y_max = ((v_0**2)*(Math.sin(angle))**2)/(2*G)

    # Time of flight
    @tof = (2*v_0*Math.sin(angle))/G

    @tof_gen = (v_0*Math.sin(angle)+Math.sqrt(2*G*y_0 + (v_0**2)*(Math.sin(angle))**2))/G

    # Maximum distance of the projectile
    @distance = ((v_0**2)/G)*Math.sin(2*angle)

    # Data for plot
    v_x = v_0*Math.cos(angle)
    v_y = v_0*Math.sin(angle)

    (0..@tof_gen.round(1)).step(dt) do |t|
      x = v_x*t + x_0
      y = v_y*t -0.5*G*(t**2) + y_0

      @x_y << [x.round(2), y.round(2)]
    end

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(:height => '300')
      f.series(:type => 'scatter', :name =>
          'Projectile Motion',
               data: @x_y, :color => '#00463f')
      f.plotOptions({line: {enableMouseTracking: false}})
      f.legend({:align => 'center', :verticalAlign=> 'top',
                :y => 0, :borderWidth => 1, style: {color: "#333"}})
      end

  end

end
