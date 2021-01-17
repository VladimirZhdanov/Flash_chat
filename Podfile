# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'Flash Chat' do

# Pods for Flash Chat
pod 'IQKeyboardManagerSwift'


# Add the pods for any other Firebase products you want to use in your app
# For example, to use Firebase Authentication and Cloud Firestore
pod 'Firebase/Auth'
pod 'Firebase/Firestore'

end

post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end
end
