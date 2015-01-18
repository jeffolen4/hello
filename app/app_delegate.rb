class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'hello'
    #rootViewController.view.backgroundColor = UIColor.whiteColor

    buildMenu
    buildWindow

    alert = NSAlert.new
    alert.messageText = "Hello World!"
    alert.runModal

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
