class EntriesController < ApplicationController

	def index 
		@entries = Entries.all 
	end

	def scrape

    RedditScrapper.scrape

    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entries were successfully scraped.' }
      format.json { entriesArray.to_json }
    end
  end
		


end
