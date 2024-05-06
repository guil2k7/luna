.class public Lcom/wardrumstudios/utils/WarAdMob;
.super Ljava/lang/Object;
.source "WarAdMob.java"


# static fields
.field private static final AD_Failed:I = 0x2

.field private static final AD_FailedToLoad:I = 0x3

.field private static final AD_LoadInit:I = 0x0

.field private static final AD_Loaded:I = 0x2

.field private static final AD_Requested:I = 0x1

.field private static final AD_Shown:I = 0x1

.field private static final AD_ShownInit:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WarAdMob"


# instance fields
.field private TestDeviceId:Ljava/lang/String;

.field protected WarAds:Lcom/wardrumstudios/utils/WarAdMob;

.field private adLoadResult:I

.field private adShowResult:I

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public surfaceView:Landroid/view/SurfaceView;

.field public warActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarBase;Landroid/view/SurfaceView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/wardrumstudios/utils/WarBase;
    .param p2, "warsurface"    # Landroid/view/SurfaceView;
    .param p3, "DeviceID"    # Ljava/lang/String;
    .param p4, "UnitID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->TestDeviceId:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->WarAds:Lcom/wardrumstudios/utils/WarAdMob;

    .line 44
    iput v2, p0, Lcom/wardrumstudios/utils/WarAdMob;->adLoadResult:I

    .line 45
    iput v2, p0, Lcom/wardrumstudios/utils/WarAdMob;->adShowResult:I

    .line 51
    iput-object p0, p0, Lcom/wardrumstudios/utils/WarAdMob;->WarAds:Lcom/wardrumstudios/utils/WarAdMob;

    .line 52
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarAdMob;->jniWarAdMob()V

    .line 54
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarAdMob;->warActivity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarAdMob;->surfaceView:Landroid/view/SurfaceView;

    .line 56
    iput-object p3, p0, Lcom/wardrumstudios/utils/WarAdMob;->TestDeviceId:Ljava/lang/String;

    .line 57
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 58
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, p4}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarAdMob;->requestNewInterstitial()V

    .line 60
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/wardrumstudios/utils/WarAdMob$1;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarAdMob$1;-><init>(Lcom/wardrumstudios/utils/WarAdMob;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "mainLayout":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/wardrumstudios/utils/WarAdMob;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarAdMob;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/wardrumstudios/utils/WarAdMob;->adShowResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/wardrumstudios/utils/WarAdMob;)V
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarAdMob;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarAdMob;->requestNewInterstitial()V

    return-void
.end method

.method static synthetic access$202(Lcom/wardrumstudios/utils/WarAdMob;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarAdMob;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/wardrumstudios/utils/WarAdMob;->adLoadResult:I

    return p1
.end method

.method static synthetic access$300(Lcom/wardrumstudios/utils/WarAdMob;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarAdMob;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method private requestNewInterstitial()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->TestDeviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 117
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarAdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 118
    return-void

    .line 111
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarAdMob;->TestDeviceId:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .restart local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    goto :goto_0
.end method


# virtual methods
.method public GetAdState(I)I
    .locals 1
    .param p1, "AdStateType"    # I

    .prologue
    .line 129
    if-nez p1, :cond_0

    iget v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->adLoadResult:I

    .line 130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->adShowResult:I

    goto :goto_0
.end method

.method public ShowAdPopup()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->WarAds:Lcom/wardrumstudios/utils/WarAdMob;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->WarAds:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarAdMob;->ShowInterstitialAd()V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WarAds is null."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowInterstitialAd()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob;->warActivity:Landroid/app/Activity;

    new-instance v1, Lcom/wardrumstudios/utils/WarAdMob$2;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarAdMob$2;-><init>(Lcom/wardrumstudios/utils/WarAdMob;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public native jniWarAdMob()V
.end method
