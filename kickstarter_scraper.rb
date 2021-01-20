# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("fixtures/kickstarter.html")
  kickstarter = Nokogiri::HTML(html)
      # projects: kickstarter.css("li.project.grid_4")
      # title: project.css("h2.bbcard_name strong a").text
  project = kickstarter.css("li.project.grid_4")
  names = project.css("h2.bbcard_name strong a")text

  names.each do |name| puts "- #{name} "
  end

  binding.pry
end

create_project_hash
