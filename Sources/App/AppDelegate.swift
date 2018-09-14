import UIKit
import Vaccine

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  // MARK: - App lifecycle

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    Injection.load(then: { self.load(application) })
      .add(observer: self, with: #selector(injected(_:)))
    return true
  }

  // MARK: - Initial state

  private func load(_ application: UIApplication) {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let controller = UIViewController()
    window.rootViewController = controller
    transition(from: self.window, to: window, then: { self.window = $0 })
  }

  // MARK: - Injection

  @objc open func injected(_ notification: Notification) {
    guard Vaccine.Injection.objectWasInjected(self, in: notification) else { return }
    load(UIApplication.shared)
  }
}
