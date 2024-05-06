.class public Lcom/wardrumstudios/utils/WarGameService;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;
.implements Lcom/wardrumstudios/utils/WarActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;,
        Lcom/wardrumstudios/utils/WarGameService$LeaderboardQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
        ">;",
        "Lcom/wardrumstudios/utils/WarActivityLifecycleListener;"
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_DRIVE:I = 0x8

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field public static final RC_SHOWSNAPSHOTLIST:I = 0x2081

.field private static final TAG:Ljava/lang/String; = "WarGameService"


# instance fields
.field protected creatingGamehelper:Z

.field private isPaused:Z

.field private mActivity:Lcom/wardrumstudios/utils/WarBase;

.field protected mDebugLog:Z

.field protected mDebugTag:Ljava/lang/String;

.field protected mHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field protected mRequestedClients:I

.field queries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarGameService$LeaderboardQuery;",
            ">;"
        }
    .end annotation
.end field

.field savedScreenshot:[B


# direct methods
.method protected constructor <init>(Lcom/wardrumstudios/utils/WarBase;)V
    .locals 8
    .param p1, "activity"    # Lcom/wardrumstudios/utils/WarBase;

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 68
    iput v5, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 74
    const-string v4, "WarGameService"

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 75
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 76
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    .line 638
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 80
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    .line 82
    move-object v3, p0

    .line 85
    .local v3, "myWarGameService":Lcom/wardrumstudios/utils/WarGameService;
    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$1;

    invoke-direct {v2, p0, v3}, Lcom/wardrumstudios/utils/WarGameService$1;-><init>(Lcom/wardrumstudios/utils/WarGameService;Lcom/wardrumstudios/utils/WarGameService;)V

    .line 103
    .local v2, "myRun":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v4, v2}, Lcom/wardrumstudios/utils/WarBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "hangCount":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 106
    :goto_0
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    if-eqz v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "hangCount":I
    .local v1, "hangCount":I
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Lcom/wardrumstudios/utils/WarBase;->mSleep(J)V

    move v0, v1

    .end local v1    # "hangCount":I
    .restart local v0    # "hangCount":I
    goto :goto_0

    .end local v0    # "hangCount":I
    .restart local v1    # "hangCount":I
    :cond_0
    move v0, v1

    .line 111
    .end local v1    # "hangCount":I
    .restart local v0    # "hangCount":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    return-object v0
.end method


