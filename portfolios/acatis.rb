require 'rubygems'
require 'mechanize'

$downloadFolder = '../downloads/'
$fileName = 'ACATIS-IfK-Value-Renten-UI-Anteilkl.-A.pdf'

def downloadFile
	agent = Mechanize.new
	agent.get('http://www.acatis.de/de/investmentfonds/rentenfonds/acatis-ifk-value-renten-ui/') do |page|
		pdfAnchor = page.search('.DonwloadsContentzeile > td:nth-child(1) a')
						.first

		if pdfAnchor.nil?
			puts 'Download link not found...'
			return
		end

		agent.click(pdfAnchor)
			 .save($downloadFolder + $fileName)
	end
end

downloadFile