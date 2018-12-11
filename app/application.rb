class Application

    def call(env)
      resp = Rack::Response.new
      time = Time.now.to_s
      hour = time[11..12].to_i
      
      if hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
     
      resp.finish
    end
  end
  