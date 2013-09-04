"one".to_sym
"1".to_i
"I like cats, cat".gsub(/cat/, 'dawg')
"stuff\nthings" each_line {|line| puts "My #{line}" }

my_book = {title: "Programming Ruby" }
my_book[:title]

12345.send(:to_s)
 

array = [nil, 1, "two", Object]
hash = { 1 => 'one', 'two' => 2, Object.new =>
  lambda { |x| x + 1 }, nil => nil }


array[0]        # => nil
array[1]        # => 1


    hash.keys       # => [1, "two", #<Object:0x00...>, nil]
    hash.values     # => ["one", 2, #<Proc:0x007...>, nil]
    hash[1]         # => "one"
    hash['two']     # => 2
    hash[:nada]     # => nil

numbers = [1, 2, 3]
numbers.first                       # => 1
numbers.map { |x| x * 10 }          # => [10, 20, 30]
numbers.empty?                      # => false
numbers.include? 3                  # => true
numbers.find_all { |x| x > 2 }      # => [3]
numbers.any? { |x| x > 2 }          # => true
%w[one two three]                   # => ['one', 'two', 'three']
%i[one two three]                   # => [:one, :two, :three]

def things(*all_the_things)
  puts "#{all_the_things.class}, size #{all_the_things.size}"
end

things                      # => "Array, size 0"
things('cat', 'dog')        # => "Array, size 2"



    ef things(**named_things)
      puts "#{named_things.class}, size #{named_things.size}"
    end

    things name1: 'cat'                     # => "Hash, size 1"
    things(name1: 'cat', name2: 'dog')      # => "Hash, size 2"


