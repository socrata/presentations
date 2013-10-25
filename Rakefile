namespace :preso do
  task :serve, :port do |t, args|
    port = args[:port] || 4000
    `jekyll serve --watch --port #{port} --baseurl "/presentations"`
  end

  task :build, :port do |t, args|
    `jekyll build`
  end
end
