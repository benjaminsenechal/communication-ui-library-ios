Pod::Spec.new do |spec|
  spec.name                 = "AzureCommunicationUICalling"
  spec.version              = "1.14.2-bcv"  # <-- version/tag interne recommandé
  spec.summary              = "UI Library to quickly integrate Azure Communication Calling Services experiences into your applications."
  spec.homepage             = "ssh://git@bitbucket.svc.elca.ch:7999/bcv-mobile-git/bcvmobile-azure-communication-ui-ios.git"
  spec.license              = { :type => 'MIT' }
  spec.author               = 'Microsoft'

  # IMPORTANT: pointe vers ton Bitbucket privé (SSH)
  spec.source               = {
    :git => 'ssh://git@bitbucket.svc.elca.ch:7999/bcv-mobile-git/bcvmobile-azure-communication-ui-ios.git',
    :tag => spec.version.to_s
  }

  spec.module_name          = 'AzureCommunicationUICalling'
  spec.swift_version        = '5.8'
  spec.platform             = :ios, '16.0'

  # Chemins tels que dans ton repo (garde-les si identiques)
  spec.source_files         = [
    'AzureCommunicationUI/sdk/AzureCommunicationUICalling/Sources/**/*.swift',
    'AzureCommunicationUI/sdk/AzureCommunicationUICommon/Sources/AzureCommunicationUICommon/*.swift',
    'AzureCommunicationUI/sdk/common/**/Sources/**/*.swift'
  ]

  spec.resources            = 'AzureCommunicationUI/sdk/AzureCommunicationUICalling/Sources/**/*.{xcassets,strings}'
  spec.pod_target_xcconfig  = { "ENABLE_BITCODE" => "NO" }
  spec.info_plist           = { 'UILibrarySemVersion' => "#{spec.version}" }

  # Dépendances (laisse comme avant)
  spec.dependency 'AzureCommunicationCalling', '2.15.0'
  spec.dependency 'AzureCore', '1.0.0-beta.16'
  spec.dependency 'MicrosoftFluentUI/Avatar_ios', '0.10.0'
  spec.dependency 'MicrosoftFluentUI/BottomSheet_ios', '0.10.0'
  spec.dependency 'MicrosoftFluentUI/Button_ios', '0.10.0'
  spec.dependency 'MicrosoftFluentUI/PopupMenu_ios', '0.10.0'
  spec.dependency 'MicrosoftFluentUI/ActivityIndicator_ios', '0.10.0'
  spec.dependency 'MicrosoftFluentUI/AvatarGroup_ios', '0.10.0'
end
