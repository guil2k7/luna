.class public Lcom/wardrumstudios/utils/WarMedia;
.super Lcom/wardrumstudios/utils/WarGamepad;
.source "WarMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarMedia$PoolInfo;,
        Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    }
.end annotation


# static fields
.field static final REQUEST_READ_EXTERNAL_STORAGE:I = 0x1f41


# instance fields
.field public AddMovieExtension:Z

.field protected AllowLongPressForExit:Z

.field DeviceCountry:Ljava/lang/String;

.field public DeviceLocale:Ljava/lang/String;

.field DisplayMovieTextOnTap:Z

.field final DoLog:Z

.field ForceSize:Z

.field GameIsFocused:Z

.field protected HELLO_ID:I

.field IsInValidation:Z

.field private IsScreenPaused:Z

.field IsShowingBackMessage:I

.field KeepAspectRatio:Z

.field MovieIsSkippable:Z

.field MovieTextDisplayed:Z

.field protected SpecialBuildType:I

.field protected UseExpansionFiles:Z

.field protected UseFTPDownload:Z

.field public UseWarDownloader:Z

.field final UsingSounds:Z

.field activity:Landroid/app/Activity;

.field protected apkFileName:Ljava/lang/String;

.field protected appContentText:Ljava/lang/CharSequence;

.field protected appContentTitle:Ljava/lang/CharSequence;

.field protected appIntent:Landroid/content/Intent;

.field protected appStatusIcon:I

.field protected appTickerText:Ljava/lang/CharSequence;

.field audioManager:Landroid/media/AudioManager;

.field audioMax:I

.field audioVolume:I

.field availableMemory:I

.field bIsPlayingMovie:I

.field bMoviePlayerPaused:Z

.field public baseDirectory:Ljava/lang/String;

.field public baseDirectoryRoot:Ljava/lang/String;

.field protected baseDisplayHeight:I

.field protected baseDisplayWidth:I

.field protected cachedSizeRead:I

.field protected checkForMaxDisplaySize:Z

.field col1:Landroid/widget/LinearLayout;

.field col2:Landroid/widget/LinearLayout;

.field col3:Landroid/widget/LinearLayout;

.field currentMovieFilename:Ljava/lang/String;

.field currentMovieLength:I

.field currentMovieMS:I

.field currentMovieOffset:I

.field currentMovieVolume:F

.field currentTempID:I

.field customMovieHolder:Landroid/view/SurfaceHolder;

.field customMovieSurface:Landroid/view/SurfaceView;

.field public dialogPlayer:Landroid/media/MediaPlayer;

.field downloadHolder:Landroid/view/SurfaceHolder;

.field downloadView:Landroid/view/SurfaceView;

.field downloadViewCreated:Z

.field exitDialog:Landroid/app/AlertDialog;

.field protected expansionFileName:Ljava/lang/String;

.field protected hasTouchScreen:Z

.field isCompleting:Z

.field isPhone:Z

.field private isUserPresent:Z

.field lastMovieStop:J

.field protected lastNetworkAvailable:I

.field public llSplashView:Landroid/widget/LinearLayout;

.field public localIp:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field mAscent:I

.field private mAverageSpeed:Landroid/widget/TextView;

.field mCamera:Landroid/hardware/Camera;

.field private mCancelValidation:Z

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mState:I

.field private mStatePaused:Z

.field private mStatusText:Landroid/widget/TextView;

.field mTextPaint:Landroid/graphics/Paint;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field memInfo:Landroid/app/ActivityManager$MemoryInfo;

.field memoryThreshold:I

.field protected metrics:Landroid/util/DisplayMetrics;

.field mgr:Landroid/app/ActivityManager;

.field movieLooping:I

.field public moviePlayer:Landroid/media/MediaPlayer;

.field movieSubtitleText:Ljava/lang/String;

.field movieTextDisplayNow:Z

.field movieTextHolder:Landroid/view/SurfaceHolder;

.field movieTextScale:I

.field movieTextSurface:Landroid/view/SurfaceView;

.field movieTextView:Landroid/widget/TextView;

.field movieView:Landroid/widget/LinearLayout;

.field movieViewCreated:Z

.field movieViewHeight:I

.field movieViewIsActive:Z

.field movieViewText:Landroid/widget/TextView;

.field movieViewWidth:I

.field movieViewX:I

.field movieViewY:I

.field movieWindowHolder:Landroid/view/SurfaceHolder;

.field movieWindowSurface:Landroid/view/SurfaceView;

.field public musicPlayer:Landroid/media/MediaPlayer;

