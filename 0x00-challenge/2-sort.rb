###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
	index = 0
    len = result.size

    while !is_inserted && index < len do
        if result[index] < i_arg
		index += 1
        else
            result.insert(index, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end


puts result
