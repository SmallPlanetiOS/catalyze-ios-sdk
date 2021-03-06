/*
 * Copyright (C) 2013 catalyze.io, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

#import "Catalyze.h"

@implementation Catalyze

+ (void)setApiKey:(NSString *)apiKey applicationId:(NSString *)appId {
    [[NSUserDefaults standardUserDefaults] setValue:apiKey forKey:@"api_key"];
    [[NSUserDefaults standardUserDefaults] setValue:appId forKey:@"app_id"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)apiKey {
    if (![[NSUserDefaults standardUserDefaults] valueForKey:@"api_key"]) {
        NSLog(@"Warning! Application key not set! Please call [Catalyze setApiKey:URLScheme:applicationId:] in your AppDelegate's applicationDidFinishLaunchingWithOptions: method");
    }
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"api_key"];
}

+ (NSString *)applicationId {
    if (![[NSUserDefaults standardUserDefaults] valueForKey:@"app_id"]) {
        NSLog(@"Warning! Application id not set! Please call [Catalyze setApiKey:URLScheme:applicationId:] in your AppDelegate's applicationDidFinishLaunchingWithOptions: method");
    }
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"app_id"];
}

@end
