%hook NSFileManager

- (BOOL) fileExistsAtPath: (NSString*) path {
	
NSArray *jbchecks = [NSArray arrayWithObjects: 
					@"/Applications/Cydia.app",
					@"/Applications/FakeCarrier.app",
					@"/Applications/Icy.app",
					@"/Applications/IntelliScreen.app",
					@"/Applications/MxTube.app",
					@"/Applications/RockApp.app",
					@"/Applications/SBSettings.app",
					@"/Applications/WinterBoard.app",
					@"/Applications/blackra1n.app",
					@"/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist",
					@"/Library/MobileSubstrate/DynamicLibraries/Veency.plist",
					@"/System/Library/LaunchDaemons/com.ikey.bbot.plist",
					@"/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist",
					@"/private/var/lib/apt",
					@"/private/var/lib/cydia",
					@"/private/var/mobile/Library/SBSettings/Themes",
					@"/private/var/stash",
					@"/private/var/tmp/cydia.log",
					@"/bin/bash",
					@"/bin/sh",
					nil];

	for (NSString *check in jbchecks) {
	    if ([check isEqualToString: path]) {
	        return NO;
	    }
	}
	
	return %orig;

}

%end