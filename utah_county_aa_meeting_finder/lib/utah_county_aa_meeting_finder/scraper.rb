class UtahCountyAaMeetingFinder::Scraper

  def scrape_index_page(index_url)

  doc = Nokogiri::HTML(open(index_url))
  meetings = doc.css("body tr tr")
end

def make_meetings(url)
 self.scrape_index_page(url).each do |meeting|
  UtahCountyAaMeetingFinder::Meetings.new_meetings(meeting)
    end
  end
end
