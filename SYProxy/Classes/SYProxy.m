
#import "SYProxy.h"

@interface SYProxy ()

@property (nonatomic, weak) id target;

@end

@implementation SYProxy

+ (instancetype)proxyWithTarget:(id)target {
    SYProxy * proxy = [SYProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.target];
}

@end
