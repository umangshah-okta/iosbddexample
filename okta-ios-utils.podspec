#
# Be sure to run `pod lib lint okta-ios-utils.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "okta-ios-utils"
  s.version          = "0.2.0"
  s.summary          = "Common utility classes that can be shared among Okta iOS apps"
  s.description      = <<-DESC
                       For details desc
                       DESC
  s.homepage         = "https://github.com/okta/okta-ios-utils"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Chandra Shirashyad" => "chandra.shirashyad@okta.com" }
  s.source           = { :git => "git@github.com:okta/okta-ios-utils.git",  :tag => '0.2.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/*.{h,m}'

end
