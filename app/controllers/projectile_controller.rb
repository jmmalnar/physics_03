class ProjectileController < ApplicationController
  # Need to get x_0, v_0, t_0, total_time
  def projectile
    dt = 0.1
    x_0 = params[:x_0].to_f
    v_0 = params[:v_0].to_f
    t_0 = params[:t_0].to_f
    @x_t = []
    g = 9.8

    # Time to hit the ground?
    @hit = Math.sqrt((2*x_0)/g)

    (0..@hit.round(1)).step(dt) do |t|
      x = -0.5*g*(t**2) + v_0*t + x_0
      @x_t << [t.round(2), x.round(3)]
    end

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(:height => '300')
      f.series(:type => 'scatter', :name =>
          '% Established over planted',
               data: @x_t, :color => '#00463f')
      f.plotOptions({line: {enableMouseTracking: false}})
      f.legend({:align => 'center', :verticalAlign=> 'top',
                :y => 0, :borderWidth => 0, style: {color: "#333"}})
    end

  end
end
