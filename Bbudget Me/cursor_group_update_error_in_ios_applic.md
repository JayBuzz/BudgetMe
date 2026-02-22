# Group update error in iOS application
_Exported on 2/22/2026 at 00:09:45 EST from Cursor (2.5.20)_

---

**User**

== DATE:

    Saturday, February 21, 2026 at 10:43:28 PM Eastern Standard Time
    
    2026-02-22T03:43:28Z



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #30
    
    ==================================
    
    |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
    |  
    |  'tracking' is only available in iOS 16.0 or newer
    |  
    |  Compiling DashboardView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile DashboardView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: error: 'tracking' is only available in iOS 16.0 or newer
    |                      .tracking(1.5)
    |                       ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: note: add 'if #available' version check
    |                      .tracking(1.5)
    |                       ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:83:9: note: add '@available' attribute to enclosing property
    |      var body: some View {
    |          ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:80:8: note: add '@available' attribute to enclosing struct
    |  struct HeroHeaderView: View {
    |         ^
    |  
    |  
    |  Compiling AccountsView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile AccountsView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: error: 'tracking' is only available in iOS 16.0 or newer
    |                          .tracking(1)
    |                           ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: note: add 'if #available' version check
    |                          .tracking(1)
    |                           ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:93:9: note: add '@available' attribute to enclosing property
    |      var body: some View {
    |          ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:82:8: note: add '@available' attribute to enclosing struct
    |  struct NetWorthCard: View {
    |         ^
    |  



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #30
    
    ==================================
    
    |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
    |  
    |  'tracking' is only available in iOS 16.0 or newer
    |  
    |  Compiling DashboardView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile DashboardView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: error: 'tracking' is only available in iOS 16.0 or newer
    |                      .tracking(1.5)
    |                       ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: note: add 'if #available' version check
    |                      .tracking(1.5)
    |                       ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:83:9: note: add '@available' attribute to enclosing property
    |      var body: some View {
    |          ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:80:8: note: add '@available' attribute to enclosing struct
    |  struct HeroHeaderView: View {
    |         ^
    |  
    |  
    |  Compiling AccountsView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile AccountsView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: error: 'tracking' is only available in iOS 16.0 or newer
    |                          .tracking(1)
    |                           ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: note: add 'if #available' version check
    |                          .tracking(1)
    |                           ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:93:9: note: add '@available' attribute to enclosing property
    |      var body: some View {
    |          ^
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:82:8: note: add '@available' attribute to enclosing struct
    |  struct NetWorthCard: View {
    |         ^
    |  



== VERSION INFO:

    Tools: 17C52
    OS:    24G517
    PID:   6452
    Model: MacBook Air
    Arch:  arm64e



== EXECUTION MODE PROPERTIES:

    Automatically Refresh Previews: true
    JIT Mode User Enabled: true
    Falling back to Dynamic Replacement: false



== PACKAGE RESOLUTION ERRORS:

    



== REFERENCED SOURCE PACKAGES:

    



== JIT LINKAGE:

    



== ENVIRONMENT:

    openFiles = [
        /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    wantsNewBuildSystem = true
    newBuildSystemAvailable = true
    activeScheme = Bbudget Me
    activeRunDestination = iPad variant iphoneos arm64
    workspaceArena = [x]
    buildArena = [x]
    buildableEntries = [
        Bbudget Me.app
    ]
    runMode = JIT Executor



== SELECTED RUN DESTINATION:

    iOS 26.2 | iphoneos | arm64 | iPad Pro 13-inch (M4) | no proxy



== SESSION GROUP 30 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]



== SESSION GROUP 29 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: false
                    boxedCanvasControlStates: []
            ]
    ]



== SESSION GROUP 28 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: false
                    boxedCanvasControlStates: []
            ]
    ]
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }



== SESSION GROUP 27 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]



== SESSION GROUP 26 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    build graph {
        Bbudget Me.app (#3)
           sourceFile(file:///Users/aj/Desktop/Bbudget%20Me/Bbudget%20Me/ContentView.swift -> ContentView.swift) (#1)
           ContentView.swift (#2)
    }
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                        (ContentView.swift, Previews, application) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }



== SESSION GROUP 25 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    build graph {
        Bbudget Me.app (#3)
           sourceFile(file:///Users/aj/Desktop/Bbudget%20Me/Bbudget%20Me/ContentView.swift -> ContentView.swift) (#1)
           ContentView.swift (#2)
    }
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                        (ContentView.swift, Previews, application) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }



== BUILD PRODUCTS CACHE:

    BuildCache {
    }



== POWER STATE LOGS:

    2/21/2026, 8:26 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 81%)
    2/21/2026, 8:28 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 82%)
    2/21/2026, 8:29 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 83%)
    2/21/2026, 8:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 84%)
    2/21/2026, 8:32 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 85%)
    2/21/2026, 8:33 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 86%)
    2/21/2026, 8:34 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 87%)
    2/21/2026, 8:36 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 88%)
    2/21/2026, 8:37 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 89%)
    2/21/2026, 8:39 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 90%)
    2/21/2026, 8:40 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 91%)
    2/21/2026, 8:42 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 92%)
    2/21/2026, 8:44 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 93%)
    2/21/2026, 8:46 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 94%)
    2/21/2026, 8:48 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 95%)
    2/21/2026, 8:50 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 96%)
    2/21/2026, 8:52 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 97%)
    2/21/2026, 8:55 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 98%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 99%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 100%)
    2/21/2026, 9:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charged, level: 100%)Current power state: Full Power



== DISPLAYABLE CONTENT STATE:

    updateIdentifier: 9226
    buildingState: Running
    isUpdateInProgress: false
    providers [
        Registry[Registry-ContentView.swift#1[preview] (line 115)] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #30
            
            ==================================
            
            |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
            |  
            |  'tracking' is only available in iOS 16.0 or newer
            |  
            |  Compiling DashboardView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile DashboardView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: error: 'tracking' is only available in iOS 16.0 or newer
            |                      .tracking(1.5)
            |                       ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: note: add 'if #available' version check
            |                      .tracking(1.5)
            |                       ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:83:9: note: add '@available' attribute to enclosing property
            |      var body: some View {
            |          ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:80:8: note: add '@available' attribute to enclosing struct
            |  struct HeroHeaderView: View {
            |         ^
            |  
            |  
            |  Compiling AccountsView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile AccountsView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: error: 'tracking' is only available in iOS 16.0 or newer
            |                          .tracking(1)
            |                           ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: note: add 'if #available' version check
            |                          .tracking(1)
            |                           ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:93:9: note: add '@available' attribute to enclosing property
            |      var body: some View {
            |          ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:82:8: note: add '@available' attribute to enclosing struct
            |  struct NetWorthCard: View {
            |         ^
            |  
        }
    ]
    registries [
        Registry-ContentView.swift#1[preview] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #30
            
            ==================================
            
            |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
            |  
            |  'tracking' is only available in iOS 16.0 or newer
            |  
            |  Compiling DashboardView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile DashboardView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: error: 'tracking' is only available in iOS 16.0 or newer
            |                      .tracking(1.5)
            |                       ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:109:22: note: add 'if #available' version check
            |                      .tracking(1.5)
            |                       ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:83:9: note: add '@available' attribute to enclosing property
            |      var body: some View {
            |          ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:80:8: note: add '@available' attribute to enclosing struct
            |  struct HeroHeaderView: View {
            |         ^
            |  
            |  
            |  Compiling AccountsView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-21.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/AccountsView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile AccountsView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: error: 'tracking' is only available in iOS 16.0 or newer
            |                          .tracking(1)
            |                           ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:109:26: note: add 'if #available' version check
            |                          .tracking(1)
            |                           ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:93:9: note: add '@available' attribute to enclosing property
            |      var body: some View {
            |          ^
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/AccountsView.swift:82:8: note: add '@available' attribute to enclosing struct
            |  struct NetWorthCard: View {
            |         ^
            |  
            ContentView {
                canvasContent {
                    isStale: true
                    states {
                        livePreview: enabled expecting update
                        staticPreview: disabled
                        Light Appearance: disabled
                        Dark Appearance: disabled
                        Portrait: disabled
                        Landscape Left: disabled
                        Landscape Right: disabled
                        X Small: disabled
                        Small: disabled
                        Medium: disabled
                        Large: disabled
                        X Large: disabled
                        XX Large: disabled
                        XXX Large: disabled
                        AX 1: disabled
                        AX 2: disabled
                        AX 3: disabled
                        AX 4: disabled
                        AX 5: disabled
                    }
                }
            }
        }
    ]




---

**Cursor**


Removing the `.tracking()` modifier from both files so the app builds for the iOS 15.6 deployment target. `.tracking()` requires iOS 16+.



Removing the `.tracking()` modifiers so the app builds for iOS 15.6.



Checking for other `.tracking(` usages in the project:



Summary of what was changed:

**Cause:** The build targets **iOS 15.6** (`-target arm64-apple-ios15.6-simulator`), but the `.tracking()` text modifier is only available from **iOS 16.0**, so the compiler reported an API availability error.

**Changes made:**
1. **DashboardView.swift** – Removed `.tracking(1.5)` from the “Net Worth” label in `HeroHeaderView`.
2. **AccountsView.swift** – Removed `.tracking(1)` from the “Net Worth” label in `NetWorthCard`.

The labels are unchanged except for letter spacing; they still use the same font, color, and `.textCase(.uppercase)`.

The project should build and Previews should run. If you want that letter spacing back and are okay with requiring iOS 16+, you can either raise the deployment target to iOS 16 in the project settings or add an `if #available(iOS 16.0, *)` branch and apply `.tracking()` only on iOS 16+.

---

**User**

Budget, Goals and Acconts, these lables/text are hovering freely infrom of element when returning to the top of the respective page

---

**Cursor**


Inspecting how Budget, Goals, and Accounts pages structure their headers and scroll content.



Checking how these views are presented in the app and whether the navigation bar or scroll configuration causes the floating titles:



Checking for overlays or safe-area handling that could make the titles float:



Using `.large` for the nav title on Goals and Accounts causes the big title to collapse/expand on scroll and can make it look like it’s floating when returning to the top (especially inside a TabView). Budget already uses `.inline`. Switching Goals and Accounts to `.inline` so the titles stay in the bar and no longer hover.



Summary of what was changed:

**Cause:** On Goals and Accounts, the navigation title was set to **large** (`.navigationBarTitleDisplayMode(.large)`). With that, the system animates the big title as you scroll (collapsing into the bar and expanding again at the top). Inside a paged `TabView`, that animation can look wrong and make “Goals” and “Accounts” look like they’re floating or sitting in front of the content when you scroll back to the top. Budget was already using **inline**, so it didn’t have that effect.

**Change:** Goals and Accounts were switched to **inline** title display, same as Budget:

- **GoalsView.swift** – `.navigationBarTitleDisplayMode(.large)` → `.navigationBarTitleDisplayMode(.inline)`
- **AccountsView.swift** – `.navigationBarTitleDisplayMode(.large)` → `.navigationBarTitleDisplayMode(.inline)`

With inline, “Budget”, “Goals”, and “Accounts” stay in the navigation bar and no longer expand/collapse, so they shouldn’t appear to hover when you return to the top of each page.

If you meant a different set of labels (e.g. “Expense Categories”, “Net Worth”, “Total Saved”) floating, say which screen and which text and we can adjust that view’s layout or scroll setup.

---

**User**

Bbudget Me - 518
SwiftUI
/Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239 Invalid frame dimension (negative or non-finite).

/Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:262 Invalid frame dimension (negative or non-finite).

the titles are still doing the same thing, the device am testing on is ios 17.6.1

---

**Cursor**


Inspecting DashboardView around the reported lines for the frame errors and title behavior:



Checking the full CashFlowCard structure to fix both bar widths:



Fixing both frame issues:

1. Line 239: `.frame(width: .infinity, height: 28)` is invalid — use `maxWidth: .infinity` for flexible width.
2. Lines 262–264: `CGFloat(...) * .infinity` is non-finite — use GeometryReader to compute the bar width from the container width.



Fixing invalid frame dimensions. For the titles still hovering on iOS 17.6.1: making the navigation bar opaque so content doesn't show through and the title doesn't appear to float. Adding a visible toolbar background to Budget, Goals, and Accounts:



Adding an opaque toolbar background so the nav bar doesn't let scroll content show through and the title no longer appears to float.



Checking whether the app targets iOS 15 (toolbarBackground is iOS 16+):



Making the toolbar background conditional so we support the iOS 15.6 deployment target:



Verifying the DashboardView GeometryReader layout.



Summary of what was changed:

---

**1. Invalid frame dimensions in `DashboardView.swift`**

- **Line 239 (Income bar)**  
  Replaced `.frame(width: .infinity, height: 28)` with `.frame(maxWidth: .infinity, height: 28)`.  
  `width: .infinity` is invalid for `frame(width:height:)` and can produce non-finite dimensions; `maxWidth: .infinity` is the correct way to fill the width.

- **Lines 262–264 (Expenses bar)**  
  Removed the invalid `CGFloat(...) * .infinity` width and used a **GeometryReader** to size the bar from the actual container width:
  - `fraction = min(expenses/income, 1.0)` (or 0 when there’s no income).
  - Bar width is `geo.size.width * fraction`, clamped with `max(0, ...)` so it’s always finite and non‑negative.

---

**2. Titles still “hovering” on iOS 17.6.1**

- **Opaque navigation bar**  
  On Budget, Goals, and Accounts the nav bar can be transparent so scroll content shows through and the title looks like it’s floating. An opaque bar fixes that.

- **Implementation**  
  - Added a shared modifier in `ContentView.swift`: `opaqueNavigationBarIfAvailable()`.
  - On **iOS 16+** it applies:
    - `.toolbarBackground(Color(.systemGroupedBackground), for: .navigationBar)`
    - `.toolbarBackground(.visible, for: .navigationBar)`
  - On **iOS 15** it does nothing, so the app still builds for the 15.6 target.
  - Budget, Goals, and Accounts now use `.opaqueNavigationBarIfAvailable()` so the bar matches the grouped background and the titles no longer appear to float over the content when you scroll to the top.

After rebuilding, the “Invalid frame dimension” warnings should be gone and the Budget / Goals / Accounts titles should sit in a solid bar instead of hovering. If any tab still looks wrong, say which one and what you see (e.g. which text and where it appears).

---

**User**

== DATE:

    Saturday, February 21, 2026 at 11:19:07 PM Eastern Standard Time
    
    2026-02-22T04:19:07Z



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #42
    
    ==================================
    
    |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
    |  
    |  extra argument 'height' in call
    |  
    |  Compiling DashboardView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile DashboardView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
    |                              .frame(maxWidth: .infinity, height: 28)
    |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
    |  



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #42
    
    ==================================
    
    |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
    |  
    |  extra argument 'height' in call
    |  
    |  Compiling DashboardView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile DashboardView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
    |                              .frame(maxWidth: .infinity, height: 28)
    |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
    |  



== ERROR:

    GroupRecordingError
    
    Error encountered during update group #42
    
    ==================================
    
    |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
    |  
    |  extra argument 'height' in call
    |  
    |  Compiling DashboardView.swift:
    |  Failed frontend command:
    |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
    |  
    |  
    |  Compile DashboardView.swift (arm64):
    |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
    |                              .frame(maxWidth: .infinity, height: 28)
    |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
    |  



== VERSION INFO:

    Tools: 17C52
    OS:    24G517
    PID:   6452
    Model: MacBook Air
    Arch:  arm64e



== EXECUTION MODE PROPERTIES:

    Automatically Refresh Previews: true
    JIT Mode User Enabled: true
    Falling back to Dynamic Replacement: false



== PACKAGE RESOLUTION ERRORS:

    



== REFERENCED SOURCE PACKAGES:

    



== JIT LINKAGE:

    



== ENVIRONMENT:

    openFiles = [
        /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    wantsNewBuildSystem = true
    newBuildSystemAvailable = true
    activeScheme = Bbudget Me
    activeRunDestination = iPhone 17 Pro variant iphonesimulator arm64
    workspaceArena = [x]
    buildArena = [x]
    buildableEntries = [
        Bbudget Me.app
    ]
    runMode = JIT Executor



== SELECTED RUN DESTINATION:

    Simulator - iOS 26.2 | iphonesimulator | arm64 | iPhone 17 Pro | no proxy



== SESSION GROUP 42 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]



== SESSION GROUP 41 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    build graph {
        Bbudget Me.app (#3)
           sourceFile(file:///Users/aj/Desktop/Bbudget%20Me/Bbudget%20Me/ContentView.swift -> ContentView.swift) (#1)
           ContentView.swift (#2)
    }
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                        (ContentView.swift, Previews, application) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }



== SESSION GROUP 40 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    build graph {
        Bbudget Me.app (#3)
           sourceFile(file:///Users/aj/Desktop/Bbudget%20Me/Bbudget%20Me/ContentView.swift -> ContentView.swift) (#1)
           ContentView.swift (#2)
    }
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                        (ContentView.swift, Previews, application) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }



== BUILD PRODUCTS CACHE:

    BuildCache {
    }



== POWER STATE LOGS:

    2/21/2026, 8:26 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 81%)
    2/21/2026, 8:28 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 82%)
    2/21/2026, 8:29 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 83%)
    2/21/2026, 8:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 84%)
    2/21/2026, 8:32 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 85%)
    2/21/2026, 8:33 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 86%)
    2/21/2026, 8:34 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 87%)
    2/21/2026, 8:36 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 88%)
    2/21/2026, 8:37 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 89%)
    2/21/2026, 8:39 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 90%)
    2/21/2026, 8:40 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 91%)
    2/21/2026, 8:42 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 92%)
    2/21/2026, 8:44 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 93%)
    2/21/2026, 8:46 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 94%)
    2/21/2026, 8:48 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 95%)
    2/21/2026, 8:50 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 96%)
    2/21/2026, 8:52 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 97%)
    2/21/2026, 8:55 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 98%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 99%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 100%)
    2/21/2026, 9:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charged, level: 100%)Current power state: Full Power



