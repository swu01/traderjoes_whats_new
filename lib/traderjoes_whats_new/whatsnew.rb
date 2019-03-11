class TraderjoesWhatsNew::WhatsNew
  attr_accessor :name, :date, :description, :url

  def self.today
    # should return instances of WhatsNew
    # scrape traderjoes.com and return whats new based on that data
    scrape_whatsnew
  end

  def self.scrape_whatsnew
    whatsnew = []
    whatsnew << scrape_traderjoes

    # go to traderjoes.com, find products
    # extract properties
    # instantiate a product
    whatsnew
    end

  def self.scrape_traderjoes
    doc = Nokogiri::HTML(open("https://www.traderjoes.com/digin/category/What's%20New"))
    # name = doc.css("article h1")
    # date = doc.css("article .timestamp")
    # description = doc.css("aricle .p")
    # url =
  end
end
