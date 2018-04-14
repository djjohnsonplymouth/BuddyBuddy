using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using UIKit;

namespace BuddyBuddy
{
    public partial class HomeViewController : UIViewController
    {
        UIScrollView scrollView;
        List<UIButton> buttons;

        public HomeViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
            base.ViewDidLoad();
            View.BackgroundColor = UIColor.FromRGB(51,51,51);

            buttons = new List<UIButton>();

            nfloat h = 200.0f;
            nfloat w = 150.0f;
            nfloat padding = 10.0f;
            nint n = 4;

            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 100, View.Frame.Width, h + 2 * padding),
                ContentSize = new CGSize((w + padding) * n, h),
                BackgroundColor = UIColor.FromRGB(17, 17, 17),
                AutoresizingMask = UIViewAutoresizing.FlexibleWidth,
                ShowsHorizontalScrollIndicator = false
            };

            for (int i = 0; i < n; i++)
            {
                var button = UIButton.FromType(UIButtonType.Custom);
                switch (i)
                {
                    case 0:
                        button.SetImage(UIImage.FromFile("sleepButton.png"), UIControlState.Normal);
                        break;
                    case 1:
                        button.SetImage(UIImage.FromFile("stressButton.png"), UIControlState.Normal);
                        break;
                    case 2:
                        button.SetImage(UIImage.FromFile("awakenessButton.png"), UIControlState.Normal);
                        break;
                    case 3:
                        button.SetImage(UIImage.FromFile("mindfulnessButton.png"), UIControlState.Normal);
                        break;
                }
                button.Frame = new CGRect(padding * (i + 1) + (i * w), padding, w, h);

                scrollView.AddSubview(button);
                buttons.Add(button);
            }

            View.AddSubview(scrollView);
		}
	}
}