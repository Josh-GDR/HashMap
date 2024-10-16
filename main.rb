require './lib/HashMap.rb'

hash = HashMap.new

system 'clear'

hash.set('apple', 'red')
hash.set('banana', 'yellow')
hash.set('carrot', 'orange')
hash.set('dog', 'brown')
hash.set('elephant', 'gray')
hash.set('frog', 'green')
hash.set('grape', 'purple')
hash.set('hat', 'black')
hash.set('ice cream', 'white')
hash.set('jacket', 'blue')
hash.set('kite', 'pink')
hash.set('lion', 'golden')
puts '|--- INITIAL SIZE ---|'
puts hash.length

puts '|--- getters ---|'
puts hash.get('apple')
puts hash.get('banana')
puts hash.get('carrot')
puts hash.get('dog')
puts hash.get('elephant')
puts hash.get('frog')
puts hash.get('grape')
puts hash.get('hat')
puts hash.get('ice cream')
puts hash.get('jacket')
puts hash.get('kite')
puts hash.get('lion')

puts hash.get('li')

puts '|--- #HAS? ---|'

puts hash.has?('li')
puts hash.has?('apple')

puts '|--- REMOVE ---|'

puts hash.remove('apple')
puts hash.has?('apple')

puts '|--- VALUES ---|'
puts hash.values

puts '|--- ENTRIES ---|'
puts hash.entries

puts '|--- FINAL SIZE ---|'
puts hash.length
