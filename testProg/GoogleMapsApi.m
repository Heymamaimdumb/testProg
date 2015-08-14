//
//  GoogleMapsApi.m
//  testProg
//
//  Created by Vladislav on 13.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import "GoogleMapsApi.h"
@import GoogleMaps;

@interface GoogleMapsApi ()

@end

@implementation GoogleMapsApi {GMSMapView *mapView_; GMSMarker *marker_; GMSMarker *destinationMarker_ ;  GMSCameraPosition *camera_;}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

-(void)loadView
{

    camera_= [GMSCameraPosition cameraWithLatitude:-33.86 longitude:151.2 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera_];
    mapView_.myLocationEnabled = YES;
    mapView_.settings.myLocationButton = YES;
    mapView_.delegate = self;
    self.view = mapView_;
    
    marker_ = [[GMSMarker alloc]init];
    marker_.position = CLLocationCoordinate2DMake(-33.86, 151.2);
    marker_.title = @"Sydney";
    marker_.snippet = @"Australia";
    marker_.map = mapView_;
    
    

}

-(void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate
{
    if (destinationMarker_ == nil)
    {
        destinationMarker_ = [[GMSMarker alloc]init];
        destinationMarker_.map = mapView_;
        destinationMarker_.position = coordinate;
        destinationMarker_.title = @"Destination";
    }
 
    destinationMarker_.position = coordinate;


}

-(BOOL)didTapMyLocationButtonForMapView:(GMSMapView *)mapView
{
    
    mapView_.camera = [GMSCameraPosition cameraWithTarget:mapView_.myLocation.coordinate  zoom:6];
    

    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
