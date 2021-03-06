
#If TARGET<>"android" And TARGET<>"ios"
#Error "The Admob module is only available on the android and ios targets"
#End

#If TARGET="android"

Import "native/admob.android.java"

#LIBS+="${CD}/native/GoogleAdMobAdsSdk-6.2.1.jar"

#ANDROID_MANIFEST_APPLICATION+="<activity android:name=~qcom.google.ads.AdActivity~q android:configChanges=~qkeyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize~q />"

#Else

Import "native/admob.ios.cpp"

#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/libGoogleAdMobAds.a"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADBannerView.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADBannerViewDelegate.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADAdSize.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADRequest.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADRequestError.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADInterstitial.h"
#LIBS+="${CD}/native/GoogleAdMobAdsSdkiOS-6.2.1/GADInterstitialDelegate.h"

#LIBS+="StoreKit.framework"
#LIBS+="MessageUI.framework"
#LIBS+="SystemConfiguration.framework"
#LIBS+="AdSupport.framework"

'Already in project...
'#LIBS+="AudioToolbox.framework"
'#LIBS+="CoreGraphics.framework"

#End

Extern

Class Admob Extends Null="BBAdmob"

	Function GetAdmob:Admob()
	
	Method ShowAdView:Void( style:Int,layout:Int )
	
	Method HideAdView:Void()
	
	Method AdViewWidth:Int()
	
	Method AdViewHeight:Int()
	
End
