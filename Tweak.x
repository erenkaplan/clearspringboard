@interface SBDockView : UIView {
	UIView *_backgroundView;
}
@end

@interface SBFloatingDockPlatterView : UIView {
	UIView *_backgroundView;
}
@end

%hook SBDockView 

- (void)layoutSubviews {
	%orig;
	UIView *view = [self valueForKey:@"_backgroundView"];
	view.hidden = YES;
}

- (void)setBackgroundAlpha:(double)arg1 {
	%orig(0);
}

%end

%hook SBFloatingDockPlatterView

- (void)layoutSubviews {
	%orig;
	UIView *view = [self valueForKey:@"_backgroundView"];
	view.hidden = YES;
}

%end

%hook SBIconListPageControl

- (void)setHidden:(BOOL)arg1 {
	%orig(YES);
}

%end

%hook SBIconView

- (void)setLabelHidden:(BOOL)arg1 {
	return %orig(YES);
}

%end