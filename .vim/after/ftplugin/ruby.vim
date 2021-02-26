let b:ale_linters = ['ruby', 'srb', 'rubocop']

call ale#Set('ruby_sorbet_executable', 'bundle')
call ale#Set('ruby_sorbet_enable_watchman', 1)
