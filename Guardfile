coffee_opts = {
  all_on_start: true,
  input: 'app/assets/coffee',
  output: 'public/js',
  bare: true
}

sass_opts = {
  all_on_start: true,
  input: 'app/assets/scss',
  output: 'public/css'
}

group :assets do
  guard 'coffeescript', coffee_opts
  guard 'sass', sass_opts
end
