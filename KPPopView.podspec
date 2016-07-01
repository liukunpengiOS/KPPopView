
Pod::Spec.new do |s|

    s.name         = 'KPPopView'
    s.version      = '0.1.2'
    s.summary      = 'one line code to create a popView.'
    s.homepage     = 'https://github.com/liukunpengiOS'
    s.license      = 'MIT'
    s.author       = { 'kunpeng' => '1169405067@qq.com'}
    s.platform     = :ios, "8.0"
    s.source       = { :git => 'https://github.com/liukunpengiOS/KPPopView.git', :tag => '0.1.2' }
    s.source_files = 'KPPopView/**/*.{h,m}'
    s.requires_arc = true
    s.dependency "KPMaskView"
end
