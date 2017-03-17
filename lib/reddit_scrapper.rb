require 'open-uri'

module RedditScrapper
  
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.reddit.com/"))

    entries = doc.css('.entry')
    entries.each do |entry|
      title = entry.css('p.title > a').text
      link = entry.css('p.title > a')[0]['href']
      name = entry.css('p.tagline > a.subreddit')[0]['href']
      Entry.create!(title: title, link: link)
      Tag.create!(name: name)

    end
  end

end