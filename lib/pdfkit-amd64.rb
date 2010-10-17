require 'pdfkit'
require 'pdfkit-amd64/find_binary'

PDFKit.configure do |config|
  unless File.executable?(config.wkhtmltopdf)
    config.wkhtmltopdf = PDFKit::AMD64.find_binary
  end
end
