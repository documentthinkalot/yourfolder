class Scraping
  require 'mechanize'
  def self.get_place
    agent = Mechanize.new
    page = agent.get('https://gist.github.com/kobaatsu/a7a179ad0490c43f4d6d')
    elements = page.search('.blob-code')
    elements.each do |ele|
      name = ele.inner_text
      place = Place.new(name: name)
      place.save
    end
  end

  def self.get_industry
    agent = Mechanize.new
    page = agent.get('https://lifeworker.jp/job-category/jobcategory-and-business-summary.html')
    elements = page.search('td')
    elements.each do |ele|
      name = ele.inner_text
      industry = Industry.new(name: name)
      industry.save
    end
  end

  def self.get_subindustry
    agent = Mechanize.new
    page = agent.get('https://lifeworker.jp/job-category/jobcategory-and-business-summary.html')
    elements = page.search('td')
    elements.each do |ele|
      name = ele.inner_text
      subindustry = Subindustry.new(name: name)
      subindustry.save
    end
  end

  def self.get_occupation
    agent = Mechanize.new
    page = agent.get('https://lifeworker.jp/job-category/jobcategory-and-business-summary.html')
    elements = page.search('td')
    elements.each do |inner|
      inner = inner.inner_text.split("、")
      inner.each do |ele|
        array = []
        ele.each_line{|line| array << line }
        array.each do |name|
          occupation = Occupation.new(name: name.chomp)
          occupation.save
        end
      end
    end
  end

  def self.get_suboccupation
    agent = Mechanize.new
    page = agent.get('https://lifeworker.jp/job-category/jobcategory-and-business-summary.html')
    elements = page.search('td')
    elements.each do |inner|
      inner = inner.inner_text.split("、")
      inner.each do |ele|
        array = []
        ele.each_line{|line| array << line }
        array.each do |name|
          suboccupation = Suboccupation.new(name: name.chomp)
          suboccupation.save
        end
      end
    end
  end
end
