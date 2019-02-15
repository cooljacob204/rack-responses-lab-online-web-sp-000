class Application
  def call(env)
    resp = Rack::Response.new
    time_now = Time.now
    noon = Time.new(Time.now.year, 
                        Time.now.month, 
                        Time.now.day, 
                        12, 0, 0)
                        
    if time_now < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
