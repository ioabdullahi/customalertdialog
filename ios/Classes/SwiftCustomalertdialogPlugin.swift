import Flutter
import UIKit

public class SwiftCustomalertdialogPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "customalertdialog", binaryMessenger: registrar.messenger())
    let instance = SwiftCustomalertdialogPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  if(call.method == "getPlatformVersion"){
    result("iOS " + UIDevice.current.systemVersion)
    }
    else if(call.method == "showAlertDialog"){
    DispatchQueue.main.async{
    let alert = UIAlertController(title: "CustomDialog" , message: "Hi, My name is Hotbox Technology" , preferredStyle: .alert,);
    alert.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler: nil))
    UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    }
  }
}
