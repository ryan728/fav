#import "Stadium.h"

@implementation Stadium

@synthesize name=_name, teamName=_teamName, address=_address, teamImage=_teamImage, latitude=_latitude, longitude=_longitude, stadiumImage=_stadiumImage;

-(id) initWithName:(NSString*)name teamName:(NSString *)teamName address:(NSString *)address teamImage:(NSString *)teamImage stadiumImage:(NSString*)stadiumImage latitude:(double)latitude longitude:(double)longitude
{
    self = [super init];
    if (self) {
        _name = name;
        _teamName = teamName;
        _address = address;
        _teamImage = teamImage;
        _stadiumImage = stadiumImage;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

+ (NSArray *)ALL_STADIUMS
{
    static NSMutableArray * All_Stadiums = nil;
    
    if (All_Stadiums == nil) {
        All_Stadiums = [[NSMutableArray alloc] init];
        [All_Stadiums addObject:[[Stadium alloc] initWithName:@"M&T Bank Stadium" teamName:@"Baltimore Ravens" address:@"1101 Russell St, Baltimore, MD 21230" teamImage:@"baltimore_ravens.jpeg" stadiumImage:@"m_t_bank_stadium.jpeg" latitude:39.27844 longitude:-76.62427]];
        [All_Stadiums addObject:[[Stadium alloc] initWithName:@"Soldier Field" teamName:@"Chicago Bears" address:@"1410 Museum Campus Dr, Chicago, IL 60605" teamImage:@"chicago_bears.jpeg" stadiumImage:@"soldier_field.jpeg" latitude:41.86323 longitude:-87.61756]];
        [All_Stadiums addObject:[[Stadium alloc] initWithName:@"MetLife Stadium" teamName:@"New York Giants" address:@"1 MetLife Stadium Dr, East Rutherford, NJ 07073" teamImage:@"new_york_giants.jpeg" stadiumImage:@"met_life_stadium.jpeg" latitude:40.81421 longitude:-74.07369]];
    }
    return All_Stadiums;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@ - %@", _teamName, _name];
}

@end
