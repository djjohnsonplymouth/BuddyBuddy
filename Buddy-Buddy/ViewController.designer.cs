// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;

namespace BuddyBuddy
{
    [Register ("ViewController")]
    partial class ViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton aButton { get; set; }

        [Action ("InitialActionCompleted:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void InitialActionCompleted (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (aButton != null) {
                aButton.Dispose ();
                aButton = null;
            }
        }
    }
}