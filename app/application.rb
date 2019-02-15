class Application
  def call(env)
    resp = Rack::Response.new
    binding.pry
    time_now = Time.now
    noon = DateTime.new(DateTime.now.year, 
                        DateTime.now.month, 
                        DateTime.now.day, 
                        12, 0, 0)
                        
    if time_now < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
