require("sinatra")
require("sinatra/reloader")
require("./lib/cd")
also_reload("./lib/**/*.rb")

get("/") do
  erb(:index)
end