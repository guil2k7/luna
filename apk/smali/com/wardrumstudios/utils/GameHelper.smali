.class public Lcom/wardrumstudios/utils/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;,
        Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_DRIVE:I = 0x8

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x0

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field public mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientsToUse"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSetupDone:Z

    .line 88
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 91
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mExpectingResolution:Z

    .line 95
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInCancelled:Z

    .line 102
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 105
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 115
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 118
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 119
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 122
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 134
    iput v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    .line 139
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 147
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mUserInitiatedSignIn:Z

    .line 150
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 153
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .line 156
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mShowErrorDialogs:Z

    .line 159
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mDebugLog:Z

    .line 161
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    .line 188
    iput v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 797
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 798
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 201
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 202
    iput p2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    .line 203
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 204
    invoke-static {}, Lcom/google/android/gms/plus/Plus$PlusOptions;->builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->build()Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 205
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 239
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 242
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isAndroidConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 351
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 352
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 354
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 353
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1032
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1033
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1038
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1039
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 991
    if-nez p0, :cond_0

    .line 992
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_0
    return-void

    .line 995
    :cond_0
    const/4 v0, 0x0

    .line 997
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 1014
    const/16 v1, 0x232a

    :try_start_0
    invoke-static {p2, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1016
    :goto_1
    if-nez v0, :cond_1

    .line 1018
    const-string v1, "GameHelper"

    const-string v2, "No standard error dialog available. Making fallback dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1021
    invoke-static {p0, v2}, Lcom/wardrumstudios/utils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1024
    invoke-static {p2}, Lcom/wardrumstudios/utils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1028
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 999
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1001
    goto :goto_2

    .line 1003
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1005
    goto :goto_2

    .line 1007
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1009
    goto :goto_2

    .line 1015
    :catch_0
    move-exception v1

    goto :goto_1

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 673
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->resetSignInCancellations()V

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInCancelled:Z

    .line 676
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 678
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    .line 714
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 685
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 700
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mUserInitiatedSignIn:Z

    .line 702
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 705
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 706
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 707
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 710
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 711
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 712
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->connect(Z)V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 501
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 509
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 505
    return-void
.end method

.method connect()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->connect(Z)V

    .line 718
    return-void
.end method

.method connect(Z)V
    .locals 4
    .param p1, "blocking"    # Z

    .prologue
    const/4 v1, 0x0

    .line 721
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 727
    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 728
    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 729
    if-eqz p1, :cond_1

    .line 730
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 272
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 273
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 275
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 276
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 282
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 283
    sget-object v2, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 284
    sget-object v2, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 287
    :cond_1
    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 288
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 289
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 292
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 293
    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 294
    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 297
    :cond_3
    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 304
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 305
    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1061
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 935
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v0, "GameHelper"

    const-string v1, "disconnect() called when client was already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mDebugLog:Z

    .line 549
    if-eqz p1, :cond_0

    .line 550
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/GameHelper;->enableDebugLog(Z)V

    .line 559
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mHandler:Landroid/os/Handler;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 803
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 805
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const-string v0, "GameHelper"

    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 945
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 946
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->disconnect()V

    .line 947
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .line 949
    iget v0, p1, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wardrumstudios/utils/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->showFailureDialog()V

    .line 955
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 956
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    .line 957
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 5

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 813
    .local v0, "cancellations":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 814
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 815
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    invoke-direct {p0}, Lcom/wardrumstudios/utils/GameHelper;->isAndroidConnected()Z

    move-result v0

    .line 359
    .local v0, "androidConnected":Z
    iget-object v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 361
    .local v1, "clientConnected":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 362
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->disconnect()V

    .line 365
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v2

    .end local v1    # "clientConnected":Z
    :cond_1
    move v1, v3

    .line 359
    goto :goto_0

    .restart local v1    # "clientConnected":Z
    :cond_2
    move v2, v3

    .line 365
    goto :goto_1
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1070
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1066
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! GameHelper WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1046
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1053
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1054
    const/4 v0, 0x0

    .line 1056
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/wardrumstudios/utils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 658
    if-eqz p1, :cond_3

    .line 659
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 664
    :cond_0
    :goto_1
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x2329

    const/4 v4, 0x0

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    .line 599
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 600
    invoke-static {p2}, Lcom/wardrumstudios/utils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 601
    if-eq p1, v5, :cond_1

    .line 602
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 650
    :goto_1
    return-void

    .line 599
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 607
    :cond_1
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mExpectingResolution:Z

    .line 609
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 610
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 618
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->connect()V

    goto :goto_1

    .line 620
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 621
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->connect()V

    goto :goto_1

    .line 623
    :cond_4
    if-nez p2, :cond_5

    .line 625
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInCancelled:Z

    .line 627
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 628
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mUserInitiatedSignIn:Z

    .line 629
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .line 630
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 631
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 634
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 635
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 636
    .local v0, "newCancellations":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: # of cancellations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 643
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 645
    invoke-static {p2}, Lcom/wardrumstudios/utils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 647
    new-instance v2, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->giveUp(Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 753
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/wardrumstudios/utils/GameHelper;->isAndroidConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    const-string v1, "onConnected: Android connectivity reports unconnected so failing now."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 758
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 759
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    .line 786
    :goto_0
    return-void

    .line 763
    :cond_0
    if-eqz p1, :cond_3

    .line 764
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 765
    const-string v1, "invitation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 766
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 768
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 769
    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invitation ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 774
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 775
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: connection hint has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 780
    :cond_2
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 781
    const-string v1, "turn_based_match"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 785
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_3
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->succeedSignIn()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 833
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 836
    const-string v2, "aborting onConnectionFailed becaue mActivity == null (onStop called)"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 888
    :goto_0
    return-void

    .line 840
    :cond_0
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 841
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 844
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 843
    invoke-static {v3}, Lcom/wardrumstudios/utils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - resolvable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 849
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 851
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_1

    .line 852
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x1

    .line 873
    :goto_1
    if-nez v1, :cond_4

    .line 875
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 876
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 877
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 878
    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    goto :goto_0

    .line 854
    :cond_1
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_2

    .line 855
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 856
    const/4 v1, 0x0

    goto :goto_1

    .line 857
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_3

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 863
    const/4 v1, 0x1

    goto :goto_1

    .line 865
    :cond_3
    const/4 v1, 0x0

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 882
    :cond_4
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->resolveConnectionResult()V

    goto/16 :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->disconnect()V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .line 965
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 966
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 967
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    .line 968
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 397
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart with activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 400
    const-string v2, "onStart"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 402
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    if-eqz v2, :cond_2

    .line 403
    const/4 v1, 0x0

    .line 405
    .local v1, "isConnected":Z
    :try_start_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "GameHelper"

    const-string v3, "GameHelper: client was already connected on onStart()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1    # "isConnected":Z
    :goto_1
    return-void

    .line 406
    .restart local v1    # "isConnected":Z
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0

    .line 413
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mExpectingResolution:Z

    if-eqz v2, :cond_1

    .line 414
    const-string v2, "GameHelper"

    const-string v3, "GameHelper: not connecting because we\'re expecting a resolution."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    :cond_1
    const-string v2, "Connecting client."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 417
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 418
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_1

    .line 421
    .end local v1    # "isConnected":Z
    :cond_2
    const-string v2, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 422
    const-string v2, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 426
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 437
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 444
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 449
    return-void

    .line 442
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->connect()V

    .line 748
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 824
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 825
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 826
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 897
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mExpectingResolution:Z

    if-eqz v2, :cond_0

    .line 898
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 925
    :goto_0
    return-void

    .line 902
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    const-string v2, "Result has resolution. Starting it."

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 910
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mExpectingResolution:Z

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivity null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x2329

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->connect()V

    goto :goto_0

    .line 911
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 922
    :cond_2
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 923
    new-instance v1, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->giveUp(Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1114
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 1115
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/wardrumstudios/utils/GameHelper;->doApiOptionsPreCheck()V

    .line 253
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 254
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 225
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/plus/Plus$PlusOptions;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/wardrumstudios/utils/GameHelper;->doApiOptionsPreCheck()V

    .line 262
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 263
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mShowErrorDialogs:Z

    .line 392
    return-void
.end method

.method public setup(Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    .prologue
    .line 318
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 319
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 320
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->logError(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper;->mListener:Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup: requested clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mSetupDone:Z

    .line 333
    return-void
.end method

.method public showFailureDialog()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/wardrumstudios/utils/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/GameHelper$1;-><init>(Lcom/wardrumstudios/utils/GameHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    :cond_0
    return-void
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    iget v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 578
    :cond_1
    iget v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 579
    const-string v0, "Signing out from GamesClient."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 584
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 585
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 586
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 587
    iget-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 789
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    .line 791
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnectOnStart:Z

    .line 792
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mUserInitiatedSignIn:Z

    .line 793
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/GameHelper;->mConnecting:Z

    .line 794
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/GameHelper;->notifyListener(Z)V

    .line 795
    return-void
.end method
