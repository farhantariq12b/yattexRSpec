
include Yattex

namespace :yattex do
  desc 'Run Yattex'
  task runYattex: :environment do
    runTests
  end
end