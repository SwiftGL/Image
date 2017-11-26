Pod::Spec.new do |s|
  s.name             = 'Image'
  s.version          = '2.1.0'
  s.summary          = 'SwiftGL Image Library'
  s.description      = <<-DESC
The SwiftGL image library allows for platform independent loading of images. Currently BMP, PNG, and GIF are supported.
                       DESC
  s.homepage         = 'https://github.com/SwiftGL/Image'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AE9RB' => 'dturnbull@gmail.com' }
  s.source           = { :git => 'https://github.com/SwiftGL/Image.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.source_files     = 'Sources/SGLImage/*.swift'
end
