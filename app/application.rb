class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour.to_f > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
