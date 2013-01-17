#coding:utf-8

puts "waiting......."

require 'thinreports'

report = ThinReports::Report.create :layout => 'format' do
  start_new_page
  page.item(:text1).value('テスト１')
  page.item(:text2).value('テスト２')

end

report.generate_file 'output.pdf'

puts "Done!"
