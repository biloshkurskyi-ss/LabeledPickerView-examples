//
//  LabeledPickerView.h
//  CustomPickerView
//
//  Created by Administrator on 10/18/13.
//  Copyright (c) 2013 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabeledPickerView : UIPickerView

{
    NSMutableDictionary *labels;
}

/** Adds the label for the given component. */
-(void)addLabel:(NSString *)labeltext forComponent:(NSUInteger)component forLongestString:(NSString *)longestString;
@end