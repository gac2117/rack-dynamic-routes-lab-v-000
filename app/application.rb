class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/item/)

    else
      resp.write "Path not foun"
      resp.status = 404
    end
  end
end
