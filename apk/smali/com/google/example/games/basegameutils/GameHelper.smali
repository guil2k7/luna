.class public Lcom/google/example/games/basegameutils/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;,
        Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;
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

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

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

.field mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

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

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    .line 87
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 101
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 104
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 114
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 117
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 118
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 121
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 133
    iput v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    .line 138
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 146
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 149
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 152
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 155
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    .line 158
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    .line 160
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    .line 187
    iput v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 790
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 791
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 201
    iput p2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    .line 202
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 203
    invoke-static {}, Lcom/google/android/gms/plus/Plus$PlusOptions;->builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->build()Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 204
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 238
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 241
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 242
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isAndroidConnected()Z
    .locals 4

    .prologue
    .line 348
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 349
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 350
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1021
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1022
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1021
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1027
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1027
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 980
    if-nez p0, :cond_0

    .line 981
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_0
    return-void

    .line 984
    :cond_0
    const/4 v0, 0x0

    .line 986
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 1002
    const/16 v1, 0x232a

    const/4 v2, 0x0

    invoke-static {p2, p0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_1

    .line 1006
    const-string v1, "GameHelper"

    const-string v2, "No standard error dialog available. Making fallback dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1010
    invoke-static {p0, v2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1017
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 988
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 990
    goto :goto_1

    .line 992
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 994
    goto :goto_1

    .line 996
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 998
    goto :goto_1

    .line 986
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
    .line 227
    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 228
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

    .line 231
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 662
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resetSignInCancellations()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 665
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 667
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 703
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 674
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 689
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 691
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 694
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 695
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 696
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 699
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 700
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 701
    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->connect(Z)V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 490
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 498
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 494
    return-void
.end method

.method connect()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->connect(Z)V

    .line 707
    return-void
.end method

.method connect(Z)V
    .locals 4
    .param p1, "blocking"    # Z

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 723
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 716
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 717
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 718
    if-eqz p1, :cond_1

    .line 719
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 271
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 272
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 274
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 281
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 282
    sget-object v2, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 283
    sget-object v2, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 286
    :cond_1
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 287
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 288
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 291
    :cond_2
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 292
    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 293
    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 296
    :cond_3
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 297
    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 298
    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 303
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 304
    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1050
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

    .line 1052
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 928
    :goto_0
    return-void

    .line 925
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
    .line 537
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    .line 538
    if-eqz p1, :cond_0

    .line 539
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 541
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
    .line 545
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 548
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

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
    .line 527
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 798
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "GameHelper"

    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 938
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 939
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    .line 940
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 942
    iget v0, p1, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog()V

    .line 948
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 949
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 950
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

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
    .line 485
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

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
    .line 374
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

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
    .line 481
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

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
    .line 805
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 806
    .local v0, "cancellations":I
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 807
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 808
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 810
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->isAndroidConnected()Z

    move-result v0

    .line 355
    .local v0, "androidConnected":Z
    iget-object v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 357
    .local v1, "clientConnected":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

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

    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 358
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    .line 361
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v2

    .end local v1    # "clientConnected":Z
    :cond_1
    move v1, v3

    .line 355
    goto :goto_0

    .restart local v1    # "clientConnected":Z
    :cond_2
    move v2, v3

    .line 361
    goto :goto_1
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1059
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

    .line 1060
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1055
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

    .line 1056
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1034
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1035
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1042
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1043
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 642
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

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 647
    if-eqz p1, :cond_3

    .line 648
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 653
    :cond_0
    :goto_1
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInFailed()V

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

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    .line 588
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 589
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 590
    if-eq p1, v5, :cond_1

    .line 591
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 639
    :goto_1
    return-void

    .line 588
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 596
    :cond_1
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 598
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 599
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 607
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    .line 609
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 610
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    .line 612
    :cond_4
    if-nez p2, :cond_5

    .line 614
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 615
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 616
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 617
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 618
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 619
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 620
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 623
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 624
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 625
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

    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 632
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 634
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 636
    new-instance v2, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 742
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->isAndroidConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    const-string v1, "onConnected: Android connectivity reports unconnected so failing now."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 747
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 748
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 779
    :goto_0
    return-void

    .line 752
    :cond_0
    if-eqz p1, :cond_3

    .line 753
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 754
    const-string v1, "invitation"

    .line 755
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 756
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 758
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 759
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invitation ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 764
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    .line 765
    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 766
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: connection hint has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 772
    :cond_2
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 773
    const-string v1, "turn_based_match"

    .line 774
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 778
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_3
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->succeedSignIn()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 826
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 829
    const-string v2, "aborting onConnectionFailed becaue mActivity == null (onStop called)"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void

    .line 833
    :cond_0
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 834
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 837
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 836
    invoke-static {v3}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - resolvable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 842
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 844
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_1

    .line 845
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x1

    .line 866
    :goto_1
    if-nez v1, :cond_4

    .line 868
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 869
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 870
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 871
    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    goto :goto_0

    .line 847
    :cond_1
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_2

    .line 848
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 849
    const/4 v1, 0x0

    goto :goto_1

    .line 850
    :cond_2
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_3

    .line 851
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

    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 856
    const/4 v1, 0x1

    goto :goto_1

    .line 858
    :cond_3
    const/4 v1, 0x0

    .line 859
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

    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 875
    :cond_4
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto/16 :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 958
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 959
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 960
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 961
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 393
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart with activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 396
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "GameHelper"

    const-string v1, "GameHelper: client was already connected on onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "GameHelper"

    const-string v1, "GameHelper: not connecting because we\'re expecting a resolution."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_1
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 407
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 410
    :cond_2
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 411
    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 433
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 438
    return-void

    .line 431
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    .line 737
    :goto_0
    return-void

    .line 734
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 816
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 817
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 818
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 890
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    if-eqz v2, :cond_0

    .line 891
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 918
    :goto_0
    return-void

    .line 895
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 897
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    const-string v2, "Result has resolution. Starting it."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 903
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivity null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x2329

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_0

    .line 904
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 915
    :cond_2
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 916
    new-instance v1, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1103
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 1104
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    .line 252
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 253
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 224
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/plus/Plus$PlusOptions;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    .line 261
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 262
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    .line 388
    return-void
.end method

.method public setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 318
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 319
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup: requested clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    .line 332
    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .prologue
    .line 964
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 966
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 968
    .local v0, "actResp":I
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 969
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 975
    .end local v0    # "actResp":I
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 971
    .restart local v0    # "actResp":I
    .restart local v1    # "errorCode":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 560
    :cond_0
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 567
    :cond_1
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 568
    const-string v0, "Signing out from GamesClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 573
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 574
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 575
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 576
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 784
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 785
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 786
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 787
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 788
    return-void
.end method
