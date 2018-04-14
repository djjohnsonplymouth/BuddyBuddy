using System;
using System.Collections.Generic;
using Foundation;
using SceneKit;
using UIKit;
using SKColor = UIKit.UIColor;

namespace BuddyBuddy
{
    public partial class BreathAnimation : UIViewController
    {
        SCNView sceneView;
        SCNScene scene;

        SCNSphere sphere;
        SCNNode sphereNode;

        //From SceneKitReel
        //references to nodes for manipulation
        SCNNode CameraHandle;
        SCNNode CameraOrientation;
        SCNNode CameraNode;
        SCNNode SpotLightParentNode;
        SCNNode SpotLightNode;
        SCNNode AmbientLightNode;
        SCNNode FloorNode;
        SCNNode MainWall;
        SCNNode InvisibleWallForPhysicsSlide;

        //camera manipulation
        List<SCNMatrix4> CameraHandleTransforms = new List<SCNMatrix4>(10);
        List<SCNMatrix4> CameraOrientationTransforms = new List<SCNMatrix4>(10);
        int count = 0;

        protected BreathAnimation(IntPtr handle) : base(handle)
        {
            // Note: this .ctor should not contain any initialization logic.
        }

        public BreathAnimation()
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            Setup();

            //var animateButton = UIButton.FromType(UIButtonType.System);
            //animateButton.SetTitle("Animate", UIControlState.Normal);
            //animateButton.Frame = new System.Drawing.RectangleF(0, 0, 100, 50);
            //animateButton.TouchUpInside += (sender, e) => {
            //BreathIn();
            //};

            View.AddSubview(sceneView);
            //View.AddSubview(animateButton);
            StartVisualisation();

        }

        void StartVisualisation()
        {
            SCNTransaction.Begin();
            SCNTransaction.AnimationDuration = 4.0;
            sphereNode.Scale = new SCNVector3(1.1f, 1.1f, 1.1f);
            SCNTransaction.SetCompletionBlock(() => {
                BreathIn();
            });
            SCNTransaction.Commit();
        }

        void BreathIn()
        {
            SCNTransaction.Begin();
            SCNTransaction.AnimationDuration = 4.0;
            sphereNode.Scale = new SCNVector3(2.0f, 2.0f, 2.0f);
            SCNTransaction.SetCompletionBlock(() => {
                Hold();
            });
            SCNTransaction.Commit();
        }

        void Hold()
        {
            SCNTransaction.Begin();
            SCNTransaction.AnimationDuration = 5.0;
            sphereNode.Scale = new SCNVector3(1.99f, 1.99f, 1.99f);
            SCNTransaction.SetCompletionBlock(() => {
                BreathOut();
            });
            SCNTransaction.Commit();
        }

        void BreathOut()
        {
            SCNTransaction.Begin();
            SCNTransaction.AnimationDuration = 7.0;
            sphereNode.Scale = new SCNVector3(1, 1, 1);
            SCNTransaction.SetCompletionBlock(() => {
                if (count == 1)
                {
                    Console.WriteLine("Ready to dismiss");
                    DismissViewController(true, null);
                }
                else
                {
                    BreathIn();
                    count++;
                }
            });
            SCNTransaction.Commit();


        }

