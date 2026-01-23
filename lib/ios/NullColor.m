#import "NullColor.h"

@implementation NullColor

+ (instancetype)shared {
	static NullColor *sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedInstance = [[self alloc] init];
	});
	return sharedInstance;
}

- (instancetype)init {
	self = [super initWithValue:nil];
	return self;
}

@end
