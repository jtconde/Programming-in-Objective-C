//
//  FaceView.h
//  Happiness
//
//  Created by Akshay on 1/6/13.
//
//

#import <UIKit/UIKit.h>

@class FaceView;
@protocol FaceViewDataSource <NSObject>
- (float)smileForFaceView:(FaceView *)sender;
@end

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;
@property (nonatomic, weak) IBOutlet id <FaceViewDataSource> dataSource;

/**
 * Recognizes a pinch gesture
 */
- (void)pinch:(UIPinchGestureRecognizer *)gesture;


@end
