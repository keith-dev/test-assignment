require 'net/https'
require 'uri'
require 'open-uri'
require 'json'

def  fetch_words
  if !File.exists?( "words.txt" ); then
    url_str = "https://raw.githubusercontent.com/dwyl/english-words/master/words.txt"
    res = open( url_str )
    system( "cp #{res.path} words.txt" )
  end

  words = IO.readlines( "words.txt" )
end

def select_random( words, n = 10 )
  selected = Array.new

  for i in 1..n
    selected << words[ Random.rand(1..words.length) - 1 ]
  end

  selected
end

def search_word( word )
  # needed more time to get it to work with 'word'
  url_str = "https://api.duckduckgo.com/?q=" + word.gsub( "\n", "" ).downcase + "&format=json&pretty=1"
  url_str = "https://api.duckduckgo.com/?q=mini&format=json&pretty=1"
# puts "duckduckgo query=#{url_str}"

  res = open( url_str )
  if res.is_a?(Tempfile)
    system( "cp #{res.path} results.json" )
    JSON.parse( IO.readlines( res.path ).to_s )
  elsif res.is_a?(StringIO)
    JSON.parse( res.string )
  end
end


words = fetch_words
selected = select_random( words, 100 )

# needed more time to look at this
#final_json = String.new
for i in i..selected.length
  json = search_word( selected[ i - 1] )
  # extract top 3 result and append them to final_json
end
#puts "#{final_json}"
