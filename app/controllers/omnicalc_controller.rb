class OmnicalcController < ApplicationController

  def square_calc
    render({:template => "calc_views/new_square_calc" })
  end

  def square_results
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2
  
    render({:template => "calc_views/square_results"})
  end

  def square_root_calc
    render({:template => "calc_views/new_square_root_calc"})
  end

  def square_root_results
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 0.5
    render({:template => "calc_views/square_root_results"})
  end

  def payment_calc
    render({:template => "calc_views/new_payment_calc"})
  end

  def payment_results
    @the_apr = params.fetch("user_apr").to_f
    @num_periods = params.fetch("user_years").to_f
    @the_principal = params.fetch("user_pv").to_f


    @r = @the_apr / 100 / 12 
    @n = @num_periods*12

    @numerator = @r * (1 + @r) ** @n
    @denominator = (1 + @r) ** @n - 1

    @the_result =  @the_principal * @numerator / @denominator
    render({:template => "calc_views/payment_results"})
  end

  def random_calc
    render({:template => "calc_views/new_random_calc"})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @the_result = rand(@min..@max)
    
    render({:template => "calc_views/random_results"})
  end

end
