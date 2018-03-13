# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MVVM+Module' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for MVVM+Module
  pod 'SVProgressHUD'
  pod 'AFNetworking'
  
  # Local Pods #
  
  # 基础库
  pod 'MacroModule', :path => './LocalPods/MacroModule'
  pod 'RouteModule', :path => './LocalPods/RouteModule'
  pod 'CategoryModule', :path => './LocalPods/CategoryModule'
  pod 'CoreModule', :path => './LocalPods/CoreModule'
  
  #^##^##^##^##^##^##^##^#
  #|##|##|##|##|##|##|##|#
  
  # 业务核心库
  pod 'BusinessCoreModule', :path => './LocalPods/BusinessCoreModule'
  
  #^##^##^##^##^##^##^##^#
  #|##|##|##|##|##|##|##|#
  
  # 业务模块
  pod 'AccountModule', :path => './LocalPods/AccountModule'
  pod 'ProductModule', :path => './LocalPods/ProductModule'
  pod 'MineModule', :path => './LocalPods/MineModule'
  
  
end

# 解决App Icon显示不了的问题
post_install do |installer|
    copy_pods_resources_path = "Pods/Target Support Files/Pods-MVVM+Module/Pods-MVVM+Module-resources.sh"
    string_to_replace = '--compile "${BUILT_PRODUCTS_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"'
    assets_compile_with_app_icon_arguments = '--compile "${BUILT_PRODUCTS_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}" --app-icon "${ASSETCATALOG_COMPILER_APPICON_NAME}" --output-partial-info-plist "${BUILD_DIR}/assetcatalog_generated_info.plist"'
    text = File.read(copy_pods_resources_path)
    new_contents = text.gsub(string_to_replace, assets_compile_with_app_icon_arguments)
    File.open(copy_pods_resources_path, "w") {|file| file.puts new_contents }
end
