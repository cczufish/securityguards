//
//  NotificationsViewController.h
//  securityguards
//
//  Created by Zhao yang on 12/31/13.
//  Copyright (c) 2013 hentre. All rights reserved.
//

#import "DrawerViewController.h"
#import "NotificationDetailsViewController.h"

@interface NotificationsViewController : DrawerViewController<UITableViewDataSource,UITableViewDelegate,SMNotificationDelegate>

@end
