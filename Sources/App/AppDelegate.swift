import UIKit
import Vaccine

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  // MARK: - App lifecycle

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    Injection.load(loadApp, swizzling: true).add(observer: self, with: #selector(injected(_:)))
    return true
  }

  // MARK: - Initial state

  private func loadApp() {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let controller = UIViewController()
    window.rootViewController = controller
    window.makeKeyAndVisible()

    let completion: (Bool) -> Void = { _ in self.window = window }
    guard let currentWindow = self.window else { completion(true); return }
    UIView.transition(from: currentWindow, to: window,
                      duration: UIView.inheritedAnimationDuration,
                      completion: completion)
  }

  // MARK: - Injection

  @objc open func injected(_ notification: Notification) {
    guard Injection.objectWasInjected(self, in: notification) else { return }
    loadApp()
  }
}
