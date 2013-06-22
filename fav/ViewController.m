#import "ViewController.h"
#import "Stadium.h"
#import "StadiumTableViewController.h"

@interface ViewController (){
    NSArray *allStadiums;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self startStandardUpdates];
}

-(void)startStandardUpdates {
    if (nil == locationManager) {
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        
        locationManager.distanceFilter = 500;
        [locationManager startUpdatingLocation];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    [locationManager stopUpdatingLocation];
    CLLocation *location = [locations lastObject];
    allStadiums = [[Stadium ALL_STADIUMS] sortedArrayUsingComparator:^NSComparisonResult(Stadium *s1, Stadium *s2){
        double distance1 = pow(location.coordinate.latitude - s1.latitude, 2) + pow(location.coordinate.longitude - s1.longitude, 2);
        double distance2 = pow(location.coordinate.latitude - s2.latitude, 2) + pow(location.coordinate.longitude - s2.longitude, 2);
        return (NSComparisonResult) (distance1 - distance2);
    }];

    Stadium *stadium = [allStadiums objectAtIndex:0];
    NSLog(@"Nearest stadium is: %@", stadium);
    teamNameLabel.text = stadium.teamName;
    teamImageView.image = [UIImage imageNamed:stadium.teamImage];
    stadiumNameLabel.text = stadium.name;
    stadiumImageView.image = [UIImage imageNamed:stadium.stadiumImage];
    addressLabel.text = stadium.address;
}

- (IBAction)selectStadium:(id)sender
{
    [self performSegueWithIdentifier:@"showStadiumTableSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    StadiumTableViewController *stadiumTableViewController = (StadiumTableViewController*) segue.destinationViewController;
    stadiumTableViewController.stadiums = allStadiums;
}

@end
