class TraderjoesWhatsNew::WhatsNew
  attr_accessor :name, :date, :description, :url

  def self.today
    # should return instances of WhatsNew
    # scrape traderjoes.com and return whats new based on that data
    scrape_whatsnew
  end

  def self.scrape_whatsnew
    whatsnew = []
    whatsnew << self.scrape_traderjoes
    whatsnew
    end

  def self.scrape_traderjoes
    doc = Nokogiri::HTML(open("https://www.traderjoes.com/digin/category/What's%20New"))
    whatsnew = self.new
    # whatsnew = self.new
    # #main page = doc.css("#contentbegin").text
    whatsnew.name = doc.css("#contentbegin h1").first.text
    whatsnew.date = doc.css(".article .timestamp strong").first.text
    # whatsnew.url = doc.url(".article a href").text
    # whatsnew.description = true
    # whatsnew.url = true
    #description = doc.css("article .p")
    # lists all products = doc.css("article h1")
    whatsnew
  end
end