== DISPLAYABLE CONTENT STATE:

    updateIdentifier: 10002
    buildingState: Running
    isUpdateInProgress: false
    providers [
        Registry[Registry-ContentView.swift#1[preview] (line 115)] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #42
            
            ==================================
            
            |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
            |  
            |  extra argument 'height' in call
            |  
            |  Compiling DashboardView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile DashboardView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
            |                              .frame(maxWidth: .infinity, height: 28)
            |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
            |  
        }
    ]
    registries [
        Registry-ContentView.swift#1[preview] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #42
            
            ==================================
            
            |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
            |  
            |  extra argument 'height' in call
            |  
            |  Compiling DashboardView.swift:
            |  Failed frontend command:
            |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
            |  
            |  
            |  Compile DashboardView.swift (arm64):
            |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
            |                              .frame(maxWidth: .infinity, height: 28)
            |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
            |  
            ContentView {
                canvasContent {
                    isStale: true
                    states {
                        livePreview: failed: (reason: PreviewsUI.DisplayableContent.Preview.State.FailedReason.failed(GroupRecordingError
                        
                        Error encountered during update group #42
                        
                        ==================================
                        
                        |  SchemeBuildError: Failed to build the scheme “Bbudget Me”
                        |  
                        |  extra argument 'height' in call
                        |  
                        |  Compiling DashboardView.swift:
                        |  Failed frontend command:
                        |  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AccountsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/AddTransactionView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/BudgetView.swift -primary-file /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/DashboardView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/GoalsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Views/TransactionsView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ViewModules/BudgetStore.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Modules/Models.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/ContentView.swift /Users/aj/Desktop/Bbudget\ Me/Bbudget\ Me/Bbudget_MeApp.swift /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/GeneratedAssetSymbols.swift -emit-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.d -emit-const-values-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftconstvalues -emit-reference-dependencies-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.swiftdeps -serialize-diagnostics-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.dia -emit-localized-strings -emit-localized-strings-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64 -target arm64-apple-ios15.6-simulator -module-can-import-version DeveloperToolsSupport 23.0.4 23.0.4 -module-can-import-version SwiftUI 7.2.5.1 7.2.5 -module-can-import-version UIKit 9126.2.4.1 9126.2.4 -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libFoundationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#FoundationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libObservationMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#ObservationMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libPreviewsMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#PreviewsMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftMacros -load-resolved-plugin /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins/libSwiftUIMacros.dylib\#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server\#SwiftUIMacros -disable-implicit-swift-modules -Xcc -fno-implicit-modules -Xcc -fno-implicit-module-maps -explicit-swift-module-map-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget_Me-dependencies-32.json -Xllvm -aarch64-use-tbi -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator26.2.sdk -I /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -F /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator -no-color-diagnostics -Xcc -fno-color-diagnostics -enable-testing -g -debug-info-format\=dwarf -dwarf-version\=4 -module-cache-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/SwiftExplicitPrecompiledModules -swift-version 5 -enforce-exclusivity\=checked -Onone -D DEBUG -serialize-debugging-options -const-gather-protocols-file /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/Bbudget\ Me_const_extract_protocols.json -enable-upcoming-feature DisableOutwardActorInference -enable-upcoming-feature InferSendableFromCaptures -enable-upcoming-feature GlobalActorIsolatedTypesUsability -enable-upcoming-feature MemberImportVisibility -enable-upcoming-feature InferIsolatedConformances -enable-upcoming-feature NonisolatedNonsendingByDefault -enable-experimental-feature DebugDescriptionMacro -enable-bare-slash-regex -default-isolation\=MainActor -empty-abi-descriptor -validate-clang-modules-once -clang-build-session-file /Users/aj/Library/Developer/Xcode/DerivedData/ModuleCache.noindex/Session.modulevalidation -Xcc -working-directory -Xcc /Users/aj/Desktop/Bbudget\ Me -enable-anonymous-context-mangled-names -file-compilation-dir /Users/aj/Desktop/Bbudget\ Me -Xcc -D_LIBCPP_HARDENING_MODE\=_LIBCPP_HARDENING_MODE_DEBUG -Xcc -ivfsstatcache -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/SDKStatCaches.noindex/iphonesimulator26.2-23C53-7d00a8b37fbd7999ea79df8ebc024bf0.sdkstatcache -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-generated-files.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-own-target-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-all-target-headers.hmap -Xcc -iquote -Xcc /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Bbudget\ Me-project-headers.hmap -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator/include -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources-normal/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources/arm64 -Xcc -I/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/DerivedSources -Xcc -DDEBUG\=1 -no-auto-bridging-header-chaining -module-name Bbudget_Me -frontend-parseable-output -disable-clang-spi -target-sdk-version 26.2 -target-sdk-name iphonesimulator26.2 -clang-target arm64-apple-ios26.2-simulator -in-process-plugin-server-path /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/host/libSwiftInProcPluginServer.dylib -o /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Intermediates.noindex/Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-unit-output-path /Bbudget\ Me.build/Debug-iphonesimulator/Bbudget\ Me.build/Objects-normal/arm64/DashboardView.o -index-store-path /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Index.noindex/DataStore -index-system-modules
                        |  
                        |  
                        |  Compile DashboardView.swift (arm64):
                        |  /Users/aj/Desktop/Bbudget Me/Bbudget Me/Views/DashboardView.swift:239:65: error: extra argument 'height' in call
                        |                              .frame(maxWidth: .infinity, height: 28)
                        |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
                        |  ), update: PreviewsUI.DisplayableContent.Preview.State.UpdatingState(groupSeed: PreviewsUI.UpdateGroupSeed.pipelineV2, capabilities: Optional(PreviewsPipeline.PreviewCapabilities(previewMetadata: PreviewMetadata(SwiftUI.View, displayName: nil), contentOverride: nil, supportedVariantGroups: [PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.ColorScheme, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Color Scheme", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.ColorScheme.dark)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Color Scheme", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.Orientation, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Orientation", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.Orientation.landscapeLeft)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Orientation", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.DynamicTypeSize, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Dynamic Type", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.range, defaultVariant: Ultraviolet.DynamicTypeSize.xxxLarge)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Dynamic Type", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)])])))], supportsTogglingExternalHosting: false, supportsContinuousLivePreview: false, supportsStaticPreviews: true, supportsScreenshotRequests: true, staticUpdateMode: PreviewsPipeline.ExecutionPointProperties.UpdateMode.static, destinationDisplayName: "iPhone 17 Pro")), configuration: Optional(Registry-ContentView.swift#1[preview] [hosted(location: PreviewsPipeline.ExecutionPointProperties.HostLocation.inCanvas), from Editor(7388) for local, variant: nil, overrides: []])), previous: Optional(PreviewsUI.DisplayableContent.Preview.State.Viewable(status: PreviewsUI.DisplayableContent.Preview.State.Viewable.Status.stale(PreviewsDeveloperTools.SimulatorInteractivePreviewViewable(screenInfo: PreviewsDeveloperTools.SimulatorScreenInfo(device: SimDevice : iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) : state={ Booted } deviceType={ com.apple.CoreSimulator.SimDeviceType.iPhone-17-Pro: SimDeviceType : iPhone 17 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-17-Pro) } runtime={ com.apple.CoreSimulator.SimRuntime.iOS-26-2: SimRuntime : iOS 26.2 (26.2 - 23C54) - com.apple.CoreSimulator.SimRuntime.iOS-26-2 }, sizeInPixels: (1206.0, 2622.0), scaleFactor: 3.0), screen: SimDeviceScreen { device="iOS 26.2 (23C54) - iPhone 17 Pro", ID=133, uniqueId=684F2EB9-CA09-4969-9C94-3717E4500020, connected, type=scene, name="684F2EB9-CA09-4969-9C94-3717E4500020", size=1206x2622@3x, power=on, rendering }, contentDomain: PreviewsMessagingHost.PreviewContentDomain.view, traits: PreviewsMessagingHost.PreviewTraits(layout: PreviewsMessagingHost.PreviewTraits.Layout.device, orientation: PreviewsMessagingHost.PreviewTraits.Orientation.portrait), interfaceOrientation: PreviewsMessagingHost.PreviewTraits.Orientation.portrait, previewGeometry: PreviewsPipeline.PreviewGeometry(selectionSupport: PreviewsPipeline.PreviewGeometry.SelectionSupport.unsupported, sizeInPixels: (1206.0, 2622.0), cornerRadius: 0.0, scaleFactor: 3.0), deviceChrome: Optional(PreviewsDeveloperTools.StaticPreviewViewable.Chrome.device(PreviewsDeveloperTools.DeviceChromeDescription(chrome: SimulatorKit.SimDeviceChrome(identifier: "com.apple.dt.devicekit.chrome.phone11", images: SimulatorKit.SimDeviceChrome.Images(topLeft: "Phone TL", top: "Phone Top", topRight: "Phone TR", left: "Phone Left", right: "Phone Right", bottomLeft: "Phone BL", bottom: "Phone Base", bottomRight: "Phone BR", composite: Optional("PhoneComposite"), simpleComposite: nil, screen: "Screen", sizing: SimulatorKit.SimDeviceChrome.Images.Sizing(leftWidth: 18.0, rightWidth: 18.0, topHeight: 18.0, bottomHeight: 18.0), padding: (9.0, 0.0), stand: nil), inputs: [SimulatorKit.SimDeviceChrome.Input(name: "action", accessibilityTitle: Optional("Action"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 11, usage: 45, image: "Mute BTN", imageDown: "Mute BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 160.0), rollover: (3.0, 160.0))), SimulatorKit.SimDeviceChrome.Input(name: "volume-up", accessibilityTitle: Optional("Volume Up"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 233, image: "Vol BTN", imageDown: "Vol BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 221.0), rollover: (3.0, 221.0))), SimulatorKit.SimDeviceChrome.Input(name: "volume-down", accessibilityTitle: Optional("Volume Down"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 234, image: "Vol BTN", imageDown: "Vol BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 300.0), rollover: (3.0, 300.0))), SimulatorKit.SimDeviceChrome.Input(name: "power", accessibilityTitle: Optional("Sleep/Wake"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 48, image: "X_Power BTN", imageDown: "X_Power BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.right, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (-8.0, 262.0), rollover: (-3.0, 262.0)))], resizeRects: [SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerLeft, scales: true, centerPoint: (28.0, 18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerLeft, scales: true, centerPoint: (18.0, 28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerRight, scales: true, centerPoint: (-28.0, 18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerRight, scales: true, centerPoint: (-18.0, 28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperRight, scales: true, centerPoint: (-28.0, -18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperRight, scales: true, centerPoint: (-18.0, -28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperLeft, scales: true, centerPoint: (28.0, -18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperLeft, scales: true, centerPoint: (18.0, -28.0), size: (20.0, 40.0))], paths: Optional(SimulatorKit.SimDeviceChrome.Paths(outsideBorder: SimulatorKit.SimDeviceChrome.SimpleBorder(insets: SimulatorKit.SimDeviceChrome.Insets(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0), cornerRadiusX: 80.0, cornerRadiusY: 80.0))), bundle: <SimProfileBundle: 0x60000d69e6f0 /Library/Developer/DeviceKit/Chrome/phone11.devicechrome>), maskingImage: Optional(<NSImage 0x600020ee6d00 Size={1206, 2622} RepProvider=<NSImageArrayRepProvider: 0x600003d4b6c0, reps:(
                            "NSPDFImageRep 0x600015f83e30 Size={1206, 2622} ColorSpace=Generic RGB colorspace BPS=0 Pixels=0x0 Alpha=NO AppearanceName=(null)"
                        )>>), mainScreenSize: (1206.0, 2622.0), mainScreenScale: 3.0))))), capabilities: PreviewsPipeline.PreviewCapabilities(previewMetadata: PreviewMetadata(SwiftUI.View, displayName: nil), contentOverride: nil, supportedVariantGroups: [PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.ColorScheme, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Color Scheme", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.ColorScheme.dark)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Color Scheme", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.Orientation, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Orientation", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.Orientation.landscapeLeft)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Orientation", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.DynamicTypeSize, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Dynamic Type", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.range, defaultVariant: Ultraviolet.DynamicTypeSize.xxxLarge)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Dynamic Type", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)])])))], supportsTogglingExternalHosting: false, supportsContinuousLivePreview: false, supportsStaticPreviews: true, supportsScreenshotRequests: true, staticUpdateMode: PreviewsPipeline.ExecutionPointProperties.UpdateMode.static, destinationDisplayName: "iPhone 17 Pro"), configuration: Registry-ContentView.swift#1[preview] [hosted(location: PreviewsPipeline.ExecutionPointProperties.HostLocation.inCanvas), from Editor(7388) for local, variant: nil, overrides: []])))
                        staticPreview: disabled
                        Light Appearance: disabled
                        Dark Appearance: disabled
                        Portrait: disabled
                        Landscape Left: disabled
                        Landscape Right: disabled
                        X Small: disabled
                        Small: disabled
                        Medium: disabled
                        Large: disabled
                        X Large: disabled
                        XX Large: disabled
                        XXX Large: disabled
                        AX 1: disabled
                        AX 2: disabled
                        AX 3: disabled
                        AX 4: disabled
                        AX 5: disabled
                    }
                }
            }
        }
    ]




