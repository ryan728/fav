#import <UIKit/UIKit.h>

@interface StadiumTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate> {
   IBOutlet UIView *headerView;
}

@property NSArray *stadiums;

@end
