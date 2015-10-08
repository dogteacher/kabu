require "./lib/stock_data_getter"


#東証銘柄をダウンロードする
#名証銘柄をダウンロードしたければ　market = :n とする
#福証　なら market= :f 札証なら market = :n
#

from = "1983/01/04" #get_price_date.のfromと同じ日付に
to = Date.today.to_s
market = :t
ydg = StockDataGetter.new(from,to,market)

(1300..9999).each do |code|
	ydg.update_price_data(code)
end
