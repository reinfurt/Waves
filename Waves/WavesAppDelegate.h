//
//  WavesAppDelegate.h
//  Waves
//
//  Created by e on 2/20/13.
//  Copyright (c) 2013 waves. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Waves.h"

@interface WavesAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet Waves *wavesInst;

@end
