#import <UIKit/UIKit.h>
#import <CoreLocation/CLLocationManager.h>
#import <CoreLocation/CLLocationManagerDelegate.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
    
    IBOutlet UILabel *teamNameLabel;
    IBOutlet UILabel *stadiumNameLabel;
    IBOutlet UILabel *addressLabel;
    IBOutlet UIButton *yesButton;
    IBOutlet UIButton *noButton;
    IBOutlet UIImageView *teamImageView;
    IBOutlet UIImageView *stadiumImageView;
}

- (IBAction)selectStadium:(id)sender;

@end
