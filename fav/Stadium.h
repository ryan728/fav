#import <Foundation/Foundation.h>

@interface Stadium : NSObject

@property(readonly) NSString *name;
@property(readonly) NSString *teamName;
@property(readonly) NSString *address;
@property(readonly) NSString *teamImage;
@property(readonly) NSString *stadiumImage;
@property(readonly) double latitude;
@property(readonly) double longitude;

+ (NSArray *)ALL_STADIUMS;

@end
