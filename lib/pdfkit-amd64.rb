require 'pdfkit'
require 'rbconfig'

module PDFKit
  module AMD64
    def self.find_binary
      if Config::CONFIG['host_os'] == /x86_64-linux/i
        dir = File.basename(__FILE__)
        binary = File.expand_path(dir, '../bin/wkhtmltopdf-amd64')
      else
        binary = `which wkhtmltopdf 2> /dev/null`.strip
        if $? != 0
          raise "No wkhtmltopdf binary found in your system. Please install wkhtmltopdf."
        end
      end
    end
  end
end

PDFKit.configure do |config|
  unless File.executable?(config.wkhtmltopdf)
    config.wkhtmltopdf = PDFKit::AMD64.find_binary
  end
end