# virtual methods
.method public CancelLeaderboardQuery(I)V
    .locals 1
    .param p1, "queryId"    # I

    .prologue
    .line 454
    const-string v0, "CancelLeaderboardQuery"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public DeleteAllSnapshots()V
    .locals 1

    .prologue
    .line 757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public DeleteSnapshot(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v1, "Deleting snapshot..."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 712
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$7;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$7;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "isex":Ljava/lang/IllegalStateException;
    const-string v1, "Snapshot "

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetConnectionStatus()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public GetPlayerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    const-string v0, "default"

    .line 356
    .local v0, "playerName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 358
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPlayerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public IncrementAchievement(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v0, "Trying to unlock an achievement but we\'re not signed in."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public LoadFromCloud()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/appstate/AppStateManager;->load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public LoadSnapshotCount()V
    .locals 3

    .prologue
    .line 552
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$5;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$5;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 571
    return-void
.end method

.method public RefreshData(Z)V
    .locals 0
    .param p1, "forceReload"    # Z

    .prologue
    .line 350
    return-void
.end method

.method public ResolveState(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "resolvedVersion"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager;->resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 524
    return-void
.end method

.method public SaveScreenshot([B)V
    .locals 0
    .param p1, "screenshot"    # [B

    .prologue
    .line 640
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 641
    return-void
.end method

.method public SaveSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "playedMS"    # J

    .prologue
    .line 644
    const-string v3, "Saving snapshot..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    if-eqz v3, :cond_2

    .line 647
    :try_start_0
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 648
    .local v15, "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save snapshot, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 706
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_0
    :goto_0
    return-void

    .line 650
    .restart local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_0
    const-string v3, "OpenSnapshotResult"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 651
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->writeBytes([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    new-instance v14, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v14}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 653
    .local v14, "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 654
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 655
    :cond_1
    invoke-virtual {v14}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v13

    .line 656
    .local v13, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    invoke-interface {v3, v4, v5, v13}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    .end local v13    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v14    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :catch_0
    move-exception v11

    .line 683
    .local v11, "isex":Ljava/lang/IllegalStateException;
    const-string v3, "Snapshot IllegalStateException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    .end local v11    # "isex":Ljava/lang/IllegalStateException;
    .restart local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_1
    :try_start_1
    const-string v3, "Conflict while saving, resolving..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 662
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v12

    .line 663
    .local v12, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    .line 665
    .local v2, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 666
    .local v10, "conflictResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v10}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 686
    .end local v2    # "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    .end local v10    # "conflictResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    .end local v12    # "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_2
    new-instance v16, Ljava/lang/Thread;

    new-instance v3, Lcom/wardrumstudios/utils/WarGameService$6;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/wardrumstudios/utils/WarGameService$6;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[BJ)V

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 703
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public SaveToCloud([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 504
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/appstate/AppStateManager;->updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowAchievementList()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "The GamesClient is not connected so the achievement list cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboard(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v1, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "gameLeaderboardId":Ljava/lang/String;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    .end local v0    # "gameLeaderboardId":Ljava/lang/String;
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v1, "The GamesClient is not connected so the requested leaderboard cannot be shown."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboards()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v0, "The GamesClient is not connected so the leaderboards cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSignInUI()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    .line 329
    :cond_0
    return-void
.end method

.method public ShowSnapshotList()V
    .locals 7

    .prologue
    .line 547
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string v2, "Saved Snapshots"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2710

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->getSelectSnapshotIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2081

    invoke-virtual {v6, v0, v1}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    return-void
.end method

.method public SignOut()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V

    .line 337
    return-void
.end method

.method public SubmitLeaderboardQuery(Ljava/lang/String;IIIZZ)V
    .locals 8
    .param p1, "leaderboardName"    # Ljava/lang/String;
    .param p2, "numResuts"    # I
    .param p3, "startIndex"    # I
    .param p4, "queryId"    # I
    .param p5, "showFriends"    # Z
    .param p6, "sortAscending"    # Z

    .prologue
    const/4 v6, 0x1

    .line 439
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "gameLeaderboardId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubmitLeaderboardQuery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 443
    if-eqz p5, :cond_0

    move v4, v6

    .line 444
    .local v4, "friendCollection":I
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubmitLeaderboardQuery "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " friendCollection "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v3, 0x2

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    .line 446
    .local v7, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    invoke-virtual {p0, p4, v7}, Lcom/wardrumstudios/utils/WarGameService;->processPendingResult(ILcom/google/android/gms/common/api/PendingResult;)V

    .line 451
    .end local v2    # "gameLeaderboardId":Ljava/lang/String;
    .end local v4    # "friendCollection":I
    .end local v7    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    :goto_1
    return-void

    .line 443
    .restart local v2    # "gameLeaderboardId":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 448
    .end local v2    # "gameLeaderboardId":Ljava/lang/String;
    :cond_1
    const-string v0, "The GamesClient is not connected so the requested leaderboard cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public SubmitScore(Ljava/lang/String;J)V
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 422
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v1, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "gameLeaderboardId":Ljava/lang/String;
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 429
    .end local v0    # "gameLeaderboardId":Ljava/lang/String;
    :goto_0
    return-void

    .line 427
    :cond_0
    const-string v1, "The GamesClient is not connected so the new score cannot be submitted to the leaderboards cannot be shown."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking Achievement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done Unlocking Achievement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v0, "Trying to unlock an achievement while the achievements are not available."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WarGameService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 298
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method protected extractScores(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)Ljava/util/List;
    .locals 4
    .param p1, "loadScoresResult"    # Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v0

    .line 477
    .local v0, "buffer":Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v2, "leaderboardScores":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 480
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-object v2
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    invoke-direct {v0, v1, v2}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 116
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCenteredScores(Ljava/lang/String;II)V
    .locals 8
    .param p1, "leaderboardID"    # Ljava/lang/String;
    .param p2, "timeSpan"    # I
    .param p3, "collection"    # I

    .prologue
    .line 458
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    .line 459
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/16 v5, 0x19

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    .line 462
    .local v7, "pendingScores":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    return-void
.end method

.method protected getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public native notifyAchievementsLoaded([Ljava/lang/String;[Z[I[I)V
.end method

.method public native notifyLeaderboardScoreQuery(I[F[Ljava/lang/String;)V
.end method

.method public notifyScoresLoaded(ILjava/util/List;)V
    .locals 7
    .param p1, "queryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, "scoreList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyScoresLoaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [F

    .line 488
    .local v3, "scores":[F
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 489
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 490
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v4

    long-to-float v4, v4

    aput v4, v3, v0

    .line 491
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 492
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "scoreStr":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyScoresLoaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scorestr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    .end local v2    # "scoreStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifyLeaderboardScoreQuery(I[F[Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public native notifySignInChange(Z)V
.end method

.method public native notifySignInFailed()V
.end method

.method public native notifySnapshotCountLoaded(I)V
.end method

.method public native notifySnapshotLoading()V
.end method

.method public native notifySnapshotSelected([B)V
.end method

.method public native notifyStateConflict(ILjava/lang/String;[B[B)V
.end method

.method public native notifyStateLoaded(II[B)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 136
    const/16 v1, 0x2081

    if-ne p1, v1, :cond_0

    .line 137
    packed-switch p2, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotLoading()V

    .line 140
    const-string v1, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 141
    .local v0, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$2;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$2;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 197
    .end local v0    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    .line 228
    return-void
.end method

.method public onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "buffer"    # Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    .prologue
    .line 294
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause OpenSnapshotResult mActivity.paused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarBase;->paused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onPause()V

    .line 219
    return-void
.end method

.method public onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    .prologue
    .line 528
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;

    move-result-object v0

    .line 529
    .local v0, "conflictResult":Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;

    move-result-object v1

    .line 530
    .local v1, "loadedResult":Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    if-eqz v1, :cond_3

    .line 531
    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    .line 532
    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStateKey()I

    move-result v3

    .line 533
    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getLocalData()[B

    move-result-object v4

    .line 531
    invoke-virtual {p0, v2, v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateLoaded(II[B)V

    .line 540
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->release()V

    .line 541
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->release()V

    .line 542
    :cond_2
    return-void

    .line 534
    :cond_3
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getStateKey()I

    move-result v2

    .line 536
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getResolvedVersion()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getLocalData()[B

    move-result-object v4

    .line 538
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getServerData()[B

    move-result-object v5

    .line 535
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateConflict(ILjava/lang/String;[B[B)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 232
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInFailed()V

    .line 291
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$3;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$3;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInChange(Z)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 213
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    .line 224
    return-void
.end method

.method protected processPendingResult(ILcom/google/android/gms/common/api/PendingResult;)V
    .locals 2
    .param p1, "queryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "pendingScores":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    move v0, p1

    .line 466
    .local v0, "qQueryId":I
    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$4;

    invoke-direct {v1, p0, v0}, Lcom/wardrumstudios/utils/WarGameService$4;-><init>(Lcom/wardrumstudios/utils/WarGameService;I)V

    invoke-interface {p2, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 473
    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0
    .param p1, "requestedClients"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 132
    return-void
.end method
