stock_dict = { 'GM' => 'General Motors',
 'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }

purchases = [ [ 'GM', 100, '10-sep-2001', 48 ],
 [ 'CAT', 100, '1-apr-1999', 24 ],
 [ 'GM', 200, '1-jul-1998', 56 ] ]

for purchase in purchases
	puts "#{stock_dict[purchase[0]]} - Total Stock Purchase: $#{purchase[1]*purchase[3]}" 
end

# Create new hash to hold stock info
blocks_by_ticker = Hash.new

# Input stock info into hash by block with ticker as key
for purchase in purchases
	if blocks_by_ticker.has_key?(purchase[0])
		blocks_by_ticker[purchase[0]].push([purchase[1]*purchase[3], purchase[2]])
	else
		stock_block = Array.new
		stock_block.push([purchase[1]*purchase[3], purchase[2]])
		blocks_by_ticker[purchase[0]] = stock_block
	end
end


# Print stock report
puts "Stock Report:"
blocks_by_ticker.each do |key, value|
	output_string = "Stock: #{stock_dict[key]} (#{key}) - "
	value.each do |i|
		output_string << "Purchase date: #{i[1]}, Value: $#{i[0]}; "
	end

	puts output_string
end


# blocks_by_ticker = Hash.new

# for purchase in purchases
# 	if blocks_by_ticker.has_key?(purchase[0])
# 		blocks_by_ticker[purchase[0]].push(purchase[1]*purchase[3])
# 	else
# 		blocks_by_ticker[purchase[0]] = [purchase[1]*purchase[3]]
# 	end
# end

# puts blocks_by_ticker


# for i in blocks_by_ticker
# 	puts "For #{i}"
# end

# blocks_by_ticker = {}

# for purchase in purchases
# 	if blocks_by_ticker.has_key?(purchase[0])
# 		blocks_by_ticker[purchase[0]] += purchase[1]*purchase[3]
# 	else
# 		blocks_by_ticker[purchase[0]] = purchase[1]*purchase[3]
# 	end
# end

# puts blocks_by_ticker


# puts purchases[0][1]

# puts purchases[0][0]

# puts stock_dict['GM']

# puts stock_dict[purchases[0][0]]