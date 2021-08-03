#
#  Be sure to run `pod spec lint FunctionalSwift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "FunctionalSwift"
  spec.version      = "2.0.0"
  spec.swift_version = '5.1'

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.15'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target = '9.0'

  spec.summary      = "YooMoney Functional Swift library. Monads and shit..."
  spec.description  = <<-DESC
  A set of "functionally" styled data structures and functions one can use to make his/her code straight forward
  and simple. Use at your own risk. Author: Alexander Zalutskiy.
                   DESC

  spec.homepage     = "https://github.com/starxor/functional-swift"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Stanislav Starzhevskii" => "sstarzhevskii@yamoney.ru" }
  spec.source       = { :git => "https://github.com/starxor/functional-swift.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "Sources/FunctionalSwift/**/*"

  #spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"



  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

spec.library   = "FunctionalSwift"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
