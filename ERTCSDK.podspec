#
#  Be sure to run `pod spec lint TestERTCSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "ERTCSDK"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of ERTCSDK."
  spec.description  = <<-DESC
  TODO: Add long description of the pod here.
                   DESC

  spec.homepage     = "https://github.com/Ezviz-Open/ERTCSDK-iOS.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "jinlongyu23" => "open-team@ezvizlife.com" }

  spec.platform     = :ios, "12.0"
  
  spec.ios.deployment_target = "12.0"

  spec.resources = "Resources/*"
  spec.source       = { :git => "https://github.com/Ezviz-Open/ERTCSDK-iOS.git", :tag => "#{spec.version}" }
 spec.libraries = 'icucore', 'c', 'z', 'iconv', 'bz2', 'c++', 'resolv'

  spec.source_files = "ERTCSDK/ERTC.framework/Headers/*.{h,m}"
  spec.framework  = "Foundation", "UIKit"
  spec.vendored_frameworks = 'ERTCSDK/ERTC.framework'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.requires_arc = true
end