---

**Cursor**


Fixing the frame call: `frame(maxWidth:height:)` doesn't exist — the flexible-width overload uses `minHeight`/`maxHeight`, not `height`. Replacing it with `.frame(maxWidth: .infinity, minHeight: 28, maxHeight: 28)`.



The issue was that in SwiftUI there’s no `frame(maxWidth:height:)` overload. The version that takes `maxWidth` is the flexible one: `frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)`, which doesn’t have a `height` parameter.

So the call was changed from:
- `.frame(maxWidth: .infinity, height: 28)`  
to:
- `.frame(maxWidth: .infinity, minHeight: 28, maxHeight: 28)`

That keeps the bar full width and gives it a fixed height of 28. The project should build and Previews should run.

---

**User**

== DATE:

    Saturday, February 21, 2026 at 11:23:54 PM Eastern Standard Time
    
    2026-02-22T04:23:54Z



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #44
    
    ==================================
    
    |  CrashReportError: Bbudget Me crashed
    |  
    |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
    |  
    |  Process:             Bbudget Me [17013]
    |  Path:                <none>
    |  
    |  Date/Time:           2026-02-22 04:23:42 +0000
    |  
    |  Application Specific Information:
    |      dyld:
    |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
    |      libsystem_sim_platform.dylib:
    |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
    |  
    |  Crashing Thread:
    |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
    |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
    |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
    |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
    |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
    |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
    |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
    |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
    |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
    |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
    |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
    |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
    |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
    |  13  SwiftUI                             0x00054742c static App.main() + 148
    |  14  ???                                 0x34004c468 ???
    |  15  ???                                 0x34004c514 ???
    |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
    |  17  PreviewsInjection                   0x000025a78 ???
    |  18  PreviewsInjection                   0x0000263a8 ???
    |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
    |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
    |  21  XOJITExecutor                       0x0000022c0 ???
    |  22  PreviewsInjection                   0x000026218 ???
    |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
    |  24  ???                                 0x1003753d0 ???
    |  25  dyld                                0x000006b98 start + 6076
    |  
    |  Binary Images:
    |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
    |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
    |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
    |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
    |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
    |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
    |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
    |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
    |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
    |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
    |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
    |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
    |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
    |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
    |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
    |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
    |  
    |  EOF
    |  
    |  ==================================
    |  
    |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
    |  |  
    |  |  ==================================
    |  |  
    |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  
    |  |  |  BSTransactionError (1):
    |  |  |  ==error-description: Process failed to launch.
    |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  ==error-reason: process launch failed
    |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
    |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>



== PREVIEW UPDATE ERROR:

    GroupRecordingError
    
    Error encountered during update group #44
    
    ==================================
    
    |  CrashReportError: Bbudget Me crashed
    |  
    |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
    |  
    |  Process:             Bbudget Me [17013]
    |  Path:                <none>
    |  
    |  Date/Time:           2026-02-22 04:23:42 +0000
    |  
    |  Application Specific Information:
    |      dyld:
    |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
    |      libsystem_sim_platform.dylib:
    |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
    |  
    |  Crashing Thread:
    |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
    |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
    |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
    |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
    |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
    |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
    |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
    |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
    |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
    |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
    |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
    |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
    |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
    |  13  SwiftUI                             0x00054742c static App.main() + 148
    |  14  ???                                 0x34004c468 ???
    |  15  ???                                 0x34004c514 ???
    |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
    |  17  PreviewsInjection                   0x000025a78 ???
    |  18  PreviewsInjection                   0x0000263a8 ???
    |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
    |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
    |  21  XOJITExecutor                       0x0000022c0 ???
    |  22  PreviewsInjection                   0x000026218 ???
    |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
    |  24  ???                                 0x1003753d0 ???
    |  25  dyld                                0x000006b98 start + 6076
    |  
    |  Binary Images:
    |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
    |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
    |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
    |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
    |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
    |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
    |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
    |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
    |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
    |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
    |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
    |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
    |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
    |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
    |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
    |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
    |  
    |  EOF
    |  
    |  ==================================
    |  
    |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
    |  |  
    |  |  ==================================
    |  |  
    |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  
    |  |  |  BSTransactionError (1):
    |  |  |  ==error-description: Process failed to launch.
    |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  ==error-reason: process launch failed
    |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
    |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>



== ERROR:

    GroupRecordingError
    
    Error encountered during update group #44
    
    ==================================
    
    |  CrashReportError: Bbudget Me crashed
    |  
    |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
    |  
    |  Process:             Bbudget Me [17013]
    |  Path:                <none>
    |  
    |  Date/Time:           2026-02-22 04:23:42 +0000
    |  
    |  Application Specific Information:
    |      dyld:
    |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
    |      libsystem_sim_platform.dylib:
    |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
    |  
    |  Crashing Thread:
    |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
    |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
    |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
    |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
    |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
    |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
    |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
    |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
    |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
    |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
    |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
    |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
    |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
    |  13  SwiftUI                             0x00054742c static App.main() + 148
    |  14  ???                                 0x34004c468 ???
    |  15  ???                                 0x34004c514 ???
    |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
    |  17  PreviewsInjection                   0x000025a78 ???
    |  18  PreviewsInjection                   0x0000263a8 ???
    |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
    |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
    |  21  XOJITExecutor                       0x0000022c0 ???
    |  22  PreviewsInjection                   0x000026218 ???
    |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
    |  24  ???                                 0x1003753d0 ???
    |  25  dyld                                0x000006b98 start + 6076
    |  
    |  Binary Images:
    |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
    |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
    |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
    |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
    |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
    |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
    |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
    |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
    |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
    |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
    |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
    |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
    |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
    |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
    |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
    |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
    |  
    |  EOF
    |  
    |  ==================================
    |  
    |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
    |  |  
    |  |  ==================================
    |  |  
    |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  
    |  |  |  BSTransactionError (1):
    |  |  |  ==error-description: Process failed to launch.
    |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
    |  |  |  ==error-reason: process launch failed
    |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
    |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>



== VERSION INFO:

    Tools: 17C52
    OS:    24G517
    PID:   6452
    Model: MacBook Air
    Arch:  arm64e



== EXECUTION MODE PROPERTIES:

    Automatically Refresh Previews: true
    JIT Mode User Enabled: true
    Falling back to Dynamic Replacement: false



== PACKAGE RESOLUTION ERRORS:

    



== REFERENCED SOURCE PACKAGES:

    



== JIT LINKAGE:

    Run Destination: 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator
    JIT Link Description {
        3:Bbudget Me.app
    }
    