        void Setup()
        {

            sceneView = new SCNView(View.Frame);
            sceneView.BackgroundColor = SKColor.Black;
            sceneView.AutoresizingMask = UIViewAutoresizing.All;
            scene = SCNScene.Create();

            //setup the scene
            SetupScene();

            //present it
            sceneView.Scene = scene;

            //tweak physics
            sceneView.Scene.PhysicsWorld.Speed = 2.0f;

            //let's be the delegate of the SCNView
            sceneView.WeakSceneRendererDelegate = this;

            sceneView.JitteringEnabled = true;

            //setup overlays
            var overlay = new SpriteKitOverlayScene(sceneView.Bounds.Size);
            sceneView.OverlayScene = overlay;

#if __IOS__
            var gestureRecognizers = new List<UIGestureRecognizer>();
            if (sceneView.GestureRecognizers != null)
                gestureRecognizers.AddRange(sceneView.GestureRecognizers);

            // add a tap gesture recognizer
            //UITapGestureRecognizer tapGesture = new UITapGestureRecognizer(HandleTouch);

            //// add a pan gesture recognizer
            //UIPanGestureRecognizer panGesture = new UIPanGestureRecognizer(HandleTouchPan);

            //// add a double tap gesture recognizer
            //UITapGestureRecognizer doubleTapGesture = new UITapGestureRecognizer(HandleDoubleTouch);
            //doubleTapGesture.NumberOfTapsRequired = 2;

            //tapGesture.RequireGestureRecognizerToFail(panGesture);

            //gestureRecognizers.Add(doubleTapGesture);
            //gestureRecognizers.Add(tapGesture);
            //gestureRecognizers.Add(panGesture);

            //register gesture recognizers
            sceneView.GestureRecognizers = gestureRecognizers.ToArray();
#endif
        }

        void SetupScene()
        {
            scene = SCNScene.Create();
            SetupEnvironment();
            //SetupSceneElements();
        }

        void SetupEnvironment()
        {
            // |_   cameraHandle
            //   |_   cameraOrientation
            //     |_   cameraNode

            //create a main camera
            CameraNode = SCNNode.Create();
            CameraNode.Position = new SCNVector3(0, 0, 120);

            //create a node to manipulate the camera orientation
            CameraHandle = SCNNode.Create();
            CameraHandle.Position = new SCNVector3(0, 60, 0);

            CameraOrientation = SCNNode.Create();

            scene.RootNode.AddChildNode(CameraHandle);
            CameraHandle.AddChildNode(CameraOrientation);
            CameraOrientation.AddChildNode(CameraNode);

            CameraNode.Camera = SCNCamera.Create();
            CameraNode.Camera.ZFar = 800;

#if __IOS__
            if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
            {
                CameraNode.Camera.YFov = 55;
            }
            else
#endif
            {
                CameraNode.Camera.XFov = 75;
            }

            for (int i = 0; i < 10; i++)
            {
                CameraHandleTransforms.Add(new SCNMatrix4());
                CameraOrientationTransforms.Add(new SCNMatrix4());
            }
            CameraHandleTransforms[0] = CameraNode.Transform;

            // add an ambient light
            AmbientLightNode = SCNNode.Create();
            AmbientLightNode.Light = SCNLight.Create();

            AmbientLightNode.Light.LightType = SCNLightType.Ambient;
            AmbientLightNode.Light.Color = SKColorHelper.FromCommonWhiteAlpha(0.3f, 1.0f);

            scene.RootNode.AddChildNode(AmbientLightNode);

            //add a key light to the scene
            SpotLightParentNode = SCNNode.Create();
            SpotLightParentNode.Position = new SCNVector3(0, 90, 20);

            SpotLightNode = SCNNode.Create();
            SpotLightNode.Rotation = new SCNVector4(1, 0, 0, -(float)Math.PI / 4);

            SpotLightNode.Light = SCNLight.Create();
            SpotLightNode.Light.LightType = SCNLightType.Spot;
            SpotLightNode.Light.Color = SKColorHelper.FromCommonWhiteAlpha(1.0f, 1.0f);
            SpotLightNode.Light.CastsShadow = true;
            SpotLightNode.Light.ShadowColor = SKColorHelper.FromCommonWhiteAlpha(0, 0.5f);
            SpotLightNode.Light.ZNear = 30;
            SpotLightNode.Light.ZFar = 800;
            SpotLightNode.Light.ShadowRadius = 1.0f;
            SpotLightNode.Light.SpotInnerAngle = 15;
            SpotLightNode.Light.SpotOuterAngle = 70;

            CameraNode.AddChildNode(SpotLightParentNode);
            SpotLightParentNode.AddChildNode(SpotLightNode);

            //floor
            var floor = SCNFloor.Create();
            floor.ReflectionFalloffEnd = 0;
            floor.Reflectivity = 0;

            FloorNode = SCNNode.Create();
            FloorNode.Geometry = floor;
#if __IOS__
            FloorNode.Geometry.FirstMaterial.Diffuse.Contents = new UIImage("grass.jpg");
#else
            FloorNode.Geometry.FirstMaterial.Diffuse.Contents = new NSImage (NSBundle.MainBundle.PathForResource ("images/wood", "png"));
#endif
            FloorNode.Geometry.FirstMaterial.LocksAmbientWithDiffuse = true;
            FloorNode.Geometry.FirstMaterial.Diffuse.WrapS = SCNWrapMode.Repeat;
            FloorNode.Geometry.FirstMaterial.Diffuse.WrapT = SCNWrapMode.Repeat;
            FloorNode.Geometry.FirstMaterial.Diffuse.MipFilter = SCNFilterMode.Linear;

            FloorNode.PhysicsBody = SCNPhysicsBody.CreateStaticBody();
            FloorNode.PhysicsBody.Restitution = 1.0f;

            scene.RootNode.AddChildNode(FloorNode);

            addSphere();

            scene.Background.Contents = new UIImage("sky.png");
        }

