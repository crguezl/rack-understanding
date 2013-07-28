class MyApp 
  def call(env)
    [ "200", { "Content-type" => "text/html" }, ["<h1>Hello World!</h1>"]]
  end
end

run MyApp.new
