//
//  Unit.h
//  SmartHome
//
//  Created by Zhao yang on 8/30/13.
//  Copyright (c) 2013 hentre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zone.h"
#import "Entity.h"

@interface Unit : Entity

@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSString *localIP;
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) unsigned int localPort;
@property (strong, nonatomic) NSString *status;
@property (strong, nonatomic) NSDate *updateTime;
@property (strong, nonatomic) NSNumber *hashCode;
@property (strong, nonatomic) NSMutableArray *zones;

@property (assign, nonatomic, readonly) NSUInteger avalibleDevicesCount;

//
@property (strong, nonatomic, readonly) NSArray *devices;

- (Zone *)zoneForId:(NSString *)_id_;
- (Device *)deviceForId:(NSString *)_id_;

@end
