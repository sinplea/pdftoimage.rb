require 'RMagick'

#Get desired file from the pdfs directory
pdfPost = Magick::ImageList.new("pdfs/story.pdf") { 
  self.quality = 100
  self.density = 144
} #Optional bracket. Ups conversion time. Helps quality.

pdfPost.each_with_index do |img, i|
  img.write "images/#{i}_pdf_page.jpg"
end
