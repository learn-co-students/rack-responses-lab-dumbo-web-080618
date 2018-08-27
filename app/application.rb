class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    current_time = time.hour

    if current_time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

  end
