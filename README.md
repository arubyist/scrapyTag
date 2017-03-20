# Basic Scraper App

### This currently scrapes Reddit's front page. 

It uses [whenever's gem](https://github.com/javan/whenever)

You can set whenever's schedule according to your needs. As of now for this basic project, it currently scrapes once a day at 11 am. 

The code is in `config/schedule`' page

`
every 1.day, :at => '11:00am' do
	runner "RedditScrapper.scrape", :environment => "development"
end
`

Please note that this webscraping project is for "educational" value as Reddit offers its own API. Please always check the site's TOS for their take on webscraping, and/or if they offer an API. This is not a project meant for production value at all. It is meant to learn about [Nokogiri](https://github.com/sparklemotion/nokogiri), and webscraping. That's all.

Here is the front's page screenshot: 

![Frontpage](http://i64.tinypic.com/2a4qwhs.jpg)

In regards to CSS, this app uses [milligram's css framework](https://milligram.github.io/) 