        public void addSphere()
        {
            // sphere
            sphere = SCNSphere.Create(10.0f);
            sphereNode = SCNNode.FromGeometry(sphere);
            sphereNode.Position = new SCNVector3(0, 70, 0);

            // material
            var material = SCNMaterial.Create();
            //material.Diffuse.Contents = UIImage.FromFile("monkey.png");
            material.Diffuse.Contents = UIColor.FromRGB(51, 51, 51);
            sphere.Materials = new SCNMaterial[] { material };
            scene.RootNode.AddChildNode(sphereNode);
        }

        void SetupSceneElements()
        {
            // create the wall geometry
            var wallGeometry = SCNPlane.Create(800, 200);
#if __IOS__
            wallGeometry.FirstMaterial.Diffuse.Contents = new UIImage("images/wallPaper.png");
#else
            wallGeometry.FirstMaterial.Diffuse.Contents = new NSImage (NSBundle.MainBundle.PathForResource ("images/wallPaper", "png"));
#endif
            wallGeometry.FirstMaterial.Diffuse.ContentsTransform = SCNMatrix4.Mult(SCNMatrix4.Scale(8, 2, 1), SCNMatrix4.CreateFromAxisAngle(new SCNVector3(0, 0, 1), (float)Math.PI / 4));
            wallGeometry.FirstMaterial.Diffuse.WrapS = SCNWrapMode.Repeat;
            wallGeometry.FirstMaterial.Diffuse.WrapT = SCNWrapMode.Repeat;
            wallGeometry.FirstMaterial.DoubleSided = false;
            wallGeometry.FirstMaterial.LocksAmbientWithDiffuse = true;

            var wallWithBaseboardNode = SCNNode.FromGeometry(wallGeometry);
            wallWithBaseboardNode.Position = new SCNVector3(200, 100, -20);
            wallWithBaseboardNode.PhysicsBody = SCNPhysicsBody.CreateStaticBody();
            wallWithBaseboardNode.PhysicsBody.Restitution = 1.0f;
            wallWithBaseboardNode.CastsShadow = false;

            var baseboardNode = SCNNode.FromGeometry(SCNPlane.Create(800, 8));
#if __IOS__
            baseboardNode.Geometry.FirstMaterial.Diffuse.Contents = new UIImage("images/baseboard.jpg");
#else
            baseboardNode.Geometry.FirstMaterial.Diffuse.Contents = new NSImage (NSBundle.MainBundle.PathForResource ("images/baseboard", "jpg"));
#endif
            baseboardNode.Geometry.FirstMaterial.Diffuse.WrapS = SCNWrapMode.Repeat;
            baseboardNode.Geometry.FirstMaterial.DoubleSided = false;
            baseboardNode.Geometry.FirstMaterial.LocksAmbientWithDiffuse = true;
            baseboardNode.Position = new SCNVector3(0, -wallWithBaseboardNode.Position.Y + 4, 0.5f);
            baseboardNode.CastsShadow = false;

            wallWithBaseboardNode.AddChildNode(baseboardNode);

            //front walls
            MainWall = wallWithBaseboardNode;
            scene.RootNode.AddChildNode(wallWithBaseboardNode);

            //back
            var wallNode = wallWithBaseboardNode.Clone();
            wallNode.Opacity = 0;
            wallNode.PhysicsBody = SCNPhysicsBody.CreateStaticBody();
            wallNode.PhysicsBody.Restitution = 1.0f;
            wallNode.PhysicsBody.CategoryBitMask = 1 << 2;
            wallNode.CastsShadow = false;

            wallNode.Position = new SCNVector3(0, 100, 40);
            wallNode.Rotation = new SCNVector4(0, 1, 0, (float)Math.PI);
            scene.RootNode.AddChildNode(wallNode);

            //left
            wallNode = wallWithBaseboardNode.Clone();
            wallNode.Position = new SCNVector3(-120, 100, 40);
            wallNode.Rotation = new SCNVector4(0, 1, 0, (float)Math.PI / 2);
            scene.RootNode.AddChildNode(wallNode);

            //right (an invisible wall to keep the bodies in the visible area when zooming in the Physics slide)
            wallNode = wallNode.Clone();
            wallNode.Opacity = 0;
            wallNode.Position = new SCNVector3(120, 100, 40);
            wallNode.Rotation = new SCNVector4(0, 1, 0, (float)Math.PI / 2);
            InvisibleWallForPhysicsSlide = wallNode;

            //right (the actual wall on the right)
            wallNode = wallWithBaseboardNode.Clone();
            wallNode.PhysicsBody = null;
            wallNode.Position = new SCNVector3(600, 100, 40);
            wallNode.Rotation = new SCNVector4(0, 1, 0, (float)Math.PI / 2);
            scene.RootNode.AddChildNode(wallNode);

            //top
            wallNode = wallWithBaseboardNode.Clone();
            wallNode.Geometry = (SCNGeometry)wallNode.Geometry.Copy();
            wallNode.Geometry.FirstMaterial = SCNMaterial.Create();
            wallNode.Opacity = 1;
            wallNode.Position = new SCNVector3(200, 200, 0);
            wallNode.Scale = new SCNVector3(1, 10, 1);
            wallNode.Rotation = new SCNVector4(1, 0, 0, (float)Math.PI / 2);
            scene.RootNode.AddChildNode(wallNode);
        }
        //        public override void ViewDidLoad()
        //        {
        //            base.ViewDidLoad();
        //            //animateButton = UIButton.FromType(UIButtonType.System);
        //            //animateButton.SetTitle("Animate", UIControlState.Normal);
        //            //animateButton.Frame = new System.Drawing.RectangleF(0, 0, 100, 50);
        //            //animateButton.TouchUpInside += (sender, e) => {

