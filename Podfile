# Uncomment this line to define a global platform for your project
platform :osx, '11.0'

inhibit_all_warnings!

source 'https://github.com/CocoaPods/Specs.git'

project 'Hammerspoon', 'Profile' => :debug

target 'Hammerspoon' do
pod 'ASCIImage', '1.0.0'
pod 'CocoaLumberjack', '3.8.2'
pod 'CocoaAsyncSocket', '7.6.5'
pod 'CocoaHTTPServer', :git => 'https://github.com/Hammerspoon/CocoaHTTPServer.git'
pod 'PocketSocket/Client', '1.0.1'
pod 'Sentry', :git => 'https://github.com/getsentry/sentry-cocoa.git', :tag => '8.17.2'
pod 'Sparkle', '2.5.1', :configurations => ['Release']
pod 'MIKMIDI', '1.7.1'
pod 'SocketRocket', '0.7.0'
pod 'ORSSerialPort', '2.1.0'
pod 'F53OSC', :git => 'https://github.com/Figure53/F53OSC.git', :tag => '1.2.0'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
   puts "Enabling assertions in #{target.name}"
   target.build_configurations.each do |config|
     config.build_settings['ENABLE_NS_ASSERTIONS'] = 'YES'
     if ['10.6', '10.7', '10.8', '10.9', '10.10', '10.11', '10.15', '11.0', '11.1', '11.2', '11.3', '11.4', '11.5'].include? config.build_settings['MACOSX_DEPLOYMENT_TARGET']
       config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '12.0'
     end
   end
   puts "Removing hard-coded architecture in #{target.name}"
   target.build_configurations.each do |config|
     config.build_settings.delete 'ARCHS'
   end
  end
end
