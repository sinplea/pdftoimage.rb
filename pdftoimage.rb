require 'RMagick'

pdf = Magick::ImageList.new("pdfs/story.pdf") {
  self.quality = 100
  self.density = 144
}

pdf.each_with_index do |page_img, i|
  page_img.write "images/#{i}_pdf_page.jpg"
end