        //            //    SCNTransaction.Begin();
        //            //    SCNTransaction.AnimationDuration = 2.0;
        //            //    sphereNode.Rotation = new SCNVector4(0, 1, 0, (float)Math.PI * 4);
        //            //    material.Shininess = 0.1f;
        //            //    SCNTransaction.Commit();
        //            //};
        //            sceneView = new SCNView(View.Frame);
        //            sceneView.AutoresizingMask = UIViewAutoresizing.All;
        //            scene = SCNScene.Create();

        //            sceneView.Scene = scene;

        //            // camera
        //            camera = new SCNCamera
        //            {
        //                XFov = 40,
        //                YFov = 40
        //            };
        //            cameraNode = new SCNNode
        //            {
        //                Camera = camera,
        //                Position = new SCNVector3(0, 0, 40)
        //            };
        //            scene.RootNode.AddChildNode(cameraNode);
        //            //floor
        //            var floor = SCNFloor.Create();
        //            floor.ReflectionFalloffEnd = 0;
        //            floor.Reflectivity = 0;

        //            FloorNode = SCNNode.Create();
        //            FloorNode.Geometry = floor;
        //#if __IOS__
        //            FloorNode.Geometry.FirstMaterial.Diffuse.Contents = new UIImage("wood.png");
        //#else
        //            FloorNode.Geometry.FirstMaterial.Diffuse.Contents = new NSImage (NSBundle.MainBundle.PathForResource ("images/wood", "png"));
        //#endif
        //    FloorNode.Geometry.FirstMaterial.LocksAmbientWithDiffuse = true;
        //    FloorNode.Geometry.FirstMaterial.Diffuse.WrapS = SCNWrapMode.Repeat;
        //    FloorNode.Geometry.FirstMaterial.Diffuse.WrapT = SCNWrapMode.Repeat;
        //    FloorNode.Geometry.FirstMaterial.Diffuse.MipFilter = SCNFilterMode.Linear;

