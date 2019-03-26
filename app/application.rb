class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/item/)
      item_name = req.path.split("/item/").last
      resp.write item_name.price 
    else
      resp.write "Path not found"
      resp.status = 404
    end
  end
end