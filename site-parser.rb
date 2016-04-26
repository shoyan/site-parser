require 'nokogiri'
require 'open-uri'
require "awesome_print"
require 'kconv'
require 'csv'

result = []
hsh = {}
list = CSV.read("./site.csv") { |f| f.to_a.map { |id| id.chomp } }

list.each do |url|
  begin
    p url = url.first
    hsh = {'url' => url }
    html= URI.parse(url).read
    node = Nokogiri::HTML(html.toutf8, nil, 'utf-8')
    hsh.merge!({ 'title' => node.title })

    node.css("meta").each do |n|
      next if n.attributes["name"].nil?
      hsh.merge!({ n.attributes["name"].value => n.attributes["content"].value })
    end
  rescue => e
    hsh.merge!({ "error" => e.message})
  end
  result << hsh
end

ap result
