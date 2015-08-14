require("sinatra")
require("sinatra/reloader")
require("./lib/word")
require("./lib/definition")
also_reload("lib/**/*.rb")

get("/") do
  @words = Word.all()
  erb(:index)
end

post("/") do
  word = Word.new({:name => params.fetch("word")})
  word.save()
  erb(:success)
end