== ENVIRONMENT:

    openFiles = [
        /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    wantsNewBuildSystem = true
    newBuildSystemAvailable = true
    activeScheme = Bbudget Me
    activeRunDestination = iPhone 17 Pro variant iphonesimulator arm64
    workspaceArena = [x]
    buildArena = [x]
    buildableEntries = [
        Bbudget Me.app
    ]
    runMode = JIT Executor



== SELECTED RUN DESTINATION:

    Simulator - iOS 26.2 | iphonesimulator | arm64 | iPhone 17 Pro | no proxy



== SESSION GROUP 44 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    Agent Launch Environment {
        Launch Arguments [
        ]
        Environment Variables {
            CFLOG_FORCE_DISABLE_STDERR: 1
            DYLD_FRAMEWORK_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            DYLD_INSERT_LIBRARIES: /Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib
            DYLD_LIBRARY_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            IDE_DISABLED_OS_ACTIVITY_DT_MODE: 1
            LOGGER_DEPTH: 6
            OS_ACTIVITY_TOOLS_OVERSIZE: YES
            OS_ACTIVITY_TOOLS_PRIVACY: YES
            OS_LOG_DT_HOOK_MODE: 0x07
            OS_LOG_DT_HOOK_PREFIX: OSLOG-D9B24416-A7F7-4AB5-914D-106AEC663DEF
            OS_LOG_TRANSLATE_PRINT_MODE: 0x80
            PACKAGE_RESOURCE_BUNDLE_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            PLAYGROUND_LOGGER_FILTER: {"generateSummaries":true,"excludeViewResults":false,"renderSwiftUIViews":false,"captureScopeEvents":false,"encodeLogPackets":true,"excludeImageResults":false,"captureSourceLineEvents":false,"generateQuickLook":true,"createLogPackets":true}
            SQLITE_ENABLE_THREAD_ASSERTIONS: 1
            TERM: dumb
            XCODE_RUNNING_FOR_PLAYGROUNDS: 1
            __XCODE_BUILT_PRODUCTS_DIR_PATHS: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            __XPC_DYLD_FRAMEWORK_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            __XPC_DYLD_LIBRARY_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
        }
    }



== SESSION GROUP 43 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]
    build graph {
        Bbudget Me.app (#3)
           sourceFile(file:///Users/aj/Desktop/Bbudget%20Me/Bbudget%20Me/ContentView.swift -> ContentView.swift) (#1)
           ContentView.swift (#2)
    }
    update plan {
        iOS [arm64 iphonesimulator26.2 iphonesimulator] (iPhone 17 Pro, 246C62BA-8E5E-4D56-A282-D297A8287580-iphonesimulator26.2-arm64-iphonesimulator), [], thinning disabled, thunking enabled) {
            Destination: iPhone 17 Pro 246C62BA-8E5E-4D56-A282-D297A8287580 | default device for iphonesimulator [
                Bbudget_Me app - Previews {
                    execution point packs [
                        (ContentView.swift, Previews) (in Bbudget_Me)
                        (ContentView.swift, Previews, application) (in Bbudget_Me)
                    ]
                    translation units [
                        ContentView.swift (in Bbudget Me.app)
                    ]
                    modules [
                        Bbudget Me.app
                    ]
                    jit link description [
                        Bbudget Me.app
                    ]
                }
            ]
        }
    }
    Agent Launch Environment {
        Launch Arguments [
        ]
        Environment Variables {
            CFLOG_FORCE_DISABLE_STDERR: 1
            DYLD_FRAMEWORK_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            DYLD_INSERT_LIBRARIES: /Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib
            DYLD_LIBRARY_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            IDE_DISABLED_OS_ACTIVITY_DT_MODE: 1
            LOGGER_DEPTH: 6
            OS_ACTIVITY_TOOLS_OVERSIZE: YES
            OS_ACTIVITY_TOOLS_PRIVACY: YES
            OS_LOG_DT_HOOK_MODE: 0x07
            OS_LOG_DT_HOOK_PREFIX: OSLOG-D9B24416-A7F7-4AB5-914D-106AEC663DEF
            OS_LOG_TRANSLATE_PRINT_MODE: 0x80
            PACKAGE_RESOURCE_BUNDLE_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            PLAYGROUND_LOGGER_FILTER: {"generateSummaries":true,"excludeViewResults":false,"renderSwiftUIViews":false,"captureScopeEvents":false,"encodeLogPackets":true,"excludeImageResults":false,"captureSourceLineEvents":false,"generateQuickLook":true,"createLogPackets":true}
            SQLITE_ENABLE_THREAD_ASSERTIONS: 1
            TERM: dumb
            XCODE_RUNNING_FOR_PLAYGROUNDS: 1
            __XCODE_BUILT_PRODUCTS_DIR_PATHS: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            __XPC_DYLD_FRAMEWORK_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
            __XPC_DYLD_LIBRARY_PATH: /Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator
        }
    }



== SESSION GROUP 42 (START):

    workspace identifier: workspace:13177D68-E0E3-4C6E-B7A9-15741FA04F29
    previewPreflights [
           Preview Preflight | Registry-ContentView.swift#1[preview]: from Editor(7388) for local
    ]
    externalRegistryPreflights [
    ]
    providers [
           Preview Provider | Registry-ContentView.swift#1[preview] [Editor(7388)]
    ]
    translation units [
           /Users/aj/Desktop/Bbudget Me/Bbudget Me/ContentView.swift
    ]
    attributes: [
        Editor(7388):     
            isAppPreviewEnabled: false
            destinationMode: automatic
            previewSettings: [
                preview(Registry-ContentView.swift#1[preview]):     isEnabled: true
                    boxedCanvasControlStates: []
            ]
    ]



== BUILD PRODUCTS CACHE:

    BuildCache {
    }



== POWER STATE LOGS:

    2/21/2026, 8:26 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 81%)
    2/21/2026, 8:28 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 82%)
    2/21/2026, 8:29 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 83%)
    2/21/2026, 8:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 84%)
    2/21/2026, 8:32 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 85%)
    2/21/2026, 8:33 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 86%)
    2/21/2026, 8:34 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 87%)
    2/21/2026, 8:36 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 88%)
    2/21/2026, 8:37 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 89%)
    2/21/2026, 8:39 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 90%)
    2/21/2026, 8:40 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 91%)
    2/21/2026, 8:42 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 92%)
    2/21/2026, 8:44 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 93%)
    2/21/2026, 8:46 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 94%)
    2/21/2026, 8:48 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 95%)
    2/21/2026, 8:50 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 96%)
    2/21/2026, 8:52 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 97%)
    2/21/2026, 8:55 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 98%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 99%)
    2/21/2026, 8:58 PM Received power source state: Battery Powered (lowPowerMode: false, status: charging, level: 100%)
    2/21/2026, 9:30 PM Received power source state: Battery Powered (lowPowerMode: false, status: charged, level: 100%)Current power state: Full Power



