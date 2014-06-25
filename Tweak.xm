//
//  Tweak.xm
//  NSLogHook
//
//  Created by Timm Kandziora on 10.05.14.
//  Copyright (c) 2014 Timm Kandziora. All rights reserved.
//

#import <substrate.h>

static void (*original_NSLog) (NSString *format, ...);

void replaced_NSLog(NSString *format, ...) { }

%ctor {
	MSHookFunction(NSLog, replaced_NSLog, &original_NSLog);
}
