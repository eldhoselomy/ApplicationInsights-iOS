#import "MSAICrashDataThread.h"
/// Data contract class for type CrashDataThread.
@implementation MSAICrashDataThread

/// Initializes a new instance of the class.
- (instancetype)init {
    if (self = [super init]) {
        self.frames = [NSMutableArray new];
    }
    return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
    MSAIOrderedDictionary *dict = [super serializeToDictionary];
    if (self.crashDataThreadId != nil) {
        [dict setObject:self.crashDataThreadId forKey:@"id"];
    }
    if (self.frames != nil) {
        NSMutableArray *framesArray = [NSMutableArray array];
        for (MSAICrashDataThreadFrame *framesElement in self.frames) {
            [framesArray addObject:[framesElement serializeToDictionary]];
        }
        [dict setObject:framesArray forKey:@"frames"];
    }
    return dict;
}

@end
