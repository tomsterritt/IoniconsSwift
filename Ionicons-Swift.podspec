Pod::Spec.new do |s|
  s.name         = "Ionicons-Swift"
  s.version      = "2.0.2"
  s.summary      = "Swift port of ionicons-iOS. Allows you to easily use ionicons in your Swift projects."
  s.homepage     = "https://github.com/tomsterritt/IoniconsSwift"
  s.license      = { :type => 'MIT', :file => 'ionicons/LICENSE.md' }
  s.author       = { "Tom Sterritt" => "tom@sterri.tt" }
  s.source       = { :git => "https://github.com/tomsterritt/IoniconsSwift.git", :tag => "2.0.2" }
  s.platform     = :ios, '8.0'
  s.source_files = 'ionicons/*.swift'
  s.resources    = "ionicons/ionicons.bundle"
  s.requires_arc = true
end
