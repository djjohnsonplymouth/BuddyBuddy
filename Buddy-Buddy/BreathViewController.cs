using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using UIKit;

namespace BuddyBuddy
{
    public partial class BreathViewController : UIViewController
    {
        public BreathViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            View.BackgroundColor = UIColor.FromRGB(51, 51, 51);

            var sleepBtn = UIButton.FromType(UIButtonType.Custom);
            sleepBtn.SetImage(UIImage.FromFile("sleepBtn.png"), UIControlState.Normal);
            sleepBtn.Frame = new CGRect(View.Frame.Width / 2 - 140, View.Frame.Height / 4 - 35,70,70);
            sleepBtn.TouchUpInside += (sender, e) => {
                BreathAnimation b = new BreathAnimation();

                PresentViewController(b, true, null);
            };
            var stressBtn = UIButton.FromType(UIButtonType.Custom);
            stressBtn.SetImage(UIImage.FromFile("stressBtn.png"), UIControlState.Normal);
            stressBtn.Frame = new CGRect(View.Frame.Width / 2 - 140, View.Frame.Height / 2 - 35, 70, 70);

            var awakenessBtn = UIButton.FromType(UIButtonType.Custom);
            awakenessBtn.SetImage(UIImage.FromFile("awakenessBtn.png"), UIControlState.Normal);
            awakenessBtn.Frame = new CGRect(View.Frame.Width / 2 + 70, View.Frame.Height / 4 - 35, 70, 70);

            var mindfulnessBtn = UIButton.FromType(UIButtonType.Custom);
            mindfulnessBtn.SetImage(UIImage.FromFile("mindfulnessBtn.png"), UIControlState.Normal);
            mindfulnessBtn.Frame = new CGRect(View.Frame.Width / 2 + 70, View.Frame.Height / 2 - 35, 70, 70);

            View.AddSubviews(sleepBtn, stressBtn, awakenessBtn, mindfulnessBtn);
        }
    }
}