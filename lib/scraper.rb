class Scraper

  def self.scrape_website_poses
     doc = Nokogiri::HTML(open("https://www.self.com/gallery/de-stressing-yoga-poses-to-help-you-calm-down"))
     
     names = doc.css("figcaption h2.hed").map do |pose_el|
        pose_el.text
     end
     
     descriptions = doc.css("blockquote.caption div").map do |caption_el|
       caption_el.text
     end
     
     #3 Upon creating every YogaPose instance, associate with a random Yogi from the Yogi array 
    Yogi.make_three_yogis 
    
     names.each_with_index do |name, index|
       random_yogi = Yogi.all.sample
       YogaPose.new(name, descriptions[index], random_yogi)
     end
  end
end