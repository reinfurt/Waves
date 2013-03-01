//
//  WavesFormDef.m
//  Waves
//
//  Created by e on 2/24/13.
//  Copyright (c) 2013 waves. All rights reserved.
//



#import "WaveFormDef.h"



@implementation WaveFormDef
@synthesize hz;
@synthesize amp;
@synthesize res;
@synthesize hzLength;

int *a;  // holders for x and y
int *b;
//int x;
//int y;


- (id) init
{
 
    return[self initWithHz:1.f withAmp:1 withHzLength:72.f];
    
}

- (id) initWithHz:(float)aHz withAmp:(float)aAmp withHzLength:(float)aHzLength
{
    self.hz = aHz;
    self.amp = aAmp;
    self.hzLength = aHzLength;
    return self;
    
}


- (NSPoint) findPointAt:(float)pos xOffset:(float)aXOffset yOffset:(float)aYOffset
{
    //float wavePos = (pos/hzLength) * (2.f * M_PI); // find position in standard period
    float wavePos = pos / ((2.f) * M_PI);
    
    //wavePos = wavePos / hz; // adjust for frequency
    
    float ptX = (wavePos * hzLength);
    
    //note sinf(wavePos)... results in equal dot spacing - think this through...?
    float ptY = sinf(pos*hz) * amp * (hzLength/(8.f*hz));
    
    return NSMakePoint(ptX + aXOffset, ptY + aYOffset);
    
}
 

/*
- (void)setAxis:(int) newAxis
{
    if(newAxis == hAxis){
        a = &x;
        b = &y;
        
    } else {
        a = &y;
        b = &x;
        
    }
    
}
*/

@end