== DISPLAYABLE CONTENT STATE:

    updateIdentifier: 10124
    buildingState: Running
    isUpdateInProgress: false
    providers [
        Registry[Registry-ContentView.swift#1[preview] (line 115)] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #44
            
            ==================================
            
            |  CrashReportError: Bbudget Me crashed
            |  
            |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
            |  
            |  Process:             Bbudget Me [17013]
            |  Path:                <none>
            |  
            |  Date/Time:           2026-02-22 04:23:42 +0000
            |  
            |  Application Specific Information:
            |      dyld:
            |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
            |      libsystem_sim_platform.dylib:
            |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
            |  
            |  Crashing Thread:
            |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
            |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
            |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
            |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
            |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
            |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
            |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
            |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
            |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
            |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
            |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
            |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
            |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
            |  13  SwiftUI                             0x00054742c static App.main() + 148
            |  14  ???                                 0x34004c468 ???
            |  15  ???                                 0x34004c514 ???
            |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
            |  17  PreviewsInjection                   0x000025a78 ???
            |  18  PreviewsInjection                   0x0000263a8 ???
            |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
            |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
            |  21  XOJITExecutor                       0x0000022c0 ???
            |  22  PreviewsInjection                   0x000026218 ???
            |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
            |  24  ???                                 0x1003753d0 ???
            |  25  dyld                                0x000006b98 start + 6076
            |  
            |  Binary Images:
            |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
            |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
            |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
            |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
            |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
            |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
            |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
            |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
            |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
            |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
            |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
            |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
            |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
            |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
            |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
            |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
            |  
            |  EOF
            |  
            |  ==================================
            |  
            |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
            |  |  
            |  |  ==================================
            |  |  
            |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
            |  |  |  
            |  |  |  BSTransactionError (1):
            |  |  |  ==error-description: Process failed to launch.
            |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
            |  |  |  ==error-reason: process launch failed
            |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
            |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>
        }
    ]
    registries [
        Registry-ContentView.swift#1[preview] {
            status: Failed: GroupRecordingError
            
            Error encountered during update group #44
            
            ==================================
            
            |  CrashReportError: Bbudget Me crashed
            |  
            |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
            |  
            |  Process:             Bbudget Me [17013]
            |  Path:                <none>
            |  
            |  Date/Time:           2026-02-22 04:23:42 +0000
            |  
            |  Application Specific Information:
            |      dyld:
            |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
            |      libsystem_sim_platform.dylib:
            |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
            |  
            |  Crashing Thread:
            |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
            |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
            |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
            |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
            |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
            |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
            |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
            |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
            |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
            |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
            |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
            |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
            |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
            |  13  SwiftUI                             0x00054742c static App.main() + 148
            |  14  ???                                 0x34004c468 ???
            |  15  ???                                 0x34004c514 ???
            |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
            |  17  PreviewsInjection                   0x000025a78 ???
            |  18  PreviewsInjection                   0x0000263a8 ???
            |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
            |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
            |  21  XOJITExecutor                       0x0000022c0 ???
            |  22  PreviewsInjection                   0x000026218 ???
            |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
            |  24  ???                                 0x1003753d0 ???
            |  25  dyld                                0x000006b98 start + 6076
            |  
            |  Binary Images:
            |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
            |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
            |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
            |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
            |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
            |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
            |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
            |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
            |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
            |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
            |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
            |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
            |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
            |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
            |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
            |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
            |  
            |  EOF
            |  
            |  ==================================
            |  
            |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
            |  |  
            |  |  ==================================
            |  |  
            |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
            |  |  |  
            |  |  |  BSTransactionError (1):
            |  |  |  ==error-description: Process failed to launch.
            |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
            |  |  |  ==error-reason: process launch failed
            |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
            |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>
            ContentView {
                canvasContent {
                    isStale: true
                    states {
                        livePreview: failed: (reason: PreviewsUI.DisplayableContent.Preview.State.FailedReason.failed(GroupRecordingError
                        
                        Error encountered during update group #44
                        
                        ==================================
                        
                        |  CrashReportError: Bbudget Me crashed
                        |  
                        |  Bbudget Me crashed. Check ~/Library/Logs/DiagnosticReports for crash logs from your application.
                        |  
                        |  Process:             Bbudget Me [17013]
                        |  Path:                <none>
                        |  
                        |  Date/Time:           2026-02-22 04:23:42 +0000
                        |  
                        |  Application Specific Information:
                        |      dyld:
                        |          dyld config: DYLD_SHARED_CACHE_DIR=/Library/Developer/CoreSimulator/Caches/dyld/24G517/com.apple.CoreSimulator.SimRuntime.iOS-26-2.23C54/ DYLD_ROOT_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot DYLD_LIBRARY_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_INSERT_LIBRARIES=@executable_path/__preview.dylib:/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib/libLogRedirect.dylib:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib:/System/Library/PrivateFrameworks/LiveExecutionResultsProbe.framework/LiveExecutionResultsProbe:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib:/System/Library/PrivateFrameworks/PreviewsInjection.framework/PreviewsInjection DYLD_FRAMEWORK_PATH=/Users/aj/Library/Developer/Xcode/DerivedData/Bbudget_Me-fnuayfvaxeummjajknyzwartgpju/Build/Products/Debug-iphonesimulator DYLD_FALLBACK_FRAMEWORK_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/System/Library/Frameworks DYLD_FALLBACK_LIBRARY_PATH=/Library/Developer/CoreSimulator/Volumes/iOS_23C54/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS 26.2.simruntime/Contents/Resources/RuntimeRoot/usr/lib
                        |      libsystem_sim_platform.dylib:
                        |          CoreSimulator 1051.17.7 - Device: iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) - Runtime: iOS 26.2 (23C54) - DeviceType: iPhone 17 Pro
                        |  
                        |  Crashing Thread:
                        |  0   libswiftCore.dylib                  0x000010538 swift::_buildDemanglingForContext(swift::TargetContextDescriptor<swift::InProcess> const*, __swift::__runtime::llvm::ArrayRef<swift::Demangle::__runtime::Node*>, swift::Demangle::__runtime::Demangler&) + 132
                        |  1   libswiftCore.dylib                  0x000010fcc _swift_buildDemanglingForMetadata + 348
                        |  2   libswiftCore.dylib                  0x00000d228 swift::nameForMetadata(swift::TargetMetadata<swift::InProcess> const*, bool) + 404
                        |  3   libswiftCore.dylib                  0x00000d52c swift_getTypeName + 420
                        |  4   libswiftCore.dylib                  0x000036ca8 swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 868
                        |  5   libswiftCore.dylib                  0x000034880 swift_getAssociatedTypeWitness + 48
                        |  6   SwiftUI                             0x000ed5b4c closure #1 in AppGraph.init<A>(app:) + 184
                        |  7   SwiftUI                             0x000ed61e0 closure #1 in AppGraph.instantiateOutputs() + 632
                        |  8   SwiftUI                             0x000ed5e20 AppGraph.instantiateOutputs() + 224
                        |  9   SwiftUICore                         0x00073a954 GraphHost.instantiate() + 304
                        |  10  SwiftUI                             0x0007b952c closure #1 in runApp<A>(_:) + 160
                        |  11  SwiftUICore                         0x00050ede4 static Update.dispatchImmediately<A>(reason:_:) + 300
                        |  12  SwiftUI                             0x0007b9344 runApp<A>(_:) + 144
                        |  13  SwiftUI                             0x00054742c static App.main() + 148
                        |  14  ???                                 0x34004c468 ???
                        |  15  ???                                 0x34004c514 ???
                        |  16  Bbudget Me                          0x000001460 __debug_blank_executor_run_user_entry_point + 148
                        |  17  PreviewsInjection                   0x000025a78 ???
                        |  18  PreviewsInjection                   0x0000263a8 ???
                        |  19  PreviewsInjection                   0x0000262cc __previews_injection_run_user_entrypoint + 12
                        |  20  XOJITExecutor                       0x000005e00 __xojit_executor_run_program_wrapper + 1460
                        |  21  XOJITExecutor                       0x0000022c0 ???
                        |  22  PreviewsInjection                   0x000026218 ???
                        |  23  Bbudget Me                          0x000000c30 __debug_blank_executor_main + 992
                        |  24  ???                                 0x1003753d0 ???
                        |  25  dyld                                0x000006b98 start + 6076
                        |  
                        |  Binary Images:
                        |         0x1004a8000 dyld <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
                        |         0x1002c4000 Bbudget Me <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
                        |         0x1002e8000 __preview.dylib <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
                        |         0x100308000 libLogRedirect.dylib <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
                        |         0x10031c000 libLiveExecutionResultsLogger.dylib <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
                        |         0x100430000 libPlaygrounds.dylib <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
                        |         0x100474000 libsystem_platform.dylib <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
                        |         0x100720000 libsystem_kernel.dylib <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
                        |         0x100654000 libsystem_pthread.dylib <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
                        |         0x197628000 libswiftCore.dylib <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
                        |         0x1d9dd4000 SwiftUI <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
                        |         0x1daf5b000 SwiftUICore <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
                        |         0x000000000 ??? <00000000-0000-0000-0000-000000000000> ???
                        |         0x241bf1000 PreviewsInjection <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
                        |         0x254133000 XOJITExecutor <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
                        |         0x1801bf000 libdispatch.dylib <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib
                        |  
                        |  EOF
                        |  
                        |  ==================================
                        |  
                        |  |  FailedToLaunchAppError: Failed to launch com.josephthomas.Bbudget-Me
                        |  |  
                        |  |  ==================================
                        |  |  
                        |  |  |  [Remote] NSError.BSTransactionError.1: The operation couldn’t be completed. Transaction failed. Process failed to launch. (process launch failed)
                        |  |  |  
                        |  |  |  BSTransactionError (1):
                        |  |  |  ==error-description: Process failed to launch.
                        |  |  |  ==NSLocalizedFailureReason: Transaction failed. Process failed to launch. (process launch failed)
                        |  |  |  ==error-reason: process launch failed
                        |  |  |  ==precipitating-error: Error Domain=FBProcessExit Code=4 "The process crashed." UserInfo={NSLocalizedFailureReason=The process crashed., BSErrorCodeDescription=crash, NSUnderlyingError=0x600000e52c10 {Error Domain=signal Code=10 "SIGBUS(10)" UserInfo={NSLocalizedFailureReason=SIGBUS(10)}}}
                        |  |  |  ==transaction: <FBApplicationProcessLaunchTransaction: 0x600003900d00>), update: PreviewsUI.DisplayableContent.Preview.State.UpdatingState(groupSeed: PreviewsUI.UpdateGroupSeed.pipelineV2, capabilities: Optional(PreviewsPipeline.PreviewCapabilities(previewMetadata: PreviewMetadata(SwiftUI.View, displayName: nil), contentOverride: nil, supportedVariantGroups: [PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.ColorScheme, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Color Scheme", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.ColorScheme.dark)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Color Scheme", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.Orientation, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Orientation", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.Orientation.landscapeLeft)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Orientation", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.DynamicTypeSize, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Dynamic Type", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.range, defaultVariant: Ultraviolet.DynamicTypeSize.xxxLarge)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Dynamic Type", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)])])))], supportsTogglingExternalHosting: false, supportsContinuousLivePreview: false, supportsStaticPreviews: true, supportsScreenshotRequests: true, staticUpdateMode: PreviewsPipeline.ExecutionPointProperties.UpdateMode.static, destinationDisplayName: "iPhone 17 Pro")), configuration: Optional(Registry-ContentView.swift#1[preview] [hosted(location: PreviewsPipeline.ExecutionPointProperties.HostLocation.inCanvas), from Editor(7388) for local, variant: nil, overrides: []])), previous: Optional(PreviewsUI.DisplayableContent.Preview.State.Viewable(status: PreviewsUI.DisplayableContent.Preview.State.Viewable.Status.stale(PreviewsDeveloperTools.SimulatorInteractivePreviewViewable(screenInfo: PreviewsDeveloperTools.SimulatorScreenInfo(device: SimDevice : iPhone 17 Pro (DBBDB533-ECFE-47C5-BAF2-B9920DBDD018) : state={ Booted } deviceType={ com.apple.CoreSimulator.SimDeviceType.iPhone-17-Pro: SimDeviceType : iPhone 17 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-17-Pro) } runtime={ com.apple.CoreSimulator.SimRuntime.iOS-26-2: SimRuntime : iOS 26.2 (26.2 - 23C54) - com.apple.CoreSimulator.SimRuntime.iOS-26-2 }, sizeInPixels: (1206.0, 2622.0), scaleFactor: 3.0), screen: SimDeviceScreen { device="iOS 26.2 (23C54) - iPhone 17 Pro", ID=133, uniqueId=684F2EB9-CA09-4969-9C94-3717E4500020, connected, type=scene, name="684F2EB9-CA09-4969-9C94-3717E4500020", size=1206x2622@3x, power=on, rendering }, contentDomain: PreviewsMessagingHost.PreviewContentDomain.view, traits: PreviewsMessagingHost.PreviewTraits(layout: PreviewsMessagingHost.PreviewTraits.Layout.device, orientation: PreviewsMessagingHost.PreviewTraits.Orientation.portrait), interfaceOrientation: PreviewsMessagingHost.PreviewTraits.Orientation.portrait, previewGeometry: PreviewsPipeline.PreviewGeometry(selectionSupport: PreviewsPipeline.PreviewGeometry.SelectionSupport.unsupported, sizeInPixels: (1206.0, 2622.0), cornerRadius: 0.0, scaleFactor: 3.0), deviceChrome: Optional(PreviewsDeveloperTools.StaticPreviewViewable.Chrome.device(PreviewsDeveloperTools.DeviceChromeDescription(chrome: SimulatorKit.SimDeviceChrome(identifier: "com.apple.dt.devicekit.chrome.phone11", images: SimulatorKit.SimDeviceChrome.Images(topLeft: "Phone TL", top: "Phone Top", topRight: "Phone TR", left: "Phone Left", right: "Phone Right", bottomLeft: "Phone BL", bottom: "Phone Base", bottomRight: "Phone BR", composite: Optional("PhoneComposite"), simpleComposite: nil, screen: "Screen", sizing: SimulatorKit.SimDeviceChrome.Images.Sizing(leftWidth: 18.0, rightWidth: 18.0, topHeight: 18.0, bottomHeight: 18.0), padding: (9.0, 0.0), stand: nil), inputs: [SimulatorKit.SimDeviceChrome.Input(name: "action", accessibilityTitle: Optional("Action"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 11, usage: 45, image: "Mute BTN", imageDown: "Mute BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 160.0), rollover: (3.0, 160.0))), SimulatorKit.SimDeviceChrome.Input(name: "volume-up", accessibilityTitle: Optional("Volume Up"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 233, image: "Vol BTN", imageDown: "Vol BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 221.0), rollover: (3.0, 221.0))), SimulatorKit.SimDeviceChrome.Input(name: "volume-down", accessibilityTitle: Optional("Volume Down"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 234, image: "Vol BTN", imageDown: "Vol BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.left, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (8.0, 300.0), rollover: (3.0, 300.0))), SimulatorKit.SimDeviceChrome.Input(name: "power", accessibilityTitle: Optional("Sleep/Wake"), type: SimulatorKit.SimDeviceChrome.InputType.button, usagePage: 12, usage: 48, image: "X_Power BTN", imageDown: "X_Power BTN Dn", imageDownDrawMode: SimulatorKit.SimDeviceChrome.ImageDrawMode.replace, onTop: false, anchor: SimulatorKit.SimDeviceChrome.Anchor.right, align: SimulatorKit.SimDeviceChrome.Align.leading, offsets: SimulatorKit.SimDeviceChrome.Offsets(normal: (-8.0, 262.0), rollover: (-3.0, 262.0)))], resizeRects: [SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerLeft, scales: true, centerPoint: (28.0, 18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerLeft, scales: true, centerPoint: (18.0, 28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerRight, scales: true, centerPoint: (-28.0, 18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.lowerRight, scales: true, centerPoint: (-18.0, 28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperRight, scales: true, centerPoint: (-28.0, -18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperRight, scales: true, centerPoint: (-18.0, -28.0), size: (20.0, 40.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperLeft, scales: true, centerPoint: (28.0, -18.0), size: (40.0, 20.0)), SimulatorKit.SimDeviceChrome.ResizeRect(type: SimulatorKit.SimDeviceChrome.ResizeRectType.upperLeft, scales: true, centerPoint: (18.0, -28.0), size: (20.0, 40.0))], paths: Optional(SimulatorKit.SimDeviceChrome.Paths(outsideBorder: SimulatorKit.SimDeviceChrome.SimpleBorder(insets: SimulatorKit.SimDeviceChrome.Insets(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0), cornerRadiusX: 80.0, cornerRadiusY: 80.0))), bundle: <SimProfileBundle: 0x60000d69e6f0 /Library/Developer/DeviceKit/Chrome/phone11.devicechrome>), maskingImage: Optional(<NSImage 0x600020ee6d00 Size={1206, 2622} RepProvider=<NSImageArrayRepProvider: 0x600003d4b6c0, reps:(
                            "NSPDFImageRep 0x600015f83e30 Size={1206, 2622} ColorSpace=Generic RGB colorspace BPS=0 Pixels=0x0 Alpha=NO AppearanceName=(null)"
                        )>>), mainScreenSize: (1206.0, 2622.0), mainScreenScale: 3.0))))), capabilities: PreviewsPipeline.PreviewCapabilities(previewMetadata: PreviewMetadata(SwiftUI.View, displayName: nil), contentOverride: nil, supportedVariantGroups: [PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.ColorScheme, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Color Scheme", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.ColorScheme.dark)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Color Scheme", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.light, displayName: "Light Appearance", renderEffects: [Ultraviolet.ColorScheme.light], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.ColorScheme.dark, displayName: "Dark Appearance", renderEffects: [Ultraviolet.ColorScheme.dark], interfaceOrientationOverride: nil)])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.Orientation, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Orientation", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.list, defaultVariant: Ultraviolet.Orientation.landscapeLeft)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Orientation", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.portrait, displayName: "Portrait", renderEffects: [Ultraviolet.Orientation.portrait], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.portrait)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeLeft, displayName: "Landscape Left", renderEffects: [Ultraviolet.Orientation.landscapeLeft], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeLeft)), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.Orientation.landscapeRight, displayName: "Landscape Right", renderEffects: [Ultraviolet.Orientation.landscapeRight], interfaceOrientationOverride: Optional(PreviewsMessagingHost.PreviewTraits.Orientation.landscapeRight))])]))), PreviewsMessagingHost.PreviewVariantGroup(id: Ultraviolet.DynamicTypeSize, associatedGroupIDs: Set([]), overridesConfiguration: Optional(PreviewsMessagingHost.PreviewOverridesConfiguration(title: "Dynamic Type", selectionBehavior: PreviewsMessagingHost.PreviewOverridesConfiguration.SelectionBehavior.singleSelect(PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration(style: PreviewsMessagingHost.PreviewOverridesConfiguration.SingleSelectConfiguration.Style.range, defaultVariant: Ultraviolet.DynamicTypeSize.xxxLarge)), variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)], childVariantConfigurations: [:])), variantsConfiguration: Optional(PreviewsMessagingHost.PreviewVariantsConfiguration(title: "Dynamic Type", sections: [PreviewsMessagingHost.PreviewVariantsConfiguration.Section(title: nil, variants: [PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xSmall, displayName: "X Small", renderEffects: [Ultraviolet.DynamicTypeSize.xSmall], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.small, displayName: "Small", renderEffects: [Ultraviolet.DynamicTypeSize.small], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.medium, displayName: "Medium", renderEffects: [Ultraviolet.DynamicTypeSize.medium], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.large, displayName: "Large", renderEffects: [Ultraviolet.DynamicTypeSize.large], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xLarge, displayName: "X Large", renderEffects: [Ultraviolet.DynamicTypeSize.xLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxLarge, displayName: "XX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.xxxLarge, displayName: "XXX Large", renderEffects: [Ultraviolet.DynamicTypeSize.xxxLarge], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility1, displayName: "AX 1", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility1], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility2, displayName: "AX 2", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility2], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility3, displayName: "AX 3", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility3], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility4, displayName: "AX 4", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility4], interfaceOrientationOverride: nil), PreviewsMessagingHost.PreviewVariant(id: Ultraviolet.DynamicTypeSize.accessibility5, displayName: "AX 5", renderEffects: [Ultraviolet.DynamicTypeSize.accessibility5], interfaceOrientationOverride: nil)])])))], supportsTogglingExternalHosting: false, supportsContinuousLivePreview: false, supportsStaticPreviews: true, supportsScreenshotRequests: true, staticUpdateMode: PreviewsPipeline.ExecutionPointProperties.UpdateMode.static, destinationDisplayName: "iPhone 17 Pro"), configuration: Registry-ContentView.swift#1[preview] [hosted(location: PreviewsPipeline.ExecutionPointProperties.HostLocation.inCanvas), from Editor(7388) for local, variant: nil, overrides: []])))
                        staticPreview: disabled
                        Light Appearance: disabled
                        Dark Appearance: disabled
                        Portrait: disabled
                        Landscape Left: disabled
                        Landscape Right: disabled
                        X Small: disabled
                        Small: disabled
                        Medium: disabled
                        Large: disabled
                        X Large: disabled
                        XX Large: disabled
                        XXX Large: disabled
                        AX 1: disabled
                        AX 2: disabled
                        AX 3: disabled
                        AX 4: disabled
                        AX 5: disabled
                    }
                }
            }
        }
    ]




---

**Cursor**


Checking the app entry point and main types. Crash occurs during SwiftUI's App init when resolving type metadata (swift_getTypeName / swift_getAssociatedTypeWitness).



Checking BudgetStore and replacing the conditional View extension with a single-type ViewModifier to avoid metadata confusion during AppGraph init:



Replacing the conditional View extension with a single-type ViewModifier to avoid metadata lookup issues that can trigger Preview/JIT crashes.



Checking whether the Preview is the culprit — adding a lighter-weight preview option and ensuring the modifier doesn’t introduce problematic types:



Type-erasing the modifier's body so both branches return the same concrete type (AnyView), which can avoid metadata crashes in the Preview runtime.



Here’s what was changed and what to try next.

**What was done**

1. **Replaced the conditional View extension with a `ViewModifier`**  
   The previous `@ViewBuilder` with `if #available` produced different concrete view types (with and without `.toolbarBackground`). That can trigger Swift metadata lookups that sometimes crash in the Preview/JIT runtime. A single modifier type is safer.

2. **Type-erased the modifier’s body with `AnyView`**  
   Both branches of the modifier now return `AnyView`, so the modifier always returns the same type. That avoids the runtime having to deal with a conditional view type and can prevent the kind of `swift_getAssociatedTypeWitness` / SIGBUS crash you’re seeing.

**If Previews still crash**

This stack trace (crash in `AppGraph.init` / `swift_getTypeName` when launching the app for Previews) is often a **Preview/JIT + Simulator** issue rather than your app logic. Try:

1. **Run without Previews**  
   Use **Product → Run** (⌘R) and run on the iPhone 17 Pro simulator. If the app runs fine there, the problem is likely limited to the Preview/JIT path.

2. **Turn off JIT for Previews**  
   In Xcode: **Product → Scheme → Edit Scheme… → Run → Options** and disable **“Previews: JIT”** (or the “Use JIT for Previews” option). Then try the Canvas preview again.

3. **Clean and rebuild**  
   **Product → Clean Build Folder** (⇧⌘K), then build and run (or refresh Previews) again.

4. **Preview a smaller view**  
   If the full `ContentView()` preview keeps crashing, open a file like `DashboardView.swift` or `BudgetView.swift` and use a `#Preview` that only shows that screen (with a `BudgetStore()` in the environment). That reduces the type graph Previews has to build and can avoid the crash.

Summary: the code is now adjusted to avoid conditional view types and to use a single, type-erased modifier so Previews are less likely to hit the metadata crash. If it still happens, use the steps above to confirm the app runs and to work around Preview/JIT issues.

---

**User**

-------------------------------------
Translated Report (Full Report Below)
-------------------------------------

Incident Identifier: D558D485-CF4E-4C90-BE39-B5AAC36C6365
CrashReporter Key:   2F662B95-8346-6377-471D-C10CC6CABFBF
Hardware Model:      MacBookAir10,1
Process:             Bbudget Me [17898]
Path:                /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
Identifier:          com.josephthomas.Bbudget-Me
Version:             1.0 (1)
Code Type:           ARM-64 (Native)
Role:                Foreground
Parent Process:      launchd_sim [7157]
Coalition:           com.apple.CoreSimulator.SimDevice.DBBDB533-ECFE-47C5-BAF2-B9920DBDD018 [4454]
Responsible Process: SimulatorTrampoline [6546]

Date/Time:           2026-02-21 23:52:09.8092 -0500
Launch Time:         2026-02-21 23:52:08.6295 -0500
OS Version:          macOS 15.7.4 (24G517)
Release Type:        User
Report Version:      104

Exception Type:  EXC_BAD_ACCESS (SIGBUS)
Exception Subtype: KERN_PROTECTION_FAILURE at 0x00000003401f1998
Exception Codes: 0x0000000000000002, 0x00000003401f1998
VM Region Info: 0x3401f1998 is in 0x340050000-0x348000000;  bytes after start: 1710488  bytes before end: 132179559
      REGION TYPE                    START - END         [ VSIZE] PRT/MAX SHRMOD  REGION DETAIL
      mapped file                 34004c000-340050000    [   16K] r-x/rwx SM=COW  Object_id=14ea182e
--->  VM_ALLOCATE                 340050000-348000000    [127.7M] ---/rwx SM=NUL  
      VM_ALLOCATE                 348000000-350000000    [128.0M] ---/rwx SM=NUL  
Termination Reason: SIGNAL 10 Bus error: 10
Terminating Process: exc handler [17898]

Triggered by Thread:  0

Thread 0 Crashed::  Dispatch queue: com.apple.main-thread
0   libswiftCore.dylib            	       0x19766d904 swift::ResolveAsSymbolicReference::operator()(swift::Demangle::__runtime::SymbolicReferenceKind, swift::Demangle::__runtime::Directness, int, void const*) + 152
1   libswiftCore.dylib            	       0x1976a3230 swift::Demangle::__runtime::Demangler::demangleSymbolicReference(unsigned char) + 352
2   libswiftCore.dylib            	       0x19769e59c swift::Demangle::__runtime::Demangler::demangleType(__swift::__runtime::llvm::StringRef, std::__1::function<swift::Demangle::__runtime::Node* (swift::Demangle::__runtime::SymbolicReferenceKind, swift::Demangle::__runtime::Directness, int, void const*)>) + 224
3   libswiftCore.dylib            	       0x197675858 swift_getTypeByMangledNameImpl(swift::MetadataRequest, __swift::__runtime::llvm::StringRef, void const* const*, std::__1::function<void const* (unsigned int, unsigned int)>, std::__1::function<swift::TargetWitnessTable<swift::InProcess> const* (swift::TargetMetadata<swift::InProcess> const*, unsigned int)>) + 496
4   libswiftCore.dylib            	       0x19766fc00 swift_getTypeByMangledName + 272
5   libswiftCore.dylib            	       0x19765eaac swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*) + 360
6   libswiftCore.dylib            	       0x19765c880 swift_getAssociatedTypeWitness + 48
7   SwiftUI                       	       0x1daca9b4c closure #1 in AppGraph.init<A>(app:) + 184
8   SwiftUI                       	       0x1dacaa1e0 closure #1 in AppGraph.instantiateOutputs() + 632
9   SwiftUI                       	       0x1daca9e20 AppGraph.instantiateOutputs() + 224
10  SwiftUICore                   	       0x1db695954 GraphHost.instantiate() + 304
11  SwiftUI                       	       0x1da58d52c closure #1 in runApp<A>(_:) + 160
12  SwiftUICore                   	       0x1db469de4 static Update.dispatchImmediately<A>(reason:_:) + 300
13  SwiftUI                       	       0x1da58d344 runApp<A>(_:) + 144
14  SwiftUI                       	       0x1da31b42c static App.main() + 148
15  ???                           	       0x34004c468 ???
16  ???                           	       0x34004c514 ???
17  Bbudget Me                    	       0x102c71460 __debug_blank_executor_run_user_entry_point + 148
18  PreviewsInjection             	       0x241c16a78 0x241bf1000 + 154232
19  PreviewsInjection             	       0x241c173a8 0x241bf1000 + 156584
20  PreviewsInjection             	       0x241c172cc __previews_injection_run_user_entrypoint + 12
21  XOJITExecutor                 	       0x254138e00 __xojit_executor_run_program_wrapper + 1460
22  XOJITExecutor                 	       0x2541352c0 0x254133000 + 8896
23  PreviewsInjection             	       0x241c17218 0x241bf1000 + 156184
24  Bbudget Me                    	       0x102c70c30 __debug_blank_executor_main + 992
25  ???                           	       0x102ea53d0 ???
26  dyld                          	       0x102d7ab98 start + 6076

