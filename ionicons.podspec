Pod::Spec.new do |s|
  s.name         = "IoniconsSwift"
  s.module_name  = "IoniconsSwift"
  s.version      = "2.0.1"
  s.summary      = "Swift port of ionicons-iOS. Allows you to easily use ionicons in your Swift projects."
  s.homepage     = "https://github.com/tomsterritt/ionicons-swift"
  s.license      = { :type => 'MIT', :file => 'ionicons/LICENSE' }
  s.author       = { "Tom Sterritt" => "tom@sterri.tt" }
  s.source       = { :git => "https://github.com/tomsterritt/ionicons-swift.git", :tag => "2.0.1" }
  s.platform     = :ios, '8.0'
  s.source_files = 'ionicons/**/*.{h,m}'
  s.resources    = "ionicons/ionicons.bundle"
  s.requires_arc = true
end
