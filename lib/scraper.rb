class Scraper

def self.scrape_website_poses
    doc = Nokogiri::HTML(open("https://www.self.com/gallery/de-stressing-yoga-poses-to-help-you-calm-down"))
    names = doc.css("figcaption h2.hed").map do |pose_el|
       pose_el.text
    end
    descriptions = doc.css("blockquote.caption div").map do |caption_el|
      caption_el.text
    end
    
    names.each_with_index do |name, index|
      YogaPose.new(name, descriptions[index])
      #binding.pry
    end
    
  end
  
end