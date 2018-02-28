Pod::Spec.new do |spec|
  spec.name             = "APAC-BNPayment"
  spec.version          = "1.2.6"
  spec.summary          = "The Mobile Payment SDK from Bambora (APAC) makes it simple to accept credit card payments in your app."
  build_tag             = spec.version
  spec.homepage         = "http://bambora.com/en/au"
  spec.license          = 'MIT'
  spec.author           = { "APAC-BNPayment" => "apac-mobile-sdk-maintainers@bambora.com" }
  spec.source           = {
                          :git => "https://github.com/bambora/APAC-BNPayment-iOS.git",
                          :tag => build_tag.to_s
                          }
  spec.platform         = :ios, '8.0'
  spec.requires_arc     = true
  spec.module_name = 'BNPayment'
  spec.header_dir = 'BNPayment'
  spec.libraries        = 'c++'
  spec.source_files     = 'BNPayment/**/**'
  spec.vendored_frameworks = 'Example/VisaCheckoutHybrid.framework'
  spec.vendored_libraries = 'BNPayment/CardIO/libCardIO.a', 'BNPayment/CardIO/libopencv_core.a', 'BNPayment/CardIO/libopencv_imgproc.a'
  spec.resource_bundles = {
                            'BNPayment' => ['Assets/**/*.{png,bundle,xib,nib,cer,html}']
                          }
end