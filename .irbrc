IRB.conf[:EVAL_HISTORY] = 100
IRB.conf[:LOAD_MODULES] += %w[stringio enumerator]
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:USE_READLINE] = true

require "awesome_print"
AwesomePrint.irb!
