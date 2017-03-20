class EntriesController < ApplicationController

	def index 
		@entries = Entry.all 
		@tags = Tag.all
	end

  def show
    @entry = Entry.find(params[:id])
  end

	def scrape

    RedditScrapper.scrape

    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entries were successfully scraped.' }
      format.json { entriesArray.to_json }
    end
  end



end
