#import <UIKit/UIKit.h>
#import <CoreLocation/CLLocationManager.h>
#import <CoreLocation/CLLocationManagerDelegate.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;   
}

@end
