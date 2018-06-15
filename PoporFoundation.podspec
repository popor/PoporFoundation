#
# Be sure to run `pod lib lint PoporFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'PoporFoundation'
    s.version          = '0.0.1'
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
    s.ios.deployment_target = '8.0'
    
    # s.source_files = 'PoporFoundation/Classes/**/*'
    
    # s.resource_bundles = {
    #   'PoporFoundation' => ['PoporFoundation/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'Foundation'
    # s.dependency 'AFNetworking', '~> 2.3'
    
    s.source_files = 'PoporFoundation/Classes/PoporFoundation.h'
    
    # base 1 : runtime
    s.subspec 'NSObject' do |ss|
        ss.public_header_files = 'PoporFoundation/Classes/NSObject+Swizzling.h'
        ss.source_files = 'PoporFoundation/Classes/NSObject*.{h,m}'
    end
    
    # base 2 : prefix
    s.subspec 'prefix' do |ss|
        ss.public_header_files = 'PoporFoundation/Classes/SizePrefix.h', 'PoporFoundation/Classes/ColorPrefix.h', 'PoporFoundation/Classes/FunctionPrefix.h'
        ss.source_files = 'PoporFoundation/Classes/BlockMacroDefines.{h}', 'PoporFoundation/Classes/ColorPrefix.{h}', 'PoporFoundation/Classes/FontPrefix.{h}', 'PoporFoundation/Classes/FunctionPrefix.{h}', 'PoporFoundation/Classes/SizePrefix.{h}'
    end
    
    # base 3 : prefix
    s.subspec 'NSString' do |ss|
        ss.public_header_files = 'PoporFoundation/Classes/NSString+Tool.h'
        #        ss.public_header_files = "QLTool/Category/QLMacros.h"
        #        ss.dependency = 'PoporFoundation/prefix'
        #        ss.public_header_files =
        # ss.public_header_files = 'PoporFoundation/Classes/ColorPrefix.h'
        ss.source_files = 'PoporFoundation/Classes/NSString*.{h,m}'
    end
    
    s.subspec 'NSArray' do |ss|
        #        ss.dependency = 'PoporFoundation/NSObject'
        ss.source_files = 'PoporFoundation/Classes/NSArray*.{h,m}', 'PoporFoundation/Classes/NSMutableArray*.{h,m}'
    end
    s.subspec 'NSAssistant' do |ss|
        #        ss.dependency = 'PoporFoundation/prefix'
        ss.source_files = 'PoporFoundation/Classes/NSAssistant.{h,m}'
    end
    s.subspec 'NSData' do |ss|
        ss.source_files = 'PoporFoundation/Classes/NSData*.{h,m}'
    end
    s.subspec 'NSDate' do |ss|
        #        ss.dependency = 'PoporFoundation/NSString'
        ss.source_files = 'PoporFoundation/Classes/NSDate*.{h,m}'
    end
    
    s.subspec 'NSDictionary' do |ss|
        #        ss.dependency = 'PoporFoundation/NSObject'
        ss.source_files = 'PoporFoundation/Classes/NSDictionary*.{h,m}'
    end
    
    s.subspec 'NSURL' do |ss|
        #        ss.dependency = 'PoporFoundation/NSObject'
        ss.source_files = 'PoporFoundation/Classes/NSURL*.{h,m}'
    end
    
    s.subspec 'ScreenCommonSize' do |ss|
        ss.source_files = 'PoporFoundation/Classes/ScreenCommonSize.{h,m}'
    end
    
    
end
