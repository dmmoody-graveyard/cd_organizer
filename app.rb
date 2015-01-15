require("sinatra")
require("sinatra/reloader")
require("./lib/cd")
also_reload("./lib/**/*.rb")

get("/") do
  @cd = CD.all()
  erb(:index)
end

post('/new_cd_entry') do
  @album_name = params.fetch('album_name')
  @artist = params.fetch('artist')
  @new_cd = CD.new(@album_name, @artist)
  @new_cd.add()
  redirect('/')
end
