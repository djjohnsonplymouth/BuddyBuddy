using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using UIKit;

namespace BuddyBuddy
{
    public partial class StatisticsViewController : UIViewController
    {
        UIScrollView scrollView;

        public StatisticsViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            View.BackgroundColor = UIColor.FromRGB(51, 51, 51);


            var charts = Data.CreateQuickstart();

            // Simple
            var chartView = new ChartView
            {
                Frame = new CGRect(0, 32, this.View.Bounds.Width, 140),
                AutoresizingMask = UIViewAutoresizing.FlexibleWidth,
                Chart = charts[0],
            };

            scrollView = new UIScrollView()
            {
                Frame = new CGRect(0, 0, View.Frame.Width, View.Frame.Height)
            };
            Console.WriteLine("Size is: {0}", View.Frame.Size.ToString());

            scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height * 2);
            scrollView.AddSubview(chartView);
            this.View.Add(scrollView);
        }
    }
}