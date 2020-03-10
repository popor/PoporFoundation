#
# Be sure to run `pod lib lint PoporFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'PoporFoundation'
    s.version          = '1.12'
    s.summary          = '1.Some safe function with runtime, NSArray, NSDictionary, NSURL etc. 2.Some useful tools'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    #  s.description      = <<-DESC
    #TODO: Add long description of the pod here.
    #                       DESC
    
    s.homepage         = 'https://github.com/popor/PoporFoundation'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'popor' => '908891024@qq.com' }
    s.source           = { :git => 'https://github.com/popor/PoporFoundation.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.requires_arc = true
    
    s.ios.frameworks         = 'Foundation', 'UIKit'
    s.tvos.frameworks        = 'Foundation', 'UIKit'
    s.osx.frameworks         = 'Foundation', 'AppKit'

    s.ios.deployment_target  = '8.0' # minimum SDK with autolayout
    s.osx.deployment_target  = '10.10' # minimum SDK with autolayout
    s.tvos.deployment_target = '9.0' # minimum SDK with autolayout
    
   
    # s.frameworks = 'UIKit', 'Foundation'
    # s.public_header_files = 'Pod/Classes/**/*.h'
    
    s.source_files = 'PoporFoundation/Classes/PoporFoundation.h'
    s.public_header_files = 'PoporFoundation/Classes/PoporFoundation.h'
    
    # base 0 : Os, UIKit和APPKit兼容宏
    s.subspec 'Os' do |ss|
      
      ss.source_files = 'PoporFoundation/Classes/Os/*.h'
    end
    
    # base 1 : Prefix
    s.subspec 'Prefix' do |ss|
      ss.ios.dependency  'PoporFoundation/Os'
      ss.osx.dependency  'PoporFoundation/Os'
      ss.tvos.dependency 'PoporFoundation/Os'
      
      ss.source_files = 'PoporFoundation/Classes/Prefix/*.h'
    end
    
    # base 2 : runtime
    s.subspec 'NSObject' do |ss|
        ss.source_files = 'PoporFoundation/Classes/NSObject/*.{h,m}'
    end
    s.subspec 'KVO' do |ss|
        ss.source_files = 'PoporFoundation/Classes/KVO/*.{h,m}'
    end
    
    # base 3 : NSString
    s.subspec 'NSString' do |ss|
        ss.ios.dependency  'PoporFoundation/Os'
        ss.osx.dependency  'PoporFoundation/Os'
        ss.tvos.dependency 'PoporFoundation/Os'
        
        ss.ios.dependency  'PoporFoundation/NSObject'
        ss.osx.dependency  'PoporFoundation/NSObject'
        ss.tvos.dependency  'PoporFoundation/NSObject'
        
        ss.ios.dependency  'PoporFoundation/Prefix'
        ss.osx.dependency  'PoporFoundation/Prefix'
        ss.tvos.dependency 'PoporFoundation/Prefix'
        
        ss.source_files = 'PoporFoundation/Classes/NSString/*.{h,m}'
    end
    
    s.subspec 'NSArray' do |ss|
        ss.ios.dependency  'PoporFoundation/NSObject'
        ss.ios.dependency  'PoporFoundation/Prefix'
        
        ss.osx.dependency  'PoporFoundation/NSObject'
        ss.osx.dependency  'PoporFoundation/Prefix'
        
        ss.tvos.dependency 'PoporFoundation/NSObject'
        ss.tvos.dependency 'PoporFoundation/Prefix'
        
        ss.source_files = 'PoporFoundation/Classes/NSArray/*.{h,m}'
    end
    s.subspec 'NSAssistant' do |ss|
        ss.ios.dependency  'PoporFoundation/Os'
        ss.osx.dependency  'PoporFoundation/Os'
        ss.tvos.dependency 'PoporFoundation/Os'
        
        ss.ios.dependency  'PoporFoundation/Prefix'
        ss.osx.dependency  'PoporFoundation/Prefix'
        ss.tvos.dependency 'PoporFoundation/Prefix'

        ss.source_files = 'PoporFoundation/Classes/NSAssistant/*.{h,m}'
    end
    s.subspec 'NSData' do |ss|
        ss.source_files = 'PoporFoundation/Classes/NSData/*.{h,m}'
    end
    s.subspec 'NSDate' do |ss|
        ss.ios.dependency  'PoporFoundation/NSString'
        ss.osx.dependency  'PoporFoundation/NSString'
        ss.tvos.dependency 'PoporFoundation/NSString'

        ss.source_files = 'PoporFoundation/Classes/NSDate/*.{h,m}'
    end
    
    s.subspec 'NSDictionary' do |ss|
        ss.ios.dependency  'PoporFoundation/NSObject'
        ss.ios.dependency  'PoporFoundation/Prefix'
        
        ss.osx.dependency  'PoporFoundation/NSObject'
        ss.osx.dependency  'PoporFoundation/Prefix'
        
        ss.tvos.dependency 'PoporFoundation/NSObject'
        ss.tvos.dependency 'PoporFoundation/Prefix'
        
        ss.source_files = 'PoporFoundation/Classes/NSDictionary/*.{h,m}'
    end
    
    s.subspec 'NSURL' do |ss|
        ss.ios.dependency  'PoporFoundation/NSObject'
        ss.osx.dependency  'PoporFoundation/NSObject'
        ss.tvos.dependency 'PoporFoundation/NSObject'
        
        ss.ios.dependency  'PoporFoundation/NSString'
        ss.osx.dependency  'PoporFoundation/NSString'
        ss.tvos.dependency 'PoporFoundation/NSString'
        
        ss.source_files = 'PoporFoundation/Classes/NSURL/*.{h,m}'
    end
    
    s.subspec 'NSDecimalNumber' do |ss|
        ss.ios.dependency  'PoporFoundation/NSObject'
        ss.osx.dependency  'PoporFoundation/NSObject'
        ss.tvos.dependency 'PoporFoundation/NSObject'
        
        ss.source_files = 'PoporFoundation/Classes/NSDecimalNumber/*.{h,m}'
    end
    
    s.subspec 'NSFileManager' do |ss|
        ss.source_files = 'PoporFoundation/Classes/NSFileManager/*.{h,m}'
    end
end
