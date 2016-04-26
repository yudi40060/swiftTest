Pod::Spec.new do |s|
s.name             = "uzai+test"
s.version          = "0.0.1"
s.summary          = "The open source fonts for uzai apps + test."
s.homepage         = https://github.com/yudi40060/swiftTest"
s.license          = 'Code is MIT, then custom font licenses.'
s.author           = { "Orta" => "orta.therox@gmail.com" }
s.source           = { :git => "https://github.com/yudi40060/swiftTest.git", :tag => s.version }
s.social_media_url = 'https://twitter.com/artsy'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Pod/Classes'
s.resources = 'Pod/Assets/*'

s.frameworks = 'UIKit', 'CoreText'
s.module_name = 'uzai+test'
end