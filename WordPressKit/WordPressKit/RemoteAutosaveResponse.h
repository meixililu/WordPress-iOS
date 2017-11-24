#import <Foundation/Foundation.h>

@interface RemoteAutosaveResponse : NSObject
@property (nonatomic, strong) NSNumber *postID;
@property (nonatomic, strong) NSDate *dateModified;
@property (nonatomic, strong) NSURL *previewURL;
@end

