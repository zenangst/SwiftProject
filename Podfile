source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
inhibit_all_warnings!

# Frameworks
pod 'Blueprints'
pod 'Differific'
pod 'Family'
pod 'Imaginary'
pod 'UserInterface'
pod 'Vaccine'

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