Thread 1:
0   libsystem_pthread.dylib       	       0x102cc9984 start_wqthread + 0

Thread 2:
0   libsystem_pthread.dylib       	       0x102cc9984 start_wqthread + 0

Thread 3::  Dispatch queue: com.apple.xojit_executor.wrapper_functions
0   libsystem_kernel.dylib        	       0x103140aec semaphore_wait_trap + 8
1   libdispatch.dylib             	       0x1801c2258 _dispatch_sema4_wait + 24
2   libdispatch.dylib             	       0x1801c27e0 _dispatch_semaphore_wait_slow + 128
3   XOJITExecutor                 	       0x254135370 0x254133000 + 9072
4   XOJITExecutor                 	       0x254138790 __xojit_executor_run_program_on_main_thread + 224
5   XOJITExecutor                 	       0x2541369f8 0x254133000 + 14840
6   XOJITExecutor                 	       0x254136730 0x254133000 + 14128
7   libdispatch.dylib             	       0x1801c07a8 _dispatch_call_block_and_release + 24
8   libdispatch.dylib             	       0x1801db4b0 _dispatch_client_callout + 12
9   libdispatch.dylib             	       0x1801c55d0 _dispatch_continuation_pop + 868
10  libdispatch.dylib             	       0x1801c478c _dispatch_async_redirect_invoke + 852
11  libdispatch.dylib             	       0x1801d3b14 _dispatch_root_queue_drain + 336
12  libdispatch.dylib             	       0x1801d4510 _dispatch_worker_thread2 + 252
13  libsystem_pthread.dylib       	       0x102ccab4c _pthread_wqthread + 228
14  libsystem_pthread.dylib       	       0x102cc998c start_wqthread + 8

Thread 4:
0   libsystem_pthread.dylib       	       0x102cc9984 start_wqthread + 0

Thread 5:
0   libsystem_pthread.dylib       	       0x102cc9984 start_wqthread + 0


Thread 0 crashed with ARM Thread State (64-bit):
    x0: 0x000000016d18bb98   x1: 0x0000000000000000   x2: 0x00000003401f1998   x3: 0x0000000000004659
    x4: 0x0000000340048007   x5: 0x000000016d18c4c8   x6: 0x0000000000000001   x7: 0x000000016d18b0b0
    x8: 0x0000000000000001   x9: 0x000000034004c660  x10: 0x000000034004c660  x11: 0x0000000000000001
   x12: 0x0000000000000000  x13: 0x0000000000000001  x14: 0x00000001976a0e50  x15: 0x000000000000000e
   x16: 0x000000019765c850  x17: 0x000000000000002d  x18: 0x0000000000000000  x19: 0x0000000000000000
   x20: 0x0000000000000001  x21: 0x0000000000000000  x22: 0x000000016d18b970  x23: 0x000000016d18c4e8
   x24: 0x000000016d18c4c8  x25: 0x000000016d18c3b0  x26: 0x0000000000000002  x27: 0xffffffffffffffff
   x28: 0x00000001f5e42528   fp: 0x000000016d18b7f0   lr: 0x00000001976a3230
    sp: 0x000000016d18b7a0   pc: 0x000000019766d904 cpsr: 0x80001000
   far: 0x00000003401f1998  esr: 0x92000007 (Data Abort) byte read Translation fault

