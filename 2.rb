code = <<-RUBY
def f1
  10.times do
    return 'hello'
  end
  puts 'exit'
end

def f2
  10.times do
    break 'hello'
  end
  puts 'exit'
end
RUBY

puts RubyVM::InstructionSequence.compile(code).disasm
