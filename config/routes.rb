Rails.application.routes.draw do
  
  get("/", {:controller => "omnicalc", :action => "square_calc"})
  

  # number square calculator
  get("/square/new", {:controller => "omnicalc", :action => "square_calc"})

  get("/square/results", {:controller => "omnicalc", :action => "square_results"})

end