Binary Images:
       0x102d74000 -        0x102e0ffff dyld (*) <057e5157-4105-3787-b549-e605eb246448> /usr/lib/dyld
       0x102c70000 -        0x102c73fff com.josephthomas.Bbudget-Me (1.0) <8929153e-2d7f-3101-a62f-b7cde6587a2f> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/Bbudget Me
       0x102c94000 -        0x102c97fff __preview.dylib (*) <73f02c80-1f02-3076-90bf-09834251b7aa> /Users/USER/Library/Developer/Xcode/UserData/Previews/Simulator Devices/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018/data/Containers/Bundle/Application/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925/Bbudget Me.app/__preview.dylib
       0x102cb4000 -        0x102cb7fff libLogRedirect.dylib (*) <6de309ef-3434-318a-b6d1-f91eda806f38> /Volumes/VOLUME/*/libLogRedirect.dylib
       0x102f60000 -        0x102f8bfff libLiveExecutionResultsLogger.dylib (*) <6997a33e-63fe-3e61-bdea-82cd5d0063e4> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libLiveExecutionResultsLogger.dylib
       0x102fb4000 -        0x102fcffff libPlaygrounds.dylib (*) <66fa66e5-e7c2-31d5-a544-c02811760dae> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator/libPlaygrounds.dylib
       0x102d28000 -        0x102d2ffff libsystem_platform.dylib (*) <781e89e0-7f3e-381c-9c6f-758ae67555f4> /usr/lib/system/libsystem_platform.dylib
       0x103140000 -        0x10317bfff libsystem_kernel.dylib (*) <5f6ba938-e999-3d05-8a86-9d93a3c603fb> /usr/lib/system/libsystem_kernel.dylib
       0x102cc8000 -        0x102cd7fff libsystem_pthread.dylib (*) <ec9f2051-41f4-3625-9524-1e7e7467d2f7> /usr/lib/system/libsystem_pthread.dylib
       0x197628000 -        0x197acd4df libswiftCore.dylib (*) <c62f8d53-88b1-335b-991e-5bc56d71d347> /Volumes/VOLUME/*/libswiftCore.dylib
       0x1d9dd4000 -        0x1daf5a47f com.apple.SwiftUI (7.2.5.1.102) <719cf349-8c4a-3054-9536-23eb53648ee0> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
       0x1daf5b000 -        0x1dbc8651f com.apple.SwiftUICore (7.2.5.1.102) <f7e2bb37-d266-38fc-b8cc-80664c89f0b4> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
               0x0 - 0xffffffffffffffff ??? (*) <00000000-0000-0000-0000-000000000000> ???
       0x241bf1000 -        0x241c6831f com.apple.dt.PreviewsInjection (16.0) <c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8> /Volumes/VOLUME/*/PreviewsInjection.framework/PreviewsInjection
       0x254133000 -        0x2541400da com.apple.xojit.XOJITExecutor (1.0) <bd1646da-1a13-3a34-95e6-0b8a8e602430> /Volumes/VOLUME/*/XOJITExecutor.framework/XOJITExecutor
       0x1801bf000 -        0x1802041bf libdispatch.dylib (*) <ec9ecf10-959d-3da1-a055-6de970159b9d> /Volumes/VOLUME/*/libdispatch.dylib

EOF

-----------
Full Report
-----------

{"app_name":"Bbudget Me","timestamp":"2026-02-21 23:52:13.00 -0500","app_version":"1.0","slice_uuid":"8929153e-2d7f-3101-a62f-b7cde6587a2f","build_version":"1","platform":7,"bundleID":"com.josephthomas.Bbudget-Me","share_with_app_devs":0,"is_first_party":0,"bug_type":"309","os_version":"macOS 15.7.4 (24G517)","roots_installed":0,"name":"Bbudget Me","incident_id":"D558D485-CF4E-4C90-BE39-B5AAC36C6365"}
{
  "uptime" : 24000,
  "procRole" : "Foreground",
  "version" : 2,
  "userID" : 501,
  "deployVersion" : 210,
  "modelCode" : "MacBookAir10,1",
  "coalitionID" : 4454,
  "osVersion" : {
    "train" : "macOS 15.7.4",
    "build" : "24G517",
    "releaseType" : "User"
  },
  "captureTime" : "2026-02-21 23:52:09.8092 -0500",
  "codeSigningMonitor" : 1,
  "incident" : "D558D485-CF4E-4C90-BE39-B5AAC36C6365",
  "pid" : 17898,
  "translated" : false,
  "cpuType" : "ARM-64",
  "roots_installed" : 0,
  "bug_type" : "309",
  "procLaunch" : "2026-02-21 23:52:08.6295 -0500",
  "procStartAbsTime" : 598685272924,
  "procExitAbsTime" : 598713174821,
  "procName" : "Bbudget Me",
  "procPath" : "\/Users\/USER\/Library\/Developer\/Xcode\/UserData\/Previews\/Simulator Devices\/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018\/data\/Containers\/Bundle\/Application\/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925\/Bbudget Me.app\/Bbudget Me",
  "bundleInfo" : {"CFBundleShortVersionString":"1.0","CFBundleVersion":"1","CFBundleIdentifier":"com.josephthomas.Bbudget-Me"},
  "storeInfo" : {"deviceIdentifierForVendor":"F00C2FBC-9321-503B-B266-2D9E1F46C733","thirdParty":true},
  "parentProc" : "launchd_sim",
  "parentPid" : 7157,
  "coalitionName" : "com.apple.CoreSimulator.SimDevice.DBBDB533-ECFE-47C5-BAF2-B9920DBDD018",
  "crashReporterKey" : "2F662B95-8346-6377-471D-C10CC6CABFBF",
  "appleIntelligenceStatus" : {"state":"available"},
  "responsiblePid" : 6546,
  "responsibleProc" : "SimulatorTrampoline",
  "codeSigningID" : "com.josephthomas.Bbudget-Me",
  "codeSigningTeamID" : "",
  "codeSigningFlags" : 570425857,
  "codeSigningValidationCategory" : 10,
  "codeSigningTrustLevel" : 4294967295,
  "codeSigningAuxiliaryInfo" : 0,
  "instructionByteStream" : {"beforePC":"QQEANCgngFI\/BABxAQGfGgAAQPn9e0Wp9E9EqfZXQ6n\/gwGRA8kAFA==","atPC":"SABAuQkRABI\/DQBxoAAAVD8RAHGhAABUYSeAUvP\/\/xfhF4BS8f\/\/Fw=="},
  "bootSessionUUID" : "790233DD-7F72-4E5A-A94C-BAD4FDD9F2B1",
  "sleepWakeUUID" : "258D281B-D99E-4A4D-B4C4-A909A0A2C1B5",
  "sip" : "enabled",
  "vmRegionInfo" : "0x3401f1998 is in 0x340050000-0x348000000;  bytes after start: 1710488  bytes before end: 132179559\n      REGION TYPE                    START - END         [ VSIZE] PRT\/MAX SHRMOD  REGION DETAIL\n      mapped file                 34004c000-340050000    [   16K] r-x\/rwx SM=COW  Object_id=14ea182e\n--->  VM_ALLOCATE                 340050000-348000000    [127.7M] ---\/rwx SM=NUL  \n      VM_ALLOCATE                 348000000-350000000    [128.0M] ---\/rwx SM=NUL  ",
  "exception" : {"codes":"0x0000000000000002, 0x00000003401f1998","rawCodes":[2,13960681880],"type":"EXC_BAD_ACCESS","signal":"SIGBUS","subtype":"KERN_PROTECTION_FAILURE at 0x00000003401f1998"},
  "termination" : {"flags":0,"code":10,"namespace":"SIGNAL","indicator":"Bus error: 10","byProc":"exc handler","byPid":17898},
  "vmregioninfo" : "0x3401f1998 is in 0x340050000-0x348000000;  bytes after start: 1710488  bytes before end: 132179559\n      REGION TYPE                    START - END         [ VSIZE] PRT\/MAX SHRMOD  REGION DETAIL\n      mapped file                 34004c000-340050000    [   16K] r-x\/rwx SM=COW  Object_id=14ea182e\n--->  VM_ALLOCATE                 340050000-348000000    [127.7M] ---\/rwx SM=NUL  \n      VM_ALLOCATE                 348000000-350000000    [128.0M] ---\/rwx SM=NUL  ",
  "extMods" : {"caller":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"system":{"thread_create":0,"thread_set_state":146,"task_for_pid":6},"targeted":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"warnings":0},
  "faultingThread" : 0,
  "threads" : [{"triggered":true,"id":516220,"threadState":{"x":[{"value":6125304728},{"value":0},{"value":13960681880},{"value":18009},{"value":13958938631},{"value":6125307080},{"value":1},{"value":6125301936},{"value":1},{"value":13958956640},{"value":13958956640},{"value":1},{"value":0},{"value":1},{"value":6835277392,"symbolLocation":92,"symbol":"swift::Demangle::__runtime::Demangler::demangleOperator()"},{"value":14},{"value":6834997328,"symbolLocation":0,"symbol":"swift_getAssociatedTypeWitness"},{"value":45},{"value":0},{"value":0},{"value":1},{"value":0},{"value":6125304176},{"value":6125307112},{"value":6125307080},{"value":6125306800},{"value":2},{"value":18446744073709551615},{"value":8420336936,"symbolLocation":0,"symbol":"type metadata for _SceneInputs"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":6835286576},"cpsr":{"value":2147487744},"fp":{"value":6125303792},"sp":{"value":6125303712},"esr":{"value":2449473543,"description":"(Data Abort) byte read Translation fault"},"pc":{"value":6835067140,"matchesCrashFrame":1},"far":{"value":13960681880}},"queue":"com.apple.main-thread","frames":[{"imageOffset":284932,"symbol":"swift::ResolveAsSymbolicReference::operator()(swift::Demangle::__runtime::SymbolicReferenceKind, swift::Demangle::__runtime::Directness, int, void const*)","symbolLocation":152,"imageIndex":9},{"imageOffset":504368,"symbol":"swift::Demangle::__runtime::Demangler::demangleSymbolicReference(unsigned char)","symbolLocation":352,"imageIndex":9},{"imageOffset":484764,"symbol":"swift::Demangle::__runtime::Demangler::demangleType(__swift::__runtime::llvm::StringRef, std::__1::function<swift::Demangle::__runtime::Node* (swift::Demangle::__runtime::SymbolicReferenceKind, swift::Demangle::__runtime::Directness, int, void const*)>)","symbolLocation":224,"imageIndex":9},{"imageOffset":317528,"symbol":"swift_getTypeByMangledNameImpl(swift::MetadataRequest, __swift::__runtime::llvm::StringRef, void const* const*, std::__1::function<void const* (unsigned int, unsigned int)>, std::__1::function<swift::TargetWitnessTable<swift::InProcess> const* (swift::TargetMetadata<swift::InProcess> const*, unsigned int)>)","symbolLocation":496,"imageIndex":9},{"imageOffset":293888,"symbol":"swift_getTypeByMangledName","symbolLocation":272,"imageIndex":9},{"imageOffset":223916,"symbol":"swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest, swift::TargetWitnessTable<swift::InProcess>*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*, swift::TargetProtocolRequirement<swift::InProcess> const*)","symbolLocation":360,"imageIndex":9},{"imageOffset":215168,"symbol":"swift_getAssociatedTypeWitness","symbolLocation":48,"imageIndex":9},{"imageOffset":15555404,"symbol":"closure #1 in AppGraph.init<A>(app:)","symbolLocation":184,"imageIndex":10},{"imageOffset":15557088,"symbol":"closure #1 in AppGraph.instantiateOutputs()","symbolLocation":632,"imageIndex":10},{"imageOffset":15556128,"symbol":"AppGraph.instantiateOutputs()","symbolLocation":224,"imageIndex":10},{"imageOffset":7579988,"symbol":"GraphHost.instantiate()","symbolLocation":304,"imageIndex":11},{"imageOffset":8099116,"symbol":"closure #1 in runApp<A>(_:)","symbolLocation":160,"imageIndex":10},{"imageOffset":5303780,"symbol":"static Update.dispatchImmediately<A>(reason:_:)","symbolLocation":300,"imageIndex":11},{"imageOffset":8098628,"symbol":"runApp<A>(_:)","symbolLocation":144,"imageIndex":10},{"imageOffset":5534764,"symbol":"static App.main()","symbolLocation":148,"imageIndex":10},{"imageOffset":13958956136,"imageIndex":12},{"imageOffset":13958956308,"imageIndex":12},{"imageOffset":5216,"symbol":"__debug_blank_executor_run_user_entry_point","symbolLocation":148,"imageIndex":1},{"imageOffset":154232,"imageIndex":13},{"imageOffset":156584,"imageIndex":13},{"imageOffset":156364,"symbol":"__previews_injection_run_user_entrypoint","symbolLocation":12,"imageIndex":13},{"imageOffset":24064,"symbol":"__xojit_executor_run_program_wrapper","symbolLocation":1460,"imageIndex":14},{"imageOffset":8896,"imageIndex":14},{"imageOffset":156184,"imageIndex":13},{"imageOffset":3120,"symbol":"__debug_blank_executor_main","symbolLocation":992,"imageIndex":1},{"imageOffset":4343878608,"imageIndex":12},{"imageOffset":27544,"symbol":"start","symbolLocation":6076,"imageIndex":0}]},{"id":516233,"frames":[{"imageOffset":6532,"symbol":"start_wqthread","symbolLocation":0,"imageIndex":8}],"threadState":{"x":[{"value":6125875200},{"value":6403},{"value":6125338624},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":4096},"fp":{"value":0},"sp":{"value":6125875200},"esr":{"value":1442840704,"description":" Address size fault"},"pc":{"value":4341930372},"far":{"value":0}}},{"id":516234,"frames":[{"imageOffset":6532,"symbol":"start_wqthread","symbolLocation":0,"imageIndex":8}],"threadState":{"x":[{"value":6126448640},{"value":6147},{"value":6125912064},{"value":0},{"value":409603},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":4096},"fp":{"value":0},"sp":{"value":6126448640},"esr":{"value":1442840704,"description":" Address size fault"},"pc":{"value":4341930372},"far":{"value":0}}},{"id":516235,"threadState":{"x":[{"value":14},{"value":11307},{"value":171798697235},{"value":39698382717443},{"value":14680198217728},{"value":39698382716928},{"value":48},{"value":0},{"value":0},{"value":1},{"value":105553140394368},{"value":3},{"value":2},{"value":105553140394368},{"value":8362150760,"symbolLocation":0,"symbol":"OBJC_CLASS_$_OS_dispatch_semaphore"},{"value":8362150760,"symbolLocation":0,"symbol":"OBJC_CLASS_$_OS_dispatch_semaphore"},{"value":18446744073709551580},{"value":6444291256,"symbolLocation":0,"symbol":"-[OS_object retain]"},{"value":0},{"value":105553150884208},{"value":105553150884144},{"value":18446744073709551615},{"value":105553162410368},{"value":10237079552},{"value":10000487340},{"value":4351},{"value":0},{"value":0},{"value":284}],"flavor":"ARM_THREAD_STATE64","lr":{"value":6444294744},"cpsr":{"value":1610616832},"fp":{"value":6127021104},"sp":{"value":6127021088},"esr":{"value":1442840704,"description":" Address size fault"},"pc":{"value":4346612460},"far":{"value":0}},"queue":"com.apple.xojit_executor.wrapper_functions","frames":[{"imageOffset":2796,"symbol":"semaphore_wait_trap","symbolLocation":8,"imageIndex":7},{"imageOffset":12888,"symbol":"_dispatch_sema4_wait","symbolLocation":24,"imageIndex":15},{"imageOffset":14304,"symbol":"_dispatch_semaphore_wait_slow","symbolLocation":128,"imageIndex":15},{"imageOffset":9072,"imageIndex":14},{"imageOffset":22416,"symbol":"__xojit_executor_run_program_on_main_thread","symbolLocation":224,"imageIndex":14},{"imageOffset":14840,"imageIndex":14},{"imageOffset":14128,"imageIndex":14},{"imageOffset":6056,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":15},{"imageOffset":115888,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":15},{"imageOffset":26064,"symbol":"_dispatch_continuation_pop","symbolLocation":868,"imageIndex":15},{"imageOffset":22412,"symbol":"_dispatch_async_redirect_invoke","symbolLocation":852,"imageIndex":15},{"imageOffset":84756,"symbol":"_dispatch_root_queue_drain","symbolLocation":336,"imageIndex":15},{"imageOffset":87312,"symbol":"_dispatch_worker_thread2","symbolLocation":252,"imageIndex":15},{"imageOffset":11084,"symbol":"_pthread_wqthread","symbolLocation":228,"imageIndex":8},{"imageOffset":6540,"symbol":"start_wqthread","symbolLocation":8,"imageIndex":8}]},{"id":516245,"frames":[{"imageOffset":6532,"symbol":"start_wqthread","symbolLocation":0,"imageIndex":8}],"threadState":{"x":[{"value":6127595520},{"value":15367},{"value":6127058944},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":4096},"fp":{"value":0},"sp":{"value":6127595520},"esr":{"value":1442840704,"description":" Address size fault"},"pc":{"value":4341930372},"far":{"value":0}}},{"id":516246,"frames":[{"imageOffset":6532,"symbol":"start_wqthread","symbolLocation":0,"imageIndex":8}],"threadState":{"x":[{"value":6128168960},{"value":15111},{"value":6127632384},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":4096},"fp":{"value":0},"sp":{"value":6128168960},"esr":{"value":1442840704,"description":" Address size fault"},"pc":{"value":4341930372},"far":{"value":0}}}],
  "usedImages" : [
  {
    "source" : "P",
    "arch" : "arm64e",
    "base" : 4342628352,
    "size" : 638976,
    "uuid" : "057e5157-4105-3787-b549-e605eb246448",
    "path" : "\/usr\/lib\/dyld",
    "name" : "dyld"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4341563392,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.josephthomas.Bbudget-Me",
    "size" : 16384,
    "uuid" : "8929153e-2d7f-3101-a62f-b7cde6587a2f",
    "path" : "\/Users\/USER\/Library\/Developer\/Xcode\/UserData\/Previews\/Simulator Devices\/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018\/data\/Containers\/Bundle\/Application\/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925\/Bbudget Me.app\/Bbudget Me",
    "name" : "Bbudget Me",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4341710848,
    "size" : 16384,
    "uuid" : "73f02c80-1f02-3076-90bf-09834251b7aa",
    "path" : "\/Users\/USER\/Library\/Developer\/Xcode\/UserData\/Previews\/Simulator Devices\/DBBDB533-ECFE-47C5-BAF2-B9920DBDD018\/data\/Containers\/Bundle\/Application\/4C7A9A40-0E9A-4060-B78D-D43DD2A2A925\/Bbudget Me.app\/__preview.dylib",
    "name" : "__preview.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4341841920,
    "size" : 16384,
    "uuid" : "6de309ef-3434-318a-b6d1-f91eda806f38",
    "path" : "\/Volumes\/VOLUME\/*\/libLogRedirect.dylib",
    "name" : "libLogRedirect.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4344643584,
    "size" : 180224,
    "uuid" : "6997a33e-63fe-3e61-bdea-82cd5d0063e4",
    "path" : "\/Applications\/Xcode.app\/Contents\/Developer\/Toolchains\/XcodeDefault.xctoolchain\/usr\/lib\/swift\/iphonesimulator\/libLiveExecutionResultsLogger.dylib",
    "name" : "libLiveExecutionResultsLogger.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4344987648,
    "size" : 114688,
    "uuid" : "66fa66e5-e7c2-31d5-a544-c02811760dae",
    "path" : "\/Applications\/Xcode.app\/Contents\/Developer\/Toolchains\/XcodeDefault.xctoolchain\/usr\/lib\/swift\/iphonesimulator\/libPlaygrounds.dylib",
    "name" : "libPlaygrounds.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4342317056,
    "size" : 32768,
    "uuid" : "781e89e0-7f3e-381c-9c6f-758ae67555f4",
    "path" : "\/usr\/lib\/system\/libsystem_platform.dylib",
    "name" : "libsystem_platform.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4346609664,
    "size" : 245760,
    "uuid" : "5f6ba938-e999-3d05-8a86-9d93a3c603fb",
    "path" : "\/usr\/lib\/system\/libsystem_kernel.dylib",
    "name" : "libsystem_kernel.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4341923840,
    "size" : 65536,
    "uuid" : "ec9f2051-41f4-3625-9524-1e7e7467d2f7",
    "path" : "\/usr\/lib\/system\/libsystem_pthread.dylib",
    "name" : "libsystem_pthread.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6834782208,
    "size" : 4871392,
    "uuid" : "c62f8d53-88b1-335b-991e-5bc56d71d347",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCore.dylib",
    "name" : "libswiftCore.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 7950123008,
    "CFBundleShortVersionString" : "7.2.5.1.102",
    "CFBundleIdentifier" : "com.apple.SwiftUI",
    "size" : 18375808,
    "uuid" : "719cf349-8c4a-3054-9536-23eb53648ee0",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftUI.framework\/SwiftUI",
    "name" : "SwiftUI",
    "CFBundleVersion" : "7.2.5.1.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 7968501760,
    "CFBundleShortVersionString" : "7.2.5.1.102",
    "CFBundleIdentifier" : "com.apple.SwiftUICore",
    "size" : 13808928,
    "uuid" : "f7e2bb37-d266-38fc-b8cc-80664c89f0b4",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftUICore.framework\/SwiftUICore",
    "name" : "SwiftUICore",
    "CFBundleVersion" : "7.2.5.1.102"
  },
  {
    "size" : 0,
    "source" : "A",
    "base" : 0,
    "uuid" : "00000000-0000-0000-0000-000000000000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 9692975104,
    "CFBundleShortVersionString" : "16.0",
    "CFBundleIdentifier" : "com.apple.dt.PreviewsInjection",
    "size" : 488224,
    "uuid" : "c85a7f6e-e2c9-36c2-a386-1a4e17a9e8a8",
    "path" : "\/Volumes\/VOLUME\/*\/PreviewsInjection.framework\/PreviewsInjection",
    "name" : "PreviewsInjection",
    "CFBundleVersion" : "23.20.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 10000478208,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.xojit.XOJITExecutor",
    "size" : 53467,
    "uuid" : "bd1646da-1a13-3a34-95e6-0b8a8e602430",
    "path" : "\/Volumes\/VOLUME\/*\/XOJITExecutor.framework\/XOJITExecutor",
    "name" : "XOJITExecutor",
    "CFBundleVersion" : "76"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6444281856,
    "size" : 283072,
    "uuid" : "ec9ecf10-959d-3da1-a055-6de970159b9d",
    "path" : "\/Volumes\/VOLUME\/*\/libdispatch.dylib",
    "name" : "libdispatch.dylib"
  }
],
  "sharedCache" : {
  "base" : 6442450944,
  "size" : 4230135808,
  "uuid" : "667865ce-5b5b-30e5-ad75-e0c5694408a1"
},
  "vmSummary" : "ReadOnly portion of Libraries: Total=1.3G resident=0K(0%) swapped_out_or_unallocated=1.3G(100%)\nWritable regions: Total=578.4M written=1879K(0%) resident=1879K(0%) swapped_out=0K(0%) unallocated=576.6M(100%)\n\n                                VIRTUAL   REGION \nREGION TYPE                        SIZE    COUNT (non-coalesced) \n===========                     =======  ======= \nActivity Tracing                   256K        1 \nAttributeGraph Data               1024K        1 \nKernel Alloc Once                   32K        1 \nMALLOC                           564.2M       23 \nMALLOC guard page                  128K        8 \nSTACK GUARD                       56.1M        6 \nStack                             10.6M        6 \nVM_ALLOCATE                        3.0G        4 \n__DATA                            43.4M      760 \n__DATA_CONST                      94.9M      787 \n__DATA_DIRTY                        91K       13 \n__FONT_DATA                        2352        1 \n__LINKEDIT                       377.4M       10 \n__OBJC_RO                         62.5M        1 \n__OBJC_RW                         2771K        1 \n__TEXT                           942.0M      801 \n__TPRO_CONST                       148K        2 \ndyld private memory                2.2G       12 \nmapped file                       1136K       22 \npage table in kernel              1879K        1 \nshared memory                      288K       10 \n===========                     =======  ======= \nTOTAL                              7.3G     2471 \n",
  "legacyInfo" : {
  "threadTriggered" : {
    "queue" : "com.apple.main-thread"
  }
},
  "logWritingSignature" : "749ca7b25834393b3f6df9cc8bc6169245ff9540",
  "trialInfo" : {
  "rollouts" : [
    {
      "rolloutId" : "654439cdafbf5b61207873a9",
      "factorPackIds" : {

      },
      "deploymentId" : 240000004
    },
    {
      "rolloutId" : "60f8ddccefea4203d95cbeef",
      "factorPackIds" : {

      },
      "deploymentId" : 240000025
    }
  ],
  "experiments" : [

  ]
}
}

Model: MacBookAir10,1, BootROM 13822.100.791.0.1, proc 8:4:4 processors, 8 GB, SMC 
Graphics: Apple M1, Apple M1, Built-In
Display: LG HDR QHD, 2560 x 1440 (QHD/WQHD - Wide Quad High Definition), Main, MirrorOff, Online
Display: Color LCD, 2560 x 1600 Retina, MirrorOff, Online
Memory Module: LPDDR4, Hynix
AirPort: spairport_wireless_card_type_wifi (0x14E4, 0x4378), wl0: Dec  7 2024 04:41:25 version 18.90.5.0.7.8.177 FWID 01-02f4dc53
IO80211_driverkit-1485.13 "IO80211_driverkit-1485.13" Jan 30 2026 21:54:12
AirPort: 
Bluetooth: Version (null), 0 services, 0 devices, 0 incoming serial ports
Network Service: Wi-Fi, AirPort, en0
USB Device: USB31Bus
USB Device: USB31Bus
USB Device: USB 2.0 Hub
USB Device: USB 2.0 BILLBOARD
Thunderbolt Bus: MacBook Air, Apple Inc.
Thunderbolt Bus: MacBook Air, Apple Inc.


---

**Cursor**


Identifying cause: crash in Swift runtime resolving a symbolic reference during `AppGraph.init(app:)` — register points at "type metadata for _SceneInputs". The dereference target is in a VM_ALLOCATE region that isn't populated (Preview/JIT). This indicates a Preview/JIT + SwiftUI infrastructure issue, not app logic. Trying a simpler App structure so the compiler emits simpler metadata and adding a workaround so we can use Previews without launching the full app:



Applying a change that can help the Swift runtime resolve scene metadata, and adding a preview workaround:



Reverting the extra type and keeping the app minimal. The crash is in the Preview/JIT runtime, not in our types. Adding a brief comment and a safer preview option:



Adding a comment above the preview with the workaround:



Here’s what’s going on and what you can do.

---

**What the crash is**

From the crash report:

- **Where it crashes:** `swift::ResolveAsSymbolicReference` → `swift_getTypeByMangledName` → `swift_getAssociatedTypeWitness` → **SwiftUI `AppGraph.init(app:)`**
- **Why it crashes:** The fault address is in a **VM_ALLOCATE** region (the 127.7 MB block). That’s typical of memory reserved by the **Preview/JIT** process (XOJITExecutor). The Swift runtime is resolving a **symbolic reference** to type metadata (the report even mentions “type metadata for _SceneInputs”). During that resolution it ends up reading from an address in that JIT/Preview region that was never filled with valid metadata → **SIGBUS (KERN_PROTECTION_FAILURE)**.
- **Conclusion:** This is a **Preview/JIT + Swift runtime** issue: in the special way Previews run your app, some type metadata lookup is pointed at the wrong place. It’s **not** caused by your app’s logic or structure.

So your code isn’t wrong; the Preview execution environment is triggering a bug in the toolchain.

---

**What you can do**

1. **Run the app normally (recommended)**  
   Use **Product → Run** (⌘R) and run on the Simulator (or device). The same app should run fine there; the crash is specific to the Preview/JIT path.

2. **Turn off JIT for Previews**  
   **Product → Scheme → Edit Scheme…** → **Run** → **Options**. Disable **“Previews: JIT”** (or “Use JIT for Previews” / similar). Then try the Canvas again; Previews may use a different execution path and avoid this crash.

3. **Clean and relaunch**  
   **Product → Clean Build Folder** (⇧⌘K), then build and run (or refresh Previews). Sometimes a clean build helps with odd metadata/Preview issues.

4. **Report it to Apple**  
   This is a good candidate for **Feedback Assistant**: “SwiftUI Previews crash with SIGBUS in `AppGraph.init` when resolving type metadata (symbolic reference) in JIT/Preview process.” Including the crash report and that it’s Preview-only helps.

A short comment was added above your `#Preview` in `ContentView.swift` so you (or others) see the workaround if Preview crashes again. Your app is fine to run with **Product → Run**; the problem is limited to the Preview/JIT environment.

---

**User**

@Icons just added he app icon filse

