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

get("/word/:id") do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

post("/word/:id") do
  @new_definition = Definition.new({:description => params.fetch('definition')})
  @new_definition.save()
  @word = Word.find(params.fetch('word_id').to_i()).add_definition(@new_definition)
  erb(:success)
end
