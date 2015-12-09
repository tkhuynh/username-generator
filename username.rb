# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
	first.gsub!(/[^a-z]/i, "")
	last.gsub!(/[^a-z]/i, "")
  if last == "" or first == ""
  	return nil
  else
  	(first[0] + last).downcase
  end
end

def format_year (string)
	string = string.to_s
	if string.length != 4
		return nil
	else
		string.slice(/\d{2}$/)
	end
end

def check_privilege (num = 0) 
	level = { 
		0 => "user",
		1 => "seller",
		2 => "manager",
		3 => "admin"
	}
	if num > 3 
		num = 3
	end
	return level[num.floor]
end

def user_type_prefix (num)
	if num == 0
		return ""
	else
		return check_privilege(num) + "-"
	end
end

def build_username (first, last, year, level = 0)
  user_type_prefix(level) + format_name(first, last) + format_year(year)
end

def generate_username(first, last, year)
	format_name(first, last) + format_year(year) + "_1"
end

generate_username("trung", "huynh", 1234)