        //    FloorNode.PhysicsBody = SCNPhysicsBody.CreateStaticBody();
        //    FloorNode.PhysicsBody.Restitution = 1.0f;
        //    FloorNode.Position = new SCNVector3(0, 0, 0);

        //    scene.RootNode.AddChildNode(FloorNode);

        //    // sphere
        //    sphere = SCNSphere.Create(10.0f);
        //    sphereNode = SCNNode.FromGeometry(sphere);
        //    sphereNode.Position = new SCNVector3(0, 10, 0);
        //    scene.RootNode.AddChildNode(sphereNode);

        //    // ambient light
        //    ambientLight = SCNLight.Create();
        //    ambientLightNode = SCNNode.Create();
        //    ambientLight.LightType = SCNLightType.Ambient;
        //    ambientLight.Color = UIColor.Purple;
        //    ambientLightNode.Light = ambientLight;
        //    scene.RootNode.AddChildNode(ambientLightNode);

        //    // diffuse lights
        //    scene.RootNode.AddChildNode(CreateDiffuseLightNode(UIColor.Blue, new SCNVector3(-40, 40, 60), SCNLightType.Omni));
        //    scene.RootNode.AddChildNode(CreateDiffuseLightNode(UIColor.Yellow, new SCNVector3(20, 20, -70), SCNLightType.Omni));
        //    scene.RootNode.AddChildNode(CreateDiffuseLightNode(UIColor.Red, new SCNVector3(20, -20, 40), SCNLightType.Omni));
        //    scene.RootNode.AddChildNode(CreateDiffuseLightNode(UIColor.Green, new SCNVector3(-20, -40, 70), SCNLightType.Omni));

        //    // material
        //    material = SCNMaterial.Create();
        //    material.Diffuse.Contents = UIImage.FromFile("monkey.png");
        //    material.Specular.Contents = UIColor.White;
        //    sphere.Materials = new SCNMaterial[] { material };

        //    //sceneView.AllowsCameraControl = true;

        //    View.AddSubview(sceneView);
        //    //View.AddSubview(animateButton);
        //}

        SCNNode CreateDiffuseLightNode(UIColor color, SCNVector3 position, NSString lightType)
        {
            var light = SCNLight.Create();
            var lightNode = SCNNode.Create();
            light.LightType = lightType;
            light.Color = color;
            lightNode.Light = light;
            lightNode.Position = position;
            return lightNode;
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }

    public static class SKColorHelper
    {
        public static SKColor FromCommonWhiteAlpha(float white, float alpha)
        {
#if __IOS__
            return SKColor.FromWhiteAlpha(white, alpha);
#else
            return SKColor.FromDeviceWhite (white, alpha);
#endif
        }

        public static SKColor FromCommonRGBA(float r, float g, float b, float a)
        {
#if __IOS__
            return SKColor.FromRGBA(r, g, b, a);
#else
            return SKColor.FromDeviceRgba (r, g, b, a);
#endif
        }

        public static SKColor FromCommonHSBA(float h, float s, float b, float a)
        {
#if __IOS__
            return SKColor.FromHSBA(h, s, b, a);
#else
            return SKColor.FromDeviceHsba (h, s, b, a);
#endif
        }
    }
}
