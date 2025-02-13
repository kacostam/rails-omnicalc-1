Rails.application.routes.draw do
  
  get("/", {:controller => "omnicalc", :action => "square_calc"})
  

  # number square calculator
  get("/square/new", {:controller => "omnicalc", :action => "square_calc"})

  get("/square/results", {:controller => "omnicalc", :action => "square_results"})


  # number square root calculator
  get("/square_root/new", {:controller => "omnicalc", :action => "square_root_calc"})

  get("/square_root/results", {:controller => "omnicalc", :action => "square_root_results"})

  # payment calculator
  get("/payment/new", {:controller => "omnicalc", :action => "payment_calc"})

  get("/payment/results", {:controller => "omnicalc", :action => "payment_results"})
  
  # random number picker
  get("/random/new", {:controller => "omnicalc", :action => "random_calc"})

  get("/random/results", {:controller => "omnicalc", :action => "random_results"})

end
