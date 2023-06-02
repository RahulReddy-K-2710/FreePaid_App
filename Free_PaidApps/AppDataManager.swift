//
//  AppDataManager.swift
//  Free_PaidApps
//
//  Created by Roja on 19/11/22.
//

import Foundation

struct AppDataManager {
    
    static func getPaidApps() -> [PaidAppModel] {
          let app1 = PaidAppModel(appSerialNo: 1,
                                  appName: "DSLR Camera",
                                  appDesc: "The Complete Photo & Video app",
                                  appaction: "Rs.29",
                                  appIcon: "DSLR",
                                  appPurchase: "In-App Purchases")
            let app2 = PaidAppModel(appSerialNo: 2,
                                    appName: "pdf Scanner - Wordsscanner Pro",
                                    appDesc: "Scanner app & Document scan",
                                    appaction: "Rs.9",
                                    appIcon: "Pdf Scanner",
                                    appPurchase: "In-App Purchases")
            let app3 = PaidAppModel(appSerialNo: 3,
                                    appName: "Vehicle Registration Info",
                                    appDesc: "RTO(India)",
                                    appaction: "Rs.9",
                                    appIcon: "RTO- Transport",
                                    appPurchase: "")
            let app4 = PaidAppModel(appSerialNo: 4,
                                    appName: "Slow Shutter Cam",
                                    appDesc: "Long Exposure Photography",
                                    appaction: "Rs.179",
                                    appIcon: "Slow shutter",
                                    appPurchase: "")
            let app5 = PaidAppModel(appSerialNo: 5,
                                    appName: "Image Eraser - Inpaints & heal",
                                    appDesc: "Remove unwanted objects",
                                    appaction: "Rs.9",
                                    appIcon: "Image-Eraser",
                                    appPurchase: "In-App Purchases")
            let app6 = PaidAppModel(appSerialNo: 6,
                                    appName: "Live Wallpapers & Backgrounds+, ",
                                    appDesc: "Animated Lock Screen Themes",
                                    appaction: "Rs.9",
                                    appIcon: "Wallpaper",
                                    appPurchase: "")
            let app7 = PaidAppModel(appSerialNo: 7,
                                    appName: "Money - Track easily",
                                    appDesc: "Finance",
                                    appaction: "Rs.9",
                                    appIcon: "Money - Track",
                                    appPurchase: "In-App Purchases")
            let app8 = PaidAppModel(appSerialNo: 8,
                                    appName: "Forest: Focus for",
                                    appDesc: "Trees & Plants",
                                    appaction: "Rs.15",
                                    appIcon: "Forest",
                                    appPurchase: "")
              
              let apps = [app1, app2, app3, app4, app5, app6, app7, app8]
              
            return apps
        }
    
    static func getFreeApps() -> [FreeAppModel] {
      let app1 = FreeAppModel(appSerialNo: 1,
                              appName: "Instagram",
                              appDesc: "Photo & Video",
                              appaction: "download",
                              appIcon: "Instagram")
        let app2 = FreeAppModel(appSerialNo: 2,
                                appName: "WhatsApp Messenger",
                                appDesc: "Simple. Reliab. private.",
                                appaction: "OPEN",
                                appIcon: "WhatsApp")
        let app3 = FreeAppModel(appSerialNo: 3,
                                appName: "Google",
                                appDesc: "Search with images using Lens",
                                appaction: "GET",
                                appIcon: "google")
        let app4 = FreeAppModel(appSerialNo: 4,
                                appName: "YouTube: Watch, Listen, Stream",
                                appDesc: "Videos, Music and Live Streams",
                                appaction: "OPEN",
                                appIcon: "youtube")
        let app5 = FreeAppModel(appSerialNo: 5,
                                appName: "Google Maps - Transit & Food",
                                appDesc: "GPS, City Navigation & Traffic",
                                appaction: "download",
                                appIcon: "googlemaps")
        let app6 = FreeAppModel(appSerialNo: 6,
                                appName: "Google Pay: Save, Pay, Manage",
                                appDesc: "A Simple & Secure payment app",
                                appaction: "GET",
                                appIcon: "Google-Pay")
        let app7 = FreeAppModel(appSerialNo: 7,
                                appName: "Amazon Prime Video",
                                appDesc: "Originals, movies, TV, sports",
                                appaction: "download",
                                appIcon: "prime_video")
        let app8 = FreeAppModel(appSerialNo: 8,
                                appName: "Gmail - Email by Google",
                                appDesc: "Gmail & Email",
                                appaction: "download",
                                appIcon: "gmail")
          
          let apps = [app1, app2, app3, app4, app5, app6, app7, app8]
          
        return apps
    }
}
