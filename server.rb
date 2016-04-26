require 'nokogiri'
require 'open-uri'
require 'kconv'
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

post "/" do
  begin
    hsh = {'url' => params[:url]}
    html= URI.parse(params[:url]).read
    node = Nokogiri::HTML(html.toutf8, nil, 'utf-8')
    hsh.merge!({ 'title' => node.title })

    node.css("meta").each do |n|
      next if n.attributes["name"].nil?
      hsh.merge!({ n.attributes["name"].value => n.attributes["content"].value })
    end
  rescue => e
    hsh.merge!({ "error" => e.message}).to_json
  end
  hsh.to_json
end
