/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVMediaRecorder.h"
#import "CameraViewController.h"


@implementation CDVMediaRecorder
    
- (void)start:(CDVInvokedUrlCommand*)command
{
        // handle command and options
    __weak CDVMediaRecorder* weakSelf = self;
     self.command = command;    
        // switch to camera view
    CameraViewController *cameraViewController = [[CameraViewController alloc] init];
    [weakSelf.viewController presentViewController:cameraViewController animated:YES completion:^{
            
    }];
        
}
- (void)receiveVideo:(NSURL*)outputURL
{
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:outputURL];
    [self.commandDelegate sendPluginResult:result callbackId:self.command.callbackId];
        
}

@end
