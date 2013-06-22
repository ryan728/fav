#import "StadiumTableViewController.h"
#import "Stadium.h"

@implementation StadiumTableViewController

@synthesize stadiums=_stadiums;

- (void)viewDidLoad{
    CGRect sepFrame = CGRectMake(0, headerView.frame.size.height-1, 320, 1);
    UIView *seperatorView = [[UIView alloc] initWithFrame:sepFrame];
    seperatorView.backgroundColor = [UIColor colorWithWhite:224.0/255.0 alpha:1.0];
    [headerView addSubview:seperatorView];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"stadiumTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        Stadium *stadium = [_stadiums objectAtIndex:[indexPath row]];
        cell.textLabel.text = [stadium description];
        cell.detailTextLabel.text = stadium.address;
        cell.imageView.image = [UIImage imageNamed:stadium.teamImage];
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_stadiums count];
}

@end
