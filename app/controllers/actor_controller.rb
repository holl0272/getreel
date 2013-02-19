require 'open-uri'

class ActorController < ApplicationController
  def show
    url = "http://www.imdb.com/find?q=#{params[:query].split.join('+')}"
    doc = Nokogiri::HTML(open(url))
    images = doc.css('td.result_text a')
    @url = images.map {|i| i.get_attribute('href')}.select.first {|u| u.include?('name')}
  end
end
