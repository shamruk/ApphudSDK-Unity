import Foundation
import ApphudSDK
import FBSDKCoreKit

@objc final public class ApphudUnityFacebookWrapper: NSObject {
    @MainActor
    @objc public static func addFBAttribution(callback: @escaping (Bool) -> Void) {
        let extInfo = _AppEventsDeviceInfo.shared.encodedDeviceInfo
        let anonId = AppEvents.shared.anonymousID
        let data = ["extinfo": extInfo ?? ""]
        Apphud.addAttribution(data: data, from: .facebook, identifer: anonId, callback: callback)
    }
}
