#import <Foundation/Foundation.h>

@interface SentryBreadcrumbTracker : NSObject

- (void)start;
- (void)startSwizzle;
- (void)stop;

@end
