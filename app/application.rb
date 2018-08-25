class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Godd Afternoon!"
    end
    resp.finish
  end
end
