#NavDropDownMenu.podspec
Pod::Spec.new do |s|
  s.name         = "NavDropDownMenu"
  s.version      = "1.0.0"
  s.summary      = "One Navigation bar Drop Down List Menu."

  s.homepage     = "https://github.com/hanyegudeng/navDropDownMenu.git"
  s.license      = 'MIT'
  s.author       = { "hanyegudeng" => "wy204305@163.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/hanyegudeng/navDropDownMenu.git", :tag => s.version}
  s.source_files  = 'NavDropDownMenu/NavDropDownMenu/*.{h,m}'
  s.requires_arc = true
end
