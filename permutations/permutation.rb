module Permutations
  def self.equal(string1, string2)
    return false if string1.length != string2.length
    indicies = []
    (0..(string2.length - 1)).each {|i| indicies.push(i) }

    string1.each_char do |chr1|
      for i in 0..(indicies.length - 1) do
        if chr1 == string2[indicies[i]]
          indicies.delete_at(i)
          break
        end
      end
    end

    indicies.empty?
  end
end

puts Permutations.equal("jhon", "john")
puts Permutations.equal("john", "johnny")
puts Permutations.equal("asdffdsa", "asdfasdf")
puts Permutations.equal("aassddff", "fdsafdsa")
puts Permutations.equal("aassddff", "jkl;;klj")
