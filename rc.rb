# Overall challenge:
# make a ruby object using the ruby hash

# pseudocode
# special_hash[:method] = p 'chocolate'

# special_hash[:method]
# 'chocolate'

# challenge 1 - store a method as a value in the hash, and
# execute the method when the key is accessed

# challenge 2 - our ruby object can also store data
#challenge 3 - our method can be aware of the key its being
# stored in, and the entire hash its being stored in
#
# special_hash[:blah] = p key, p hash
# :blah
# {blah: :method}


class RubyObject < Hash

  def [] (key)
    if super.is_a?(Proc)
      case super.arity
      when 0 then super.call
      when 1 then super.call(self)
      when 2 then super.call(self, key)
      end
    else
      super
    end
  end

end

awesome = SuperHash.new
awesome[:key] = -> {p 'bananas'}
p '*' * 10
awesome[:key]


p '!' * 10
awesome[:data] = 'string'
p awesome[:data]

p '?' * 10
awesome[:display] = ->(hash, key){p key; p hash}
awesome[:display]

obj = {greet: function() {

  }}
