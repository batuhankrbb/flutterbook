import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdmobHelper {
  AdmobHelper._();

  static final shared = AdmobHelper._();

  BannerAd makeBannerAd(
      {required String bannerID,
      AdSize bannerSize = AdSize.banner,
      BannerAdListener? listener,
      AdRequest? request}) {
    return BannerAd(
        size: AdSize.banner,
        adUnitId: bannerID,
        listener: listener ?? const BannerAdListener(),
        request: request ?? const AdRequest());
  }

  Future<void> showInterstitialAd(
      {required String interstitialID,
      AdRequest? adRequest,
      required Function(LoadAdError error) onAdFailed,
      Function(InterstitialAd ad)? onAdDismissed,
      Function(InterstitialAd ad)? onAdShowed}) async {
    await InterstitialAd.load(
      adUnitId: interstitialID,
      request: adRequest ?? const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
        ad.fullScreenContentCallback =
            FullScreenContentCallback(onAdShowedFullScreenContent: (ad) {
          if (onAdShowed != null) {
            onAdShowed(ad);
          }
        }, onAdDismissedFullScreenContent: (ad) {
          if (onAdDismissed != null) {
            onAdDismissed(ad);
            ad.dispose();
          }
        }, onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
        });
        ad.show();
      }, onAdFailedToLoad: (error) {
        onAdFailed(error);
      }),
    );
  }
}
