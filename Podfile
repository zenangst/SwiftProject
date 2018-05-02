source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'

use_frameworks!
inhibit_all_warnings!

# Frameworks
pod 'Blueprints'
pod 'Differific'
pod 'Family'
pod 'Imaginary'
pod 'UserInterface'

# Utilities
pod 'Sourcery'
pod 'R.swift', :configuration => 'Debug'
pod 'SwiftLint', :configuration => 'Debug'
pod 'SwiftFormat/CLI', :configuration => 'Debug'

target 'SwiftProject Staging'
target 'SwiftProject Production'

target 'SwiftProject Tests' do
  inherit! :search_paths
end
