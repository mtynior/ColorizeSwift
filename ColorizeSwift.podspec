Pod::Spec.new do |s|

  s.name         = "ColorizeSwift"
  s.version      = "1.1.0"
  s.summary      = "Terminal string styling for Swift"

  s.homepage     = "https://github.com/mtynior/ColorizeSwift"
  s.license      = "MIT"
  
  s.author             = { "Michał Tynior" => "michal@tynior.com" }
  s.social_media_url   = "http://twitter.com/mtynior"

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source       = { :git => "https://github.com/mtynior/ColorizeSwift.git", :tag =>  s.version }
  s.source_files  = "Source/*.swift"
 
  s.requires_arc = true

end
