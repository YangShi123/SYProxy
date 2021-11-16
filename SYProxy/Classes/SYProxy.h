
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SYProxy : NSProxy

+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
