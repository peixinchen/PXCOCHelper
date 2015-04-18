Pod::Spec.new do |s|
    
    s.name          = "PXCOCHelper"
    s.version       = "0.1.0"
    s.summary       = "PXCOCHelper is a helper library for iOS."
    s.description   = <<-DESC
                      Description:
                      PXCOCHelper is a helper library for iOS.
                      DESC
    s.homepage      = "https://github.com/peixinchen/PXCOCHelper"
    s.author        = { "peixinchen" => "peixinchen@foxmail.com" }
    s.license       = "MIT"
    s.platform      = :ios, "7.0"
    s.source        = { :git => "https://github.com/peixinchen/PXCOCHelper.git", :tag => s.version.to_s }
    s.source_files  = "PXCOCHelper/DataSource/*.{h,m}"
    s.requires_arc  = true

end
