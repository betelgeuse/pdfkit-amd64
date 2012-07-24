require 'rbconfig'

class PDFKit
  module AMD64
    def self.find_binary
      if (defined?(RbConfig) ? RbConfig : Config)::CONFIG['arch'] =~ /x86_64-linux/i
        binary = File.join(File.dirname(__FILE__), '../../bin/wkhtmltopdf-amd64')
      else
        binary = `which wkhtmltopdf 2> /dev/null`.strip
        if $? != 0
          raise "No wkhtmltopdf binary found in your system. Please install wkhtmltopdf."
        end
      end
      binary
    end
  end
end
