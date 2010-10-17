require 'pdfkit-amd64/find_binary'

describe PDFKit::AMD64 do
  it "should find the binary inside the gem" do
    Config::CONFIG.should_receive(:[]).with('arch').and_return('x86_64-linux')
    binary = PDFKit::AMD64.find_binary
    File.executable?(binary).should be_true
  end
end
