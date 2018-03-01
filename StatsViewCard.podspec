
Pod::Spec.new do |s|


  s.name         = "StatsViewCard"
  s.version      = "1.0.0"
  s.summary      = "Cards view framework"

  s.description  = "This is a framework for stats cardview"

  s.homepage     = "https://github.com/nanirocks125/StatsView"

  s.license      = "MIT"

s.license = { :type => 'MIT', :text => <<-LICENSE
Copyright 2018
Permission is granted to...
LICENSE
}
  s.author             = { "Manikanta" => "nanirocks125@gmail.com" }

   s.platform     = :ios, "11.0"


  s.source       = { :git => "https://github.com/nanirocks125/StatsView.git", :tag => "1.0.0" }


  s.source_files  = "StatsCard/**/*"


end
