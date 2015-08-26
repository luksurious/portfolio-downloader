require 'rubygems'
require 'mechanize'

$downloadFolder = '../downloads/'
$fileName = 'Concord-low-eVaR-Global-Anteilkasse-I.pdf'

def downloadFile
	agent = Mechanize.new
	agent.get('http://www.universal-investment.de/Publikumsfonds/Fonds-Selektor/FondsDetails.aspx?fundID=1171217378094098861&tabID=4') do |page|
		pdfAnchor = page.search('.docLink[href*=Factsheet]')
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