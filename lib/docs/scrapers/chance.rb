module Docs
  class Chance < UrlScraper
    self.name = 'Chance.js'
    self.slug = 'chance'
    self.type = 'underscore'
    self.version = '0.8.0'
    self.base_url = 'http://chancejs.com/'
    self.links = {
      home: 'http://chancejs.com/',
      code: 'https://github.com/victorquinn/chancejs'
    }

    html_filters.push 'chance/clean_html', 'chance/entries', 'title'

    options[:title] = 'Chance.js'
    options[:container] = '.container'
    options[:skip_links] = true

    options[:attribution] = <<-HTML
      &copy; 2013&ndash;2015 Victor Quinn<br>
      Licensed under the MIT License.
    HTML
  end
end
