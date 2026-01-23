#import "NullDouble.h"

@implementation NullDouble

+ (instancetype)shared {
	static NullDouble *sharedInstance = nil;
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
