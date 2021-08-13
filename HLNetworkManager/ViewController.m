//
//  ViewController.m
//  HLNetworkManager
//
//  Created by JJB_iOS on 2021/8/12.
//

#import "ViewController.h"
#import "NetworkHelper.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sendRequestAction:(UIButton *)sender {
    NSDictionary *parameters = @{@"currentPage": @1,
                                 @"pageSize": @100,
                                 @"adType": @1,
                                 @"isPublish": @1,
                                 @"roletype": @"1"};
    [NetworkHelper request:HLRequestTypePOST method:@"/api/admin/touradpic/queryTourAdPic" parameters:parameters isCache:YES success:^(BOOL success, NSString * _Nonnull msg, id  _Nonnull data) {
        self.textView.text = [NSString stringWithFormat:@"%@", data];
    } failure:^(NSError * _Nonnull error) {
        self.textView.text = [NSString stringWithFormat:@"%@", error];
    }];
}

@end