.field myPid:[I

.field private myVib:Landroid/os/Vibrator;

.field private myWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected overrideExpansionName:Z

.field protected patchFileName:Ljava/lang/String;

.field protected privateData:[B

.field protected privateDataFiles:[Ljava/lang/String;

.field row1:Landroid/widget/LinearLayout;

.field row2:Landroid/widget/LinearLayout;

.field row3:Landroid/widget/LinearLayout;

.field sTextPaint:Landroid/text/TextPaint;

.field screenWidthInches:F

.field skipMovies:Z

.field skipSound:Z

.field soundLog:Z

.field sounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarMedia$PoolInfo;",
            ">;"
        }
    .end annotation
.end field

.field tPaint:Landroid/graphics/Paint;

.field textPaint:Landroid/text/TextPaint;

.field totalMemory:I

.field vibrateEffects:[[J

.field public waitForPermissions:Z

.field public wardown:Lcom/wardrumstudios/utils/WarDownloader;

.field public xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarGamepad;-><init>()V

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    .line 151
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->overrideExpansionName:Z

    .line 152
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 166
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->waitForPermissions:Z

    .line 168
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    .line 169
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    .line 171
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    .line 172
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->UseWarDownloader:Z

    .line 173
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->wardown:Lcom/wardrumstudios/utils/WarDownloader;

    .line 176
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    .line 177
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 179
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    .line 183
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 184
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->skipSound:Z

    .line 185
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->skipMovies:Z

    .line 186
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isCompleting:Z

    .line 187
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 188
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->soundLog:Z

    .line 197
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 200
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 202
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->SpecialBuildType:I

    .line 205
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    .line 207
    const/16 v0, 0x303a

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->HELLO_ID:I

    .line 208
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->appStatusIcon:I

    .line 210
    const-string v0, "MyApp"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appTickerText:Ljava/lang/CharSequence;

    .line 211
    const-string v0, "MyApp"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appContentTitle:Ljava/lang/CharSequence;

    .line 212
    const-string v0, "Running - Return to Game?"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appContentText:Ljava/lang/CharSequence;

    .line 213
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->appIntent:Landroid/content/Intent;

    .line 214
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseExpansionFiles:Z

    .line 216
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    .line 218
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    .line 228
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    .line 230
    const v0, 0x186a0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentTempID:I

    .line 242
    const-string v0, "/mnt/sdcard/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    .line 243
    const-string v0, "/mnt/sdcard/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 244
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    .line 249
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 250
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    .line 253
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSizeRead:I

    .line 257
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UsingSounds:Z

    .line 259
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    .line 260
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    .line 261
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 264
    const/16 v0, 0x780

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayWidth:I

    .line 265
    const/16 v0, 0x438

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayHeight:I

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastNetworkAvailable:I

    .line 274
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->checkForMaxDisplaySize:Z

    .line 418
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 652
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadViewCreated:Z

    .line 750
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    .line 787
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$9;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$9;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 942
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 943
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 945
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 946
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 947
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 1027
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 1042
    new-array v0, v3, [[J

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    new-array v3, v5, [J

    fill-array-data v3, :array_1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    new-array v3, v5, [J

    fill-array-data v3, :array_2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-array v3, v5, [J

    fill-array-data v3, :array_3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v3, v5, [J

    fill-array-data v3, :array_4

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vibrateEffects:[[J

    .line 1258
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    .line 1259
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 1260
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    .line 1490
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1523
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    .line 1524
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    .line 1526
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    .line 1527
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    .line 1529
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    .line 1530
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewCreated:Z

    .line 1532
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1533
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    .line 1535
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    .line 1536
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    .line 1537
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    .line 1538
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    .line 1539
    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1540
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieView:Landroid/widget/LinearLayout;

    .line 1543
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewText:Landroid/widget/TextView;

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1948
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    .line 2009
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2341
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    .line 2528
    const/16 v0, 0x20

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    .line 2593
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextView:Landroid/widget/TextView;

    .line 2609
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 2637
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    return-void

    :cond_0
    move v0, v2

    .line 179
    goto/16 :goto_0

    .line 1042
    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
        0x32
        0x4b
        0x64
        0x32
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x19
        0x32
        0x64
        0x32
        0x19
        0x64
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x19
        0x32
        0x19
        0x64
        0x64
        0x64
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x32
        0x32
        0x32
        0x32
        0x19
        0x64
    .end array-data
.end method

.method static synthetic access$000(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatePaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewCreated:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieIsStopping:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mCancelValidation:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wardrumstudios/utils/WarMedia;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->setButtonPausedState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->noVidSurface:Z

    return v0
.end method

.method static synthetic access$800(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->noVidSurface:Z

    return v0
.end method

.method private getNumberOfProcessors()I
    .locals 4

    .prologue
    .line 2185
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2187
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$1CpuFilter;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$1CpuFilter;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 2189
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2192
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 2190
    :catch_0
    move-exception v1

    .line 2192
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private native initTouchSense(Landroid/content/Context;)V
.end method

.method private initializeDownloadUI()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 656
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "initializeDownloadUI"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    :cond_0
    const-class v6, Lcom/wardrumstudios/utils/WarDownloaderService;

    invoke-static {p0, v6}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 658
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v6, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 660
    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    .line 661
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    .line 662
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$5;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$5;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 682
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 683
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v6}, Lcom/wardrumstudios/utils/WarMedia;->setContentView(Landroid/view/View;)V

    .line 685
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 686
    .local v3, "myParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 688
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "download"

    const-string v8, "layout"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 689
    .local v2, "layoutID":I
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 690
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 691
    .local v5, "tmpView":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v5, v3}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressBar"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 694
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    .line 695
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusText"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 696
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    .line 697
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAsFraction"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 698
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressFraction:Landroid/widget/TextView;

    .line 699
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAsPercentage"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 700
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressPercent:Landroid/widget/TextView;

    .line 701
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAverageSpeed"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 702
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mAverageSpeed:Landroid/widget/TextView;

    .line 703
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressTimeRemaining"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 704
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mTimeRemaining:Landroid/widget/TextView;

    .line 705
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "downloaderDashboard"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 706
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    .line 707
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "approveCellular"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 708
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    .line 709
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "pauseButton"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 710
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    .line 711
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifiSettingsButton"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 712
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 714
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$6;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$6;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mWiFiSettingsButton:Landroid/widget/Button;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$7;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$7;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "resumeOverCellular"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 739
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 740
    .local v4, "resumeOnCell":Landroid/widget/Button;
    new-instance v6, Lcom/wardrumstudios/utils/WarMedia$8;

    invoke-direct {v6, p0}, Lcom/wardrumstudios/utils/WarMedia$8;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .prologue
    .line 2251
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatePaused:Z

    .line 2252
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_button_resume"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2254
    .local v0, "stringResourceID":I
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 2255
    return-void

    .line 2253
    .end local v0    # "stringResourceID":I
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_button_pause"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 2244
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mState:I

    if-eq v0, p1, :cond_0

    .line 2245
    iput p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mState:I

    .line 2246
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2248
    :cond_0
    return-void
.end method


# virtual methods
.method public AfterDownloadFunction()V
    .locals 0

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    .line 2733
    return-void
.end method

.method ChangeMovieView(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, -0x2

    .line 1634
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1636
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1637
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1638
    return-void
.end method

.method public CheckIfNeedsReadPermission(Landroid/app/Activity;)Z
    .locals 11
    .param p1, "me"    # Landroid/app/Activity;

    .prologue
    const/16 v10, 0x1f41

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2808
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileVersion:I

    invoke-static {p0, v5, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v4

    .line 2809
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getObbDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2810
    .local v1, "baseDirectory":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2812
    .local v0, "askForPermission":Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2813
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    .line 2814
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2815
    const/4 v0, 0x0

    .line 2820
    .end local v2    # "br":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v0, :cond_1

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 2821
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->waitForPermissions:Z

    .line 2822
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->delaySetContentView:Z

    .line 2824
    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v7}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2828
    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v8, v7, v6

    invoke-static {p1, v7, v10}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2834
    :goto_1
    return v5

    .line 2816
    :catch_0
    move-exception v3

    .line 2817
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Ask for read permission"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2830
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v8, v7, v6

    invoke-static {p1, v7, v10}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    move v5, v6

    .line 2834
    goto :goto_1
.end method

.method ClearMovieText()V
    .locals 1

    .prologue
    .line 2518
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$20;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$20;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2525
    return-void
.end method

.method ClearSplashScreen()V
    .locals 1

    .prologue
    .line 2693
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$24;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$24;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2699
    return-void
.end method

.method public ClearSystemNotification()V
    .locals 1

    .prologue
    .line 1443
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$12;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$12;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1450
    return-void
.end method

.method public ClearVidView()V
    .locals 1

    .prologue
    .line 1468
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$14;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$14;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1480
    return-void
.end method

.method public ConvertToBitmap([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 2870
    const/4 v0, 0x0

    return v0
.end method

.method public CopyFileFromAssets(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2840
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2841
    .local v7, "ringtone":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2842
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2843
    .local v2, "destParentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2844
    const/4 v3, 0x0

    .line 2845
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 2848
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2849
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 2850
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2852
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 2854
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 2855
    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2864
    .end local v1    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 2866
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "destParentDir":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    return v8

    .line 2857
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v2    # "destParentDir":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2858
    const/4 v3, 0x0

    .line 2859
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 2860
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2861
    const/4 v4, 0x0

    .line 2862
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    const/4 v8, 0x1

    goto :goto_1

    .line 2864
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v6    # "read":I
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method CreatTextSurface(Landroid/view/SurfaceView;)Landroid/view/SurfaceHolder;
    .locals 3
    .param p1, "surface"    # Landroid/view/SurfaceView;

    .prologue
    .line 1546
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1547
    .local v0, "holder":Landroid/view/SurfaceHolder;
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$15;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$15;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1578
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "movieWindowHolder setType"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1579
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1580
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1582
    return-object v0
.end method

.method CreateMovieView(IIII)Landroid/widget/LinearLayout;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1595
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1596
    .local v0, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1597
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    .line 1600
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1601
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1604
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    .line 1605
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1606
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1608
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    .line 1609
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1610
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    .line 1612
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1613
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    .line 1616
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1618
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    .line 1619
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1620
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1621
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1622
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1623
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1624
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1626
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    .line 1627
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1628
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1629
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1630
    return-object v0
.end method

.method public CreateTextBox(IIIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 2786
    return-void
.end method

.method CreateTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1586
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1587
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1589
    const-string v1, "Tap to Skip"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1591
    return-object v0
.end method

.method public CustomLoadFunction()Z
    .locals 1

    .prologue
    .line 2727
    const/4 v0, 0x0

    return v0
.end method

.method public DeleteDirectory(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "dirString"    # Ljava/lang/String;
    .param p2, "recurse"    # Z

    .prologue
    .line 2707
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2708
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2709
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 2710
    .local v1, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2711
    new-instance v0, Ljava/io/File;

    aget-object v4, v1, v3

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2712
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/wardrumstudios/utils/WarMedia;->DeleteDirectory(Ljava/lang/String;Z)V

    .line 2715
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2710
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2719
    .end local v0    # "child":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2721
    .end local v1    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 2097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, "fullFilename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v0, "delfile":Ljava/io/File;
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_0

    .line 2100
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2101
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2102
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_1

    .line 2103
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2104
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 2106
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method DisplayMovieText()V
    .locals 4

    .prologue
    .line 2595
    move-object v0, p0

    .line 2596
    .local v0, "myActivity":Landroid/app/Activity;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayMovieText vidViewIsActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->vidViewIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 2601
    return-void
.end method

.method public DisplaySplashScreen(Ljava/lang/String;I)V
    .locals 1
    .param p1, "splashPng"    # Ljava/lang/String;
    .param p2, "splashTimer"    # I

    .prologue
    .line 2639
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/wardrumstudios/utils/WarMedia$23;-><init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2690
    return-void
.end method

.method DrawMovieText()V
    .locals 1

    .prologue
    .line 2555
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$21;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$21;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2591
    return-void
.end method

.method public ExitGame()V
    .locals 1

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    .line 1244
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 1245
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1246
    return-void
.end method

.method public FileGetArchiveName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2119
    packed-switch p1, :pswitch_data_0

    .line 2124
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2120
    :pswitch_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    goto :goto_0

    .line 2121
    :pswitch_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    goto :goto_0

    .line 2122
    :pswitch_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_0

    .line 2119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public FileRename(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "oldfile"    # Ljava/lang/String;
    .param p2, "newfile"    # Ljava/lang/String;
    .param p3, "overWrite"    # I

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x2f

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2111
    .local v3, "oldFilename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "newFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2113
    .local v2, "oldFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2115
    const/4 v4, 0x1

    return v4
.end method

.method public GetAndroidBuildinfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2132
    packed-switch p1, :pswitch_data_0

    .line 2137
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2133
    :pswitch_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    .line 2134
    :pswitch_1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_0

    .line 2135
    :pswitch_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .line 2136
    :pswitch_3
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    goto :goto_0

    .line 2132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public GetAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2777
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAvailableMemory()I
    .locals 12

    .prologue
    .line 2759
    const/4 v1, 0x0

    .line 2760
    .local v1, "freeSize":I
    const-wide/16 v4, 0x0

    .line 2761
    .local v4, "totalSize":J
    const-wide/16 v6, -0x1

    .line 2763
    .local v6, "usedSize":J
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 2764
    .local v2, "info":Ljava/lang/Runtime;
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    long-to-int v1, v8

    .line 2765
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 2766
    int-to-long v8, v1

    sub-long v6, v4, v8

    .line 2772
    .end local v2    # "info":Ljava/lang/Runtime;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 2773
    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    return v3

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1920
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    .local v0, "value":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 1922
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetConfigSetting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1923
    :cond_0
    return-object v0
.end method

.method public GetDeviceInfo(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2142
    packed-switch p1, :pswitch_data_0

    .line 2146
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2143
    :pswitch_0
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v0

    goto :goto_0

    .line 2144
    :pswitch_1
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetDeviceLocale()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1960
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1961
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return v1

    .line 1963
    :cond_1
    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1964
    const/4 v1, 0x1

    goto :goto_0

    .line 1965
    :cond_2
    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1966
    const/4 v1, 0x2

    goto :goto_0

    .line 1967
    :cond_3
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1968
    const/4 v1, 0x3

    goto :goto_0

    .line 1969
    :cond_4
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1970
    const/4 v1, 0x4

    goto :goto_0

    .line 1971
    :cond_5
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1972
    const/4 v1, 0x5

    goto :goto_0

    .line 1973
    :cond_6
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1974
    const/4 v1, 0x6

    goto :goto_0

    .line 1975
    :cond_7
    const-string v2, "sv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1976
    const/4 v1, 0x7

    goto :goto_0

    .line 1977
    :cond_8
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1978
    :cond_9
    const/16 v1, 0x8

    goto :goto_0

    .line 1979
    :cond_a
    const-string v2, "ru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1980
    const/16 v1, 0x9

    goto :goto_0
.end method

.method public GetDeviceType()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2151
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build info version device  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2152
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build MANUFACTURER  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build BOARD  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2154
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build DISPLAY  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2155
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build CPU_ABI  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2156
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build CPU_ABI2  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2157
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build HARDWARE  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2158
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build MODEL  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2159
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build PRODUCT  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2162
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->glVendor:Ljava/lang/String;

    const-string v6, "NVIDIA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x2

    .line 2163
    .local v0, "isTegra":I
    :goto_0
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v5

    mul-int/lit8 v2, v5, 0x4

    .line 2164
    .local v2, "numProcs":I
    iget v5, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    mul-int/lit8 v1, v5, 0x40

    .line 2165
    .local v1, "mem":I
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/2addr v4, v0

    add-int/2addr v4, v2

    add-int v3, v4, v1

    .line 2166
    .local v3, "ret":I
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renderer \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->glVendor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2167
    :cond_1
    return v3

    .end local v0    # "isTegra":I
    .end local v1    # "mem":I
    .end local v2    # "numProcs":I
    .end local v3    # "ret":I
    :cond_2
    move v0, v4

    .line 2162
    goto :goto_0
.end method

.method public GetGameBaseDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 592
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "base":Ljava/lang/String;
    const-string v3, "/Android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 594
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 602
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 598
    :catch_0
    move-exception v3

    .line 601
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowSDErrorDialog()V

    .line 602
    const-string v3, ""

    goto :goto_0

    .line 597
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public GetLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public GetLocale()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1987
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1988
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "en"

    if-ne v0, v2, :cond_1

    .line 2006
    :cond_0
    :goto_0
    return v1

    .line 1990
    :cond_1
    const-string v2, "fr"

    if-ne v0, v2, :cond_2

    .line 1991
    const/4 v1, 0x1

    goto :goto_0

    .line 1992
    :cond_2
    const-string v2, "de"

    if-ne v0, v2, :cond_3

    .line 1993
    const/4 v1, 0x2

    goto :goto_0

    .line 1994
    :cond_3
    const-string v2, "it"

    if-ne v0, v2, :cond_4

    .line 1995
    const/4 v1, 0x3

    goto :goto_0

    .line 1996
    :cond_4
    const-string v2, "es"

    if-ne v0, v2, :cond_5

    .line 1997
    const/4 v1, 0x4

    goto :goto_0

    .line 1998
    :cond_5
    const-string v2, "ja"

    if-ne v0, v2, :cond_6

    .line 1999
    const/4 v1, 0x5

    goto :goto_0

    .line 2000
    :cond_6
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2001
    const/4 v1, 0x6

    goto :goto_0

    .line 2002
    :cond_7
    const-string v2, "sv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2003
    const/4 v1, 0x7

    goto :goto_0

    .line 2004
    :cond_8
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2005
    :cond_9
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public GetLowThreshhold()I
    .locals 1

    .prologue
    .line 2755
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    return v0
.end method

.method GetMaxDisplaySize()V
    .locals 8

    .prologue
    .line 277
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 279
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 280
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 281
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    iget v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_0

    .line 283
    iget v5, v4, Landroid/graphics/Point;->x:I

    iput v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    .line 284
    iget v5, v4, Landroid/graphics/Point;->y:I

    iput v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayHeight:I

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v3

    .line 288
    .local v3, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 289
    aget-object v2, v3, v1

    .line 290
    .local v2, "mode":Landroid/view/Display$Mode;
    iget v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 291
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iput v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    .line 292
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iput v5, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayHeight:I

    .line 294
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "i":I
    .end local v2    # "mode":Landroid/view/Display$Mode;
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method public GetMemoryInfo(Z)I
    .locals 10
    .param p1, "allProcesses"    # Z

    .prologue
    const-wide/16 v8, 0x400

    .line 1263
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 1264
    const-string v4, "activity"

    invoke-super {p0, v4}, Lcom/wardrumstudios/utils/WarGamepad;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    .line 1265
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 1267
    :cond_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    if-nez v4, :cond_1

    .line 1268
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "GetMemoryInfo mgr NULL"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    const/4 v4, 0x0

    .line 1317
    :goto_0
    return v4

    .line 1271
    :cond_1
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1275
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    .line 1276
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    .line 1277
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 1278
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    .line 1283
    :goto_1
    if-eqz p1, :cond_4

    .line 1285
    :try_start_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 1286
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1288
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 1289
    .local v3, "pids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1290
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1280
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "pids":[I
    :cond_2
    const/16 v4, 0x100

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    goto :goto_1

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningAppProcesses null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1317
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    long-to-int v4, v4

    goto :goto_0

    .line 1312
    :cond_4
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    if-eqz v4, :cond_3

    .line 1313
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    goto :goto_3
.end method

.method public GetPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 2463
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2465
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2466
    .local v0, "appinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2468
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2469
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2472
    :goto_1
    return-object v3

    .line 2466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2472
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public GetRealLocale()V
    .locals 6

    .prologue
    .line 1950
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1951
    .local v1, "langLocal":Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1953
    .local v2, "locale":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    .line 1954
    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v3, :cond_0

    .line 1955
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetLocale getDefault "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " langLocal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DeviceCountry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1956
    :cond_0
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1957
    return-void
.end method

.method public GetScreenWidthInches()F
    .locals 1

    .prologue
    .line 2751
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    return v0
.end method

.method GetSoundsIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->sounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1250
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->sounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;

    .line 1251
    .local v1, "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    iget v2, v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;->soundID:I

    .line 1255
    .end local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :goto_1
    return v2

    .line 1249
    .restart local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    .end local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public GetSpecialBuildType()I
    .locals 1

    .prologue
    .line 2703
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->SpecialBuildType:I

    return v0
.end method

.method public GetTotalMemory()I
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    return v0
.end method

.method public IsAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 2476
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2478
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2479
    .local v0, "appinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2480
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dir "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2481
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2482
    const/4 v3, 0x1

    .line 2485
    :goto_1
    return v3

    .line 2479
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2485
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public IsCloudAvailable()Z
    .locals 1

    .prologue
    .line 2494
    const/4 v0, 0x0

    return v0
.end method

.method public IsKeyboardShown()Z
    .locals 1

    .prologue
    .line 2222
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    return v0
.end method

.method public IsMoviePlaying()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 1905
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1916
    :cond_0
    :goto_0
    return v0

    .line 1908
    :cond_1
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1909
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    goto :goto_0

    .line 1910
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1913
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1914
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public IsMovieViewActive()Z
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 1484
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidViewIsActive:Z

    .line 1486
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    goto :goto_0
.end method

.method public IsPhone()Z
    .locals 2

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTV()Z
    .locals 1

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsAndroidTV:Z

    return v0
.end method

.method public LoadAllGamesFromCloud()V
    .locals 0

    .prologue
    .line 2500
    return-void
.end method

.method public LoadGameFromCloud(I[B)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "array"    # [B

    .prologue
    .line 2503
    const-string v0, ""

    return-object v0
.end method

.method public MovieClearText(Z)V
    .locals 1
    .param p1, "isSubtitle"    # Z

    .prologue
    .line 2604
    if-eqz p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 2606
    :goto_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 2607
    return-void

    .line 2605
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    goto :goto_0
.end method

.method public MovieDisplayText(Z)V
    .locals 3
    .param p1, "display"    # Z

    .prologue
    .line 2631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovieDisplayText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2632
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    if-nez v0, :cond_0

    .line 2633
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieText()V

    .line 2635
    :cond_0
    return-void
.end method

.method public MovieKeepAspectRatio(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .prologue
    .line 2514
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    .line 2515
    return-void
.end method

.method public MovieSetSkippable(Z)V
    .locals 0
    .param p1, "skippable"    # Z

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1493
    return-void
.end method

.method public MovieSetText(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "DisplayNow"    # Z
    .param p3, "isSubtitle"    # Z

    .prologue
    .line 2611
    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 2619
    :goto_0
    if-eqz p2, :cond_3

    .line 2620
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieText()V

    .line 2628
    :cond_0
    :goto_1
    return-void

    .line 2613
    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    .line 2614
    iput-boolean p2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 2615
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    goto :goto_0

    .line 2613
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 2621
    :cond_3
    if-nez p2, :cond_0

    .line 2622
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$22;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$22;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method MovieSetTextScale(I)V
    .locals 2
    .param p1, "scale"    # I

    .prologue
    .line 2530
    iput p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    .line 2531
    const v0, -0xff0100

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->SetPaint(II)V

    .line 2532
    return-void
.end method

.method public native NativeNotifyNetworkChange(I)V
.end method

.method protected NetworkChange()V
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isWiFiAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 839
    .local v0, "curNetwork":I
    :goto_0
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->lastNetworkAvailable:I

    if-eq v0, v1, :cond_0

    .line 840
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->NativeNotifyNetworkChange(I)V

    .line 841
    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastNetworkAvailable:I

    .line 843
    :cond_0
    return-void

    .line 838
    .end local v0    # "curNetwork":I
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public NewCloudSaveAvailable(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 2510
    const/4 v0, 0x0

    return v0
.end method

.method public OBFU_GetDeviceID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1935
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1938
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1939
    .local v3, "tmDevice":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1940
    .local v4, "tmSerial":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v8, v5

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v10, v5

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 1944
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method OpenLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 2489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2490
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->startActivity(Landroid/content/Intent;)V

    .line 2491
    return-void
.end method

.method PauseMoviePlayer(Z)V
    .locals 3
    .param p1, "bPause"    # Z

    .prologue
    .line 932
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 940
    :goto_0
    return-void

    .line 933
    :cond_0
    move v0, p1

    .line 934
    .local v0, "bfPause":Z
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$10;

    invoke-direct {v1, p0, v0}, Lcom/wardrumstudios/utils/WarMedia$10;-><init>(Lcom/wardrumstudios/utils/WarMedia;Z)V

    .line 939
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method PauseMoviePlayerThread(Z)V
    .locals 11
    .param p1, "bPause"    # Z

    .prologue
    const/4 v4, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 950
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->skipMovies:Z

    if-eqz v0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    if-eqz p1, :cond_4

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    :try_start_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    .line 959
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 961
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer paused at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 962
    :catch_0
    move-exception v8

    .line 963
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer pause failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 965
    :try_start_3
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 967
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 968
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 978
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 979
    .local v7, "e":Ljava/lang/IllegalStateException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseMoviePlayerThread err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 981
    iput-object v10, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 982
    iput v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 983
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 972
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "moviePlayer not playing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 986
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer resume bMoviePlayerPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " moviePlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    .line 988
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    if-lez v0, :cond_5

    .line 989
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FII)V

    .line 992
    :goto_2
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 991
    :cond_5
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;F)V

    goto :goto_2

    .line 994
    :cond_6
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 995
    const/4 v6, 0x0

    .line 996
    .local v6, "count":I
    :cond_7
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsMovieViewActive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 997
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v0, :cond_8

    .line 998
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "moviePlayer waiting for vidViewIsActive"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    :cond_8
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    .line 1000
    add-int/lit8 v6, v6, 0x1

    if-le v6, v4, :cond_7

    .line 1004
    :cond_9
    if-gt v6, v4, :cond_b

    .line 1005
    :try_start_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "moviePlayer paused false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1006
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    if-lez v0, :cond_a

    .line 1007
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    iget v4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1021
    :goto_3
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 1009
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;F)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 1015
    :catch_2
    move-exception v8

    .line 1016
    .restart local v8    # "ex":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer resume failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    iput-object v10, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1019
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    goto :goto_3

    .line 1011
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_b
    :try_start_8
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1013
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 966
    .end local v6    # "count":I
    .restart local v8    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public PlayMovie(Ljava/lang/String;F)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "Volume"    # F

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V

    .line 1823
    return-void
.end method

.method public PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "Volume"    # F
    .param p3, "myVidHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v10, 0x0

    .line 1828
    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1830
    const/4 v7, 0x1

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1831
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 1832
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 1833
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 1834
    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 1836
    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v7, :cond_0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlayMovie "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1837
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    if-eqz v7, :cond_2

    const-string v7, ".m4v"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1838
    .local v6, "newFile":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v7, :cond_1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlayMovie newFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1839
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v4, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 1841
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1845
    :try_start_0
    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    if-eqz v7, :cond_3

    .line 1846
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".m4v.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "apkFilename":Ljava/lang/String;
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1854
    .end local v2    # "apkFilename":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_4

    .line 1855
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1856
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1901
    :goto_3
    return-void

    .line 1837
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "newFile":Ljava/lang/String;
    :cond_2
    const-string v7, ""

    goto/16 :goto_0

    .line 1848
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "newFile":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "apkFilename":Ljava/lang/String;
    goto :goto_1

    .line 1851
    .end local v2    # "apkFilename":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1852
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2

    .line 1861
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_4
    move-object v5, p0

    .line 1863
    .local v5, "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    :try_start_2
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_5

    .line 1864
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1867
    :cond_5
    :goto_4
    iget-wide v8, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 1868
    const-wide/16 v8, 0x64

    invoke-virtual {p0, v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_4

    .line 1869
    :cond_6
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->SetVidView()V

    .line 1870
    move-object v1, v0

    .line 1871
    .local v1, "afdFinal":Landroid/content/res/AssetFileDescriptor;
    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$18;

    invoke-direct {v7, p0, v1, v6, v5}, Lcom/wardrumstudios/utils/WarMedia$18;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v7}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1865
    .end local v1    # "afdFinal":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method public PlayMovieInFile(Ljava/lang/String;FII)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "volume"    # F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1743
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->vidHolder:Landroid/view/SurfaceHolder;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V

    .line 1744
    return-void
.end method

.method public PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "volume"    # F
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "myVidHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1750
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    .line 1751
    :cond_0
    iput-object p5, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1754
    const/4 v4, 0x1

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1755
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 1756
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 1757
    iput p3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 1758
    iput p4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 1759
    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 1760
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v4, :cond_1

    .line 1761
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlayMovieInFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1763
    :cond_1
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1767
    .local v3, "tempFilename":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1769
    move-object v3, p1

    .line 1771
    :cond_2
    move-object v2, v3

    .line 1772
    .local v2, "newFile":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v4, :cond_3

    .line 1773
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlayMovieInFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1775
    :cond_3
    move-object v1, p0

    .line 1777
    .local v1, "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    :try_start_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_4

    .line 1778
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :cond_4
    :goto_1
    iget-wide v4, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 1782
    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_1

    .line 1766
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    .end local v2    # "newFile":Ljava/lang/String;
    .end local v3    # "tempFilename":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "/"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tempFilename":Ljava/lang/String;
    goto :goto_0

    .line 1783
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    .restart local v2    # "newFile":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->SetVidView()V

    .line 1784
    new-instance v4, Lcom/wardrumstudios/utils/WarMedia$17;

    invoke-direct {v4, p0, v2, v1}, Lcom/wardrumstudios/utils/WarMedia$17;-><init>(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1819
    return-void

    .line 1779
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public PlayMovieInWindow(Ljava/lang/String;IIIIFIIIZ)V
    .locals 9
    .param p1, "inFilename"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "inVolume"    # F
    .param p7, "inOffset"    # I
    .param p8, "inLength"    # I
    .param p9, "looping"    # I
    .param p10, "forceSize"    # Z

    .prologue
    .line 1641
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlayMovieInWindow filename "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " movieWindowSurface "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " inOffset "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " inLength "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1643
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1645
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    .line 1646
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlayMovieInWindow ForceSize "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " width "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " height "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1648
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->checkForMaxDisplaySize:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayHeight:I

    mul-int/lit8 v2, p5, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1650
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayWidth:I

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayHeight:I

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    iput p3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    .line 1656
    :goto_0
    move/from16 v0, p9

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1657
    move-object v4, p1

    .line 1658
    .local v4, "filename":Ljava/lang/String;
    move v5, p6

    .line 1659
    .local v5, "volume":F
    move/from16 v6, p7

    .line 1660
    .local v6, "offset":I
    move/from16 v3, p8

    .line 1661
    .local v3, "length":I
    move-object v7, p0

    .line 1662
    .local v7, "myWarmedia":Lcom/wardrumstudios/utils/WarMedia;
    const/4 v1, 0x1

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1663
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$16;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/wardrumstudios/utils/WarMedia$16;-><init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;FI)V

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1739
    return-void

    .line 1652
    .end local v3    # "length":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "volume":F
    .end local v6    # "offset":I
    .end local v7    # "myWarmedia":Lcom/wardrumstudios/utils/WarMedia;
    :cond_0
    iput p4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iput p5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    iput p3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    goto :goto_0
.end method

.method public RestoreCurrentLanguage()V
    .locals 4

    .prologue
    .line 2033
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    .local v1, "lang":Ljava/lang/String;
    const-string v0, ""

    .line 2035
    .local v0, "countyStr":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2036
    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "GB"

    .line 2041
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2042
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2045
    :cond_1
    return-void

    .line 2038
    :cond_2
    const-string v0, "US"

    goto :goto_0
.end method

.method public SaveGameToCloud(I[BI)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "array"    # [B
    .param p3, "numbytes"    # I

    .prologue
    .line 2507
    return-void
.end method

.method public ScreenSetWakeLock(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2781
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2783
    :goto_0
    return-void

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public SendStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;
    .param p4, "timedEvent"    # Z

    .prologue
    .line 2744
    return-void
.end method

.method public SendStatEvent(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "timedEvent"    # Z

    .prologue
    .line 2737
    return-void
.end method

.method public SendTimedStatEventEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 2740
    return-void
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 2875
    const/4 v0, 0x0

    return v0
.end method

.method public ServiceAppCommandInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # I

    .prologue
    .line 2883
    const/4 v0, 0x0

    return v0
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 2879
    const/4 v0, 0x0

    return v0
.end method

.method public SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1927
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1928
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1929
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1930
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 1931
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetConfigSetting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1932
    :cond_0
    return-void
.end method

.method public SetLocale(I)V
    .locals 5
    .param p1, "newLang"    # I

    .prologue
    .line 2049
    packed-switch p1, :pswitch_data_0

    .line 2078
    const-string v0, "en"

    .line 2082
    .local v0, "lStr":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_0

    .line 2083
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetLocale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2084
    :cond_0
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2085
    .local v1, "lang":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_1

    .line 2086
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetLocale oldlang "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2089
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2090
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2092
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2, v0}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    return-void

    .line 2051
    .end local v0    # "lStr":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_0
    const-string v0, "en"

    .line 2052
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2054
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "fr"

    .line 2055
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2057
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "de"

    .line 2058
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2060
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "it"

    .line 2061
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2063
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "es"

    .line 2064
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2066
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "ja"

    .line 2067
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2069
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "ko"

    .line 2070
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2072
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "sv"

    .line 2073
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2075
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "no"

    .line 2076
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public SetLocale(Ljava/lang/String;)V
    .locals 5
    .param p1, "lStr"    # Ljava/lang/String;

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetRealLocale()V

    .line 2013
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_0

    .line 2014
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetLocale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2015
    :cond_0
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2016
    .local v1, "lang":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_1

    .line 2017
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetLocale oldlang "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2020
    :cond_1
    const-string v0, ""

    .line 2021
    .local v0, "countyStr":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2022
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "GB"

    .line 2025
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2026
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2028
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    return-void

    .line 2023
    :cond_3
    const-string v0, "US"

    goto :goto_0
.end method

.method SetPaint(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "size"    # I

    .prologue
    .line 2536
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    .line 2538
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2539
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2540
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2542
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mAscent:I

    .line 2543
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->tPaint:Landroid/graphics/Paint;

    .line 2544
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->tPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2545
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    .line 2546
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2547
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2548
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    .line 2549
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2550
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2551
    return-void
.end method

.method SetVidView()V
    .locals 1

    .prologue
    .line 1455
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$13;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$13;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1463
    return-void
.end method

.method SetVideoAspect(Landroid/media/MediaPlayer;)V
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1332
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-eqz v8, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1334
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    .line 1335
    .local v5, "surfaceView_Width":I
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    .line 1337
    .local v4, "surfaceView_Height":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    int-to-float v7, v8

    .line 1338
    .local v7, "video_Width":F
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    int-to-float v6, v8

    .line 1340
    .local v6, "video_Height":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-lez v8, :cond_1

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_2

    .line 1341
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videosize error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    .end local v4    # "surfaceView_Height":I
    .end local v5    # "surfaceView_Width":I
    .end local v6    # "video_Height":F
    .end local v7    # "video_Width":F
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1345
    .restart local v4    # "surfaceView_Height":I
    .restart local v5    # "surfaceView_Width":I
    .restart local v6    # "video_Height":F
    .restart local v7    # "video_Width":F
    :cond_2
    int-to-float v8, v5

    div-float v3, v8, v7

    .line 1346
    .local v3, "ratio_width":F
    int-to-float v8, v4

    div-float v2, v8, v6

    .line 1347
    .local v2, "ratio_height":F
    div-float v0, v7, v6

    .line 1350
    .local v0, "aspectratio":F
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v8, :cond_3

    .line 1351
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1354
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    if-eqz v8, :cond_4

    .line 1355
    iget v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1356
    iget v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1370
    :goto_2
    const/16 v8, 0x11

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1371
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v8, :cond_7

    .line 1372
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1376
    .end local v0    # "aspectratio":F
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "ratio_height":F
    .end local v3    # "ratio_width":F
    .end local v4    # "surfaceView_Height":I
    .end local v5    # "surfaceView_Width":I
    .end local v6    # "video_Height":F
    .end local v7    # "video_Width":F
    :catch_1
    move-exception v8

    goto :goto_0

    .line 1352
    .restart local v0    # "aspectratio":F
    .restart local v2    # "ratio_height":F
    .restart local v3    # "ratio_width":F
    .restart local v4    # "surfaceView_Height":I
    .restart local v5    # "surfaceView_Width":I
    .restart local v6    # "video_Height":F
    .restart local v7    # "video_Width":F
    :cond_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 1357
    :cond_4
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    if-eqz v8, :cond_6

    .line 1358
    cmpl-float v8, v3, v2

    if-lez v8, :cond_5

    .line 1359
    int-to-float v8, v4

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1360
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1362
    :cond_5
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1363
    int-to-float v8, v5

    div-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1366
    :cond_6
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1367
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1374
    :cond_7
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method ShowDownloadNetworkError()V
    .locals 3

    .prologue
    .line 461
    move-object v1, p0

    .line 462
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "No network connection. Cannot download game data."

    .line 463
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$2;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$2;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method ShowExitDialog()V
    .locals 4

    .prologue
    .line 1132
    move-object v1, p0

    .line 1133
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Press back again to exit"

    .line 1134
    .local v0, "fTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$11;

    invoke-direct {v3, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$11;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    return-void
.end method

.method ShowGPDownloadError()V
    .locals 3

    .prologue
    .line 435
    move-object v1, p0

    .line 436
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Unknown download error. Please reinstall from Google Play"

    .line 437
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$1;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$1;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method public ShowKeyboard(I)V
    .locals 6
    .param p1, "show"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2201
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v5, :cond_0

    .line 2218
    :goto_0
    return-void

    .line 2203
    :cond_0
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2204
    .local v1, "myImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_1

    .line 2205
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2206
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    goto :goto_0

    .line 2208
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 2209
    .local v2, "tbview":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2210
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2211
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2213
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {v1, v4, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2214
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    .line 2215
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "hideSystemUI"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->hideSystemUI()V

    goto :goto_0
.end method

.method ShowSDErrorDialog()V
    .locals 3

    .prologue
    .line 607
    move-object v1, p0

    .line 608
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Cannot find storage. Is SDCard mounted?"

    .line 609
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$4;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$4;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public StopMovie()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1499
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1500
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1501
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 1502
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1503
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 1504
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MOVIE IS NOT PLAYING bIsPlayingMovie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1505
    :cond_0
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1509
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 1510
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1517
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1518
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1519
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 1520
    return-void

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public VibratePhone(I)V
    .locals 4
    .param p1, "numMilliseconds"    # I

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v0, :cond_0

    .line 1031
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratePhone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 1034
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_2

    .line 1038
    :goto_0
    return-void

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public VibratePhoneEffect(I)V
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v0, :cond_0

    .line 1050
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratePhoneEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 1053
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_2

    .line 1057
    :goto_0
    return-void

    .line 1056
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->vibrateEffects:[[J

    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public downloadFTPFile(Ljava/lang/String;IZ)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filesize"    # I
    .param p3, "check"    # Z

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method expansionFilesDelivered()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v1, v5, v4

    .line 626
    .local v1, "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    iget-boolean v2, v1, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    iget v7, v1, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileVersion:I

    invoke-static {p0, v2, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "fileName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->overrideExpansionName:Z

    if-nez v2, :cond_0

    .line 629
    iget-boolean v2, v1, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    if-eqz v2, :cond_2

    .line 630
    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 633
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download name "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v2, v1, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 636
    :cond_0
    iget-wide v8, v1, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileSize:J

    invoke-static {p0, v0, v8, v9, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 637
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expansionFilesDelivered not exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 641
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :goto_3
    return v2

    .line 632
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_1

    .line 633
    :cond_3
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_2

    .line 625
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 641
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_5
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    .line 1239
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->finish()V

    .line 1240
    return-void
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1177
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1178
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1179
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1180
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1181
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1182
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1190
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 1186
    :catch_0
    move-exception v2

    .line 1187
    .local v2, "ex":Ljava/net/SocketException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got SocketException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1190
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 426
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 427
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 429
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public isTV()Z
    .locals 3

    .prologue
    .line 410
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 411
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 412
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWiFiAvailable()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 421
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected localHasGameData()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 492
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "localHasGameData"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    :cond_0
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    if-eqz v5, :cond_1

    .line 495
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wardrumstudios/utils/WarMedia$3;

    invoke-direct {v6, p0}, Lcom/wardrumstudios/utils/WarMedia$3;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 585
    :goto_0
    return v4

    .line 547
    :cond_1
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V

    .line 585
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 551
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .local v1, "notifierIntent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 554
    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 560
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    const-class v5, Lcom/wardrumstudios/utils/WarDownloaderService;

    invoke-static {p0, v2, v5}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v3

    .line 562
    .local v3, "startResult":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localHasGameData startDownloadServiceIfRequired startResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    if-eqz v3, :cond_6

    .line 566
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v5, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "localHasGameData != NO_DOWNLOAD_REQUIRED"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    :cond_4
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 569
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->initializeDownloadUI()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    .end local v3    # "startResult":I
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 571
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "startResult":I
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowDownloadNetworkError()V

    goto :goto_0

    .line 575
    :cond_6
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v5

    if-nez v5, :cond_7

    .line 576
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowGPDownloadError()V

    goto :goto_0

    .line 579
    :cond_7
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 847
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onAttachedToWindow()V

    .line 850
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 851
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 866
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "registerReceiver"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wardrumstudios/utils/WarMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x0

    .line 1415
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCompletion completed moviePlayer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1419
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :goto_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1422
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1423
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1424
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1425
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 1426
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1429
    :cond_1
    return-void

    .line 1420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener - onConfigurationChanged orient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    :cond_0
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    .line 776
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->imeClosed()V

    .line 779
    :cond_1
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 780
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x40600000    # 3.5f

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v3, 0x1

    .line 301
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isNativeApp:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onCreate(Landroid/os/Bundle;)V

    .line 302
    :cond_0
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_1

    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "****WarMedia onCreate"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearSystemNotification()V

    .line 306
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetGameBaseDirectory()Ljava/lang/String;

    .line 309
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->GetGLExtensions:Z

    .line 311
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsPortrait()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 312
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v2, v5, :cond_b

    .line 313
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    .line 324
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    .line 325
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display Metrics Info:\n\tdensity:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tdensityDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tscaledDensity:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\twidthDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\theightDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\twidthPixels:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\theightPixels:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tscreenlayout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 333
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    .line 335
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayHeight:I

    .line 336
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayWidth:I

    .line 337
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayHeight:I

    .line 338
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsPortrait()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v5, :cond_2

    .line 339
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayWidth:I

    .line 340
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->maxDisplayHeight:I

    .line 341
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayWidth:I

    .line 342
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDisplayHeight:I

    .line 346
    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ADT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsAndroidTV:Z

    .line 348
    :cond_3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SHIELD Android TV"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->checkForMaxDisplaySize:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetMaxDisplaySize()V

    .line 350
    :cond_4
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->isShieldTV:Z

    .line 353
    :cond_5
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nvidia/devtech/NvUtil;->setActivity(Landroid/app/Activity;)V

    .line 354
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v2

    const-string v5, "STORAGE_ROOT"

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v2

    const-string v5, "STORAGE_ROOT_BASE"

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_e

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    .line 358
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hastouchscreen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " touchscreen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    iput-object p0, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    .line 363
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetRealLocale()V

    .line 365
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 366
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x1000001a

    const-string v5, "WarEngine"

    invoke-virtual {v0, v2, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 367
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsPhone()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    .line 374
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v4

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 375
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    if-eqz v2, :cond_f

    .line 376
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_6

    iput v9, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 377
    :cond_6
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 383
    :cond_7
    :goto_2
    invoke-virtual {p0, v8}, Lcom/wardrumstudios/utils/WarMedia;->setVolumeControlStream(I)V

    .line 384
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    .line 385
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioMax:I

    .line 386
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioVolume:I

    .line 388
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 389
    .local v1, "processors":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableProcessors "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cpu "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 392
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseSubtitles:Z

    if-eqz v2, :cond_8

    const v2, -0xff0100

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->SetPaint(II)V

    .line 395
    :cond_8
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->localIp:Ljava/lang/String;

    .line 397
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isNativeApp:Z

    if-nez v2, :cond_9

    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onCreate(Landroid/os/Bundle;)V

    .line 399
    :cond_9
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->CustomLoadFunction()Z

    move-result v2

    if-nez v2, :cond_a

    .line 400
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->localHasGameData()Z

    .line 403
    :cond_a
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->NetworkChange()V

    .line 405
    :try_start_0
    invoke-direct {p0, p0}, Lcom/wardrumstudios/utils/WarMedia;->initTouchSense(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_3
    return-void

    .line 315
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "processors":I
    :cond_b
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 317
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v2, v5, :cond_d

    .line 318
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 320
    :cond_d
    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_e
    move v2, v4

    .line 357
    goto/16 :goto_1

    .line 379
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_f
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_10

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 380
    :cond_10
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    goto/16 :goto_2

    .line 406
    .restart local v1    # "processors":I
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 1229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener - onDestroy isFinishing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1231
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1232
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onDestroy()V

    .line 1233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1234
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 872
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onDetachedFromWindow()V

    .line 873
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 874
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "unregisterReceiver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    const/16 v6, 0x8

    .line 2445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2446
    .local v0, "downloadSpeed":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2448
    .local v1, "timeRemaining":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mTimeRemaining:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2450
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    iput-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 2451
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    shr-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2452
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2453
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2456
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressFraction:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 2457
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v3

    .line 2456
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2459
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 9
    .param p1, "newState"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2264
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->setState(I)V

    .line 2265
    const/4 v5, 0x1

    .line 2266
    .local v5, "showDashboard":Z
    const/4 v4, 0x0

    .line 2269
    .local v4, "showCellMessage":Z
    packed-switch p1, :pswitch_data_0

    .line 2322
    :pswitch_0
    const/4 v3, 0x1

    .line 2323
    .local v3, "paused":Z
    const/4 v1, 0x1

    .line 2324
    .local v1, "indeterminate":Z
    const/4 v5, 0x1

    .line 2326
    :goto_0
    if-eqz v5, :cond_3

    move v2, v6

    .line 2327
    .local v2, "newDashboardVisibility":I
    :goto_1
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 2328
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2330
    :cond_0
    if-eqz v4, :cond_4

    move v0, v6

    .line 2331
    .local v0, "cellMessageVisibility":I
    :goto_2
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 2332
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    :cond_1
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2336
    invoke-direct {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->setButtonPausedState(Z)V

    .line 2337
    .end local v0    # "cellMessageVisibility":I
    .end local v1    # "indeterminate":Z
    .end local v2    # "newDashboardVisibility":I
    .end local v3    # "paused":Z
    :cond_2
    :goto_3
    return-void

    .line 2273
    :pswitch_1
    const/4 v3, 0x0

    .line 2274
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 2275
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2278
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_2
    const/4 v5, 0x1

    .line 2279
    const/4 v3, 0x0

    .line 2280
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 2281
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2283
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_3
    const/4 v3, 0x0

    .line 2284
    .restart local v3    # "paused":Z
    const/4 v5, 0x1

    .line 2285
    const/4 v1, 0x0

    .line 2286
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2292
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_4
    const/4 v3, 0x1

    .line 2293
    .restart local v3    # "paused":Z
    const/4 v5, 0x1

    .line 2294
    const/4 v1, 0x0

    .line 2295
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2298
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_5
    const/4 v5, 0x0

    .line 2299
    const/4 v3, 0x1

    .line 2300
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2301
    .restart local v1    # "indeterminate":Z
    const/4 v4, 0x1

    .line 2302
    goto :goto_0

    .line 2305
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_6
    const/4 v3, 0x1

    .line 2306
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2307
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2310
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_7
    const/4 v3, 0x1

    .line 2311
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2312
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2314
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2315
    const/4 v5, 0x0

    .line 2316
    const/4 v3, 0x0

    .line 2317
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2318
    .restart local v1    # "indeterminate":Z
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->validateXAPKZipFiles()V

    goto :goto_3

    :cond_3
    move v2, v7

    .line 2326
    goto :goto_1

    .restart local v2    # "newDashboardVisibility":I
    :cond_4
    move v0, v7

    .line 2330
    goto :goto_2

    .line 2269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1433
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1434
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1109
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    if-eqz v1, :cond_1

    .line 1111
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1115
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 1116
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShowExitDialog KeyDown"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowExitDialog()V

    .line 1128
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarGamepad;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->lowMemoryEvent()V

    .line 785
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1061
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 1062
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Listener -  onPause"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1065
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/wardrumstudios/utils/WarMedia;->MAX_GAME_PADS:I

    if-ge v0, v1, :cond_3

    .line 1066
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_2

    .line 1067
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->onPause()V

    .line 1065
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_3
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onPause()V

    .line 1072
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    .line 1074
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 1075
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 1076
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    .line 1077
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1381
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    if-eq v1, v5, :cond_1

    .line 1384
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "trying to start a requested to stop movie"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1386
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1388
    :goto_0
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1389
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1390
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1412
    :cond_0
    :goto_1
    return-void

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1394
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1395
    :cond_2
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    if-lez v1, :cond_3

    .line 1396
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1397
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1410
    :goto_2
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    goto :goto_1

    .line 1399
    :cond_3
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetVideoAspect(Landroid/media/MediaPlayer;)V

    .line 1401
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1402
    const/4 v1, 0x2

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared IllegalStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1405
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1406
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1407
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    goto :goto_2

    .line 1387
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2790
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onRequestPermissionsResult"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2791
    packed-switch p1, :pswitch_data_0

    .line 2805
    :goto_0
    return-void

    .line 2794
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 2795
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->waitForPermissions:Z

    .line 2796
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->localHasGameData()Z

    goto :goto_0

    .line 2799
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting App"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    goto :goto_0

    .line 2791
    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_0
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 1222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Listener - onRestart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1223
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onRestart()V

    .line 1224
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 883
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_0

    .line 884
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WarMedia**** onResume viewIsActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUserPresent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onResume()V

    .line 887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/wardrumstudios/utils/WarMedia;->MAX_GAME_PADS:I

    if-ge v0, v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->onResume()V

    .line 887
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isExternalStorageReadable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 893
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Resuming when Media is not mounted, waiting for sdcard mount"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_1

    .line 897
    :cond_3
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    if-eqz v1, :cond_5

    .line 898
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->ResumeEventDone:Z

    if-eqz v1, :cond_4

    .line 899
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    .line 900
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 903
    :cond_4
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 905
    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    .line 908
    :cond_5
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    .line 929
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->soundLog:Z

    if-eqz v0, :cond_0

    .line 1322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onSeekComplete"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_1

    .line 1324
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetVideoAspect(Landroid/media/MediaPlayer;)V

    .line 1325
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1326
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1327
    const/4 v0, 0x2

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1329
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 2259
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 2260
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 2261
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 1205
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onStart()V

    .line 1206
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Listener - onStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 1215
    :cond_1
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onStop()V

    .line 1217
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1082
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->StopMovie()V

    .line 1086
    :cond_0
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    if-eqz v1, :cond_1

    .line 1087
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    if-eqz v1, :cond_1

    .line 1088
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 1089
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 1093
    :cond_1
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1094
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v1, :cond_2

    .line 1095
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent exitDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1096
    :cond_2
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1097
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1098
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1102
    :goto_0
    return v0

    .line 1101
    :cond_4
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1102
    .local v0, "ret":Z
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->ResumeEventDone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-nez v0, :cond_1

    .line 756
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->pauseEvent()V

    .line 761
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    .line 764
    :cond_1
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onWindowFocusChanged(Z)V

    .line 766
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->hideSystemUI()V

    .line 767
    :cond_2
    return-void

    .line 758
    :cond_3
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    goto :goto_0
.end method

.method public native setTouchSenseFilepath(Ljava/lang/String;)V
.end method

.method validateXAPKZipFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2343
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateXAPKZipFiles IsInValidation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2344
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    if-eqz v1, :cond_0

    .line 2434
    :goto_0
    return-void

    .line 2347
    :cond_0
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    .line 2348
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$19;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$19;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    .line 2433
    .local v0, "validationTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;Ljava/lang/Boolean;>;"
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
