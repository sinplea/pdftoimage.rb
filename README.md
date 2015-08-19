# pdftoimage.rb
A short simple script to covert a pdf to images using ruby gem rmagick 

# Why
This simple script can be used to convert pdf files to images. This task can easily be used for web appliction with rails implementation. In fact, I will probably expand on this script a little more in the near future and include rails implementation for dynamic pdf conversions.

# Usage
```
require 'RMagick'

#Get desired file from the pdfs directory
pdfPost = Magick::ImageList.new("pdfs/story.pdf") 

#Optional bracket. Ups conversion time. Helps quality.
{ 
  self.quality = 100
  self.density = 144
} 

#Prints each converted page to the image directory
pdfPost.each_with_index do |img, i|
  img.write "images/#{i}_pdf_page.jpg"
end

```
