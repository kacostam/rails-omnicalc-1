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
  
end
