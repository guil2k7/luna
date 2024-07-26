.class public Lcom/wardrumstudios/utils/WarGameService;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;
.implements Lcom/wardrumstudios/utils/WarActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;,
        Lcom/wardrumstudios/utils/WarGameService$LeaderboardQuery;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_DRIVE:I = 0x8

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field static final MIN_PLAYERS:I = 0x2

.field static final RC_INVITATION_INBOX:I = 0x2711

.field static final RC_INVITE_PLAYERS:I = 0x2713

.field static final RC_SELECT_PLAYERS:I = 0x2710

.field public static final RC_SHOWSNAPSHOTLIST:I = 0x2081

.field static final RC_WAITING_ROOM:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "WarGameService"


# instance fields
.field protected creatingGamehelper:Z

.field inviteStartedGame:Z

.field isDoSnapshot:Z

.field private isPaused:Z

.field public isPlayingMultiplayer:Z

.field joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

.field protected lastSaveName:Ljava/lang/String;

.field private mActivity:Lcom/wardrumstudios/utils/WarBase;

.field protected mDebugLog:Z

.field protected mDebugPacketLog:Z

.field protected mDebugTag:Ljava/lang/String;

.field protected mHelper:Lcom/wardrumstudios/utils/GameHelper;

.field mMyId:Ljava/lang/String;

.field mParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field

.field mPlaying:Z

.field protected mRequestedClients:I

.field mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

.field mRoomId:Ljava/lang/String;

.field playerBitmap:Landroid/graphics/Bitmap;

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

.field reconnectedState:I

.field savedScreenshot:[B

.field startGameOnSignIn:Z


# direct methods
.method protected constructor <init>(Lcom/wardrumstudios/utils/WarBase;)V
    .locals 8
    .param p1, "activity"    # Lcom/wardrumstudios/utils/WarBase;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 65
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarGameService;->isDoSnapshot:Z

    .line 66
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->inviteStartedGame:Z

    .line 92
    iput v7, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 98
    const-string v4, "WarGameService"

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 99
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 100
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugPacketLog:Z

    .line 101
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    .line 103
    const-string v4, "AUProfile.dat"

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->lastSaveName:Ljava/lang/String;

    .line 106
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 107
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 108
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    .line 109
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mParticipants:Ljava/util/ArrayList;

    .line 110
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mMyId:Ljava/lang/String;

    .line 111
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    .line 113
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->isPlayingMultiplayer:Z

    .line 613
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->playerBitmap:Landroid/graphics/Bitmap;

    .line 973
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 1151
    iput v5, p0, Lcom/wardrumstudios/utils/WarGameService;->reconnectedState:I

    .line 1215
    iput-boolean v5, p0, Lcom/wardrumstudios/utils/WarGameService;->mPlaying:Z

    .line 141
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    .line 143
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget-boolean v4, v4, Lcom/wardrumstudios/utils/WarBase;->GameServiceLog:Z

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 145
    move-object v3, p0

    .line 148
    .local v3, "myWarGameService":Lcom/wardrumstudios/utils/WarGameService;
    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$1;

    invoke-direct {v2, p0, v3}, Lcom/wardrumstudios/utils/WarGameService$1;-><init>(Lcom/wardrumstudios/utils/WarGameService;Lcom/wardrumstudios/utils/WarGameService;)V

    .line 177
    .local v2, "myRun":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v4, v2}, Lcom/wardrumstudios/utils/WarBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "hangCount":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 180
    :goto_0
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    if-eqz v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "hangCount":I
    .local v1, "hangCount":I
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 181
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

    .line 185
    .end local v1    # "hangCount":I
    .restart local v0    # "hangCount":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wardrumstudios/utils/WarGameService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    return v0
.end method

.method private makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2

    .prologue
    .line 1193
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 1195
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    .line 1196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing room mRoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getVariant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 121
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    .line 122
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mParticipants:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method public CancelLeaderboardQuery(I)V
    .locals 1
    .param p1, "queryId"    # I

    .prologue
    .line 730
    const-string v0, "CancelLeaderboardQuery"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public ContinueWithInvite()V
    .locals 5

    .prologue
    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joiningRoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1385
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService;->joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    const v4, 0x7fffffff

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    .line 1386
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1388
    return-void
.end method

.method public DeleteAllSnapshots()V
    .locals 1

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public DeleteSnapshot(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1097
    const-string v1, "Deleting snapshot..."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1100
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$9;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$9;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "isex":Ljava/lang/IllegalStateException;
    const-string v1, "Snapshot "

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GameServiceExists()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetConnectionStatus()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    goto :goto_0
.end method

.method public GetPlayerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 615
    const-string v1, "default"

    .line 617
    .local v1, "playerName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    sget-object v2, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPlayerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    return-object v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "GetPlayerName FAILED "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public IncrementAchievement(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    const-string v0, "Trying to unlock an achievement but we\'re not signed in."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public InvitePlayers()V
    .locals 5

    .prologue
    .line 1182
    const-string v1, "call InvitePlayers "

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1186
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;

    move-result-object v0

    .line 1187
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const/16 v2, 0x2713

    invoke-virtual {v1, v0, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1188
    return-void
.end method

.method public LeaveMultiplayerRoom(Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 1328
    :try_start_0
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1329
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public LeaveRoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1274
    const-string v0, "Leaving room."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveMultiplayerRoom(Ljava/lang/String;)V

    .line 1277
    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    .line 1278
    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 1280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPlayingMultiplayer:Z

    .line 1281
    return-void
.end method

.method public LoadFromCloud()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public LoadSnapshot()V
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$5;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$5;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 883
    :cond_0
    return-void
.end method

.method public LoadSnapshotCount()V
    .locals 3

    .prologue
    .line 887
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$6;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$6;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 906
    return-void
.end method

.method public RefreshData(Z)V
    .locals 0
    .param p1, "forceReload"    # Z

    .prologue
    .line 610
    return-void
.end method

.method public ResolveState(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "resolvedVersion"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 797
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->lastSaveName:Ljava/lang/String;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->lastSaveName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarGameService;->SaveConflictSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 799
    return-void
.end method

.method public SaveConflictSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "playedMS"    # J

    .prologue
    .line 1032
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/wardrumstudios/utils/WarGameService$8;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;[BLjava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1092
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1094
    return-void
.end method

.method public SaveScreenshot([B)V
    .locals 0
    .param p1, "screenshot"    # [B

    .prologue
    .line 975
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 976
    return-void
.end method

.method public SaveSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "playedMS"    # J

    .prologue
    .line 980
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$7;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/wardrumstudios/utils/WarGameService$7;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;[BLjava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1029
    return-void
.end method

.method public SaveToCloud([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 780
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendData(Ljava/lang/String;[BZ)V
    .locals 8
    .param p1, "peer"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .param p3, "reliable"    # Z

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 1454
    .local v6, "p":Lcom/google/android/gms/games/multiplayer/Participant;
    invoke-interface {v6}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1456
    if-eqz p3, :cond_1

    .line 1457
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-interface {v6}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1466
    .end local v6    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    :goto_0
    return-void

    .line 1459
    .restart local v6    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    :cond_1
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-interface {v6}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "tokenid":I
    goto :goto_0

    .line 1465
    .end local v6    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    .end local v7    # "tokenid":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendData Failed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendDataToAll([B)V
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendDataToAll bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1487
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessageToOthers(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I

    .line 1488
    return-void
.end method

.method public SetPopupView()V
    .locals 3

    .prologue
    .line 1243
    const-string v1, "SetPopupView"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1244
    move-object v0, p0

    .line 1246
    .local v0, "myWarGameService":Lcom/wardrumstudios/utils/WarGameService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$10;

    invoke-direct {v2, p0, v0}, Lcom/wardrumstudios/utils/WarGameService$10;-><init>(Lcom/wardrumstudios/utils/WarGameService;Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1267
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1271
    return-void
.end method

.method public ShowAchievementList()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    const-string v0, "The GamesClient is not connected so the achievement list cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboard(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v1, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "gameLeaderboardId":Ljava/lang/String;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 695
    .end local v0    # "gameLeaderboardId":Ljava/lang/String;
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v1, "The GamesClient is not connected so the requested leaderboard cannot be shown."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboards()V
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    const-string v0, "The GamesClient is not connected so the leaderboards cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSignInUI()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->beginUserInitiatedSignIn()V

    .line 585
    :cond_0
    return-void
.end method

.method public ShowSnapshotList()V
    .locals 7

    .prologue
    .line 822
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

    .line 823
    return-void
.end method

.method public SignOut()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->signOut()V

    .line 593
    return-void
.end method

.method public StartInvitedGame(Z)V
    .locals 4
    .param p1, "fromUI"    # Z

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartInvitedGame fromUI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 455
    if-eqz p1, :cond_1

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->inviteStartedGame:Z

    .line 457
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->ContinueWithInvite()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->inviteStartedGame:Z

    .line 461
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->hasInvitation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarGameService;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 463
    .local v0, "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvitationIdToAccept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto :goto_0
.end method

.method public StartQuickGame()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1155
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    if-nez v1, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->reconnectClient()V

    .line 1157
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    .line 1164
    :goto_0
    return-void

    .line 1159
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    .line 1160
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;

    move-result-object v0

    .line 1161
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
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

    .line 715
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
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

    .line 719
    if-eqz p5, :cond_0

    move v4, v6

    .line 720
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

    .line 721
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v3, 0x2

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    .line 722
    .local v7, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    invoke-virtual {p0, p4, v7}, Lcom/wardrumstudios/utils/WarGameService;->processPendingResult(ILcom/google/android/gms/common/api/PendingResult;)V

    .line 727
    .end local v2    # "gameLeaderboardId":Ljava/lang/String;
    .end local v4    # "friendCollection":I
    .end local v7    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    :goto_1
    return-void

    .line 719
    .restart local v2    # "gameLeaderboardId":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 724
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
    .line 698
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v1, p1}, Lcom/wardrumstudios/utils/WarBase;->GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "gameLeaderboardId":Ljava/lang/String;
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 705
    .end local v0    # "gameLeaderboardId":Ljava/lang/String;
    :goto_0
    return-void

    .line 703
    :cond_0
    const-string v1, "The GamesClient is not connected so the new score cannot be submitted to the leaderboards cannot be shown."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 654
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

    .line 655
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 658
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

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    const-string v0, "Trying to unlock an achievement while the achievements are not available."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UpdateMultiplayer()V
    .locals 0

    .prologue
    .line 1449
    return-void
.end method

.method public native WarExitGame()V
.end method

.method public native WarHasInvitation()V
.end method

.method public native WarLeaveSession()V
.end method

.method public native WarOnP2PConnected(Ljava/lang/String;)V
.end method

.method public native WarOnP2PDisconnected(Ljava/lang/String;)V
.end method

.method public native WarSetMyId(Ljava/lang/String;)V
.end method

.method public native WarStartGame(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 555
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

    .line 557
    :cond_0
    return-void
.end method

.method debugPacketLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugPacketLog:Z

    if-eqz v0, :cond_0

    .line 561
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

    .line 563
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 547
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/wardrumstudios/utils/GameHelper;->enableDebugLog(Z)V

    .line 551
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
    .line 752
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v0

    .line 753
    .local v0, "buffer":Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v2, "leaderboardScores":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 756
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    :cond_0
    return-object v2
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/wardrumstudios/utils/GameHelper;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/wardrumstudios/utils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    invoke-direct {v0, v1, v2}, Lcom/wardrumstudios/utils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    .line 190
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/GameHelper;->enableDebugLog(Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCenteredScores(Ljava/lang/String;II)V
    .locals 8
    .param p1, "leaderboardID"    # Ljava/lang/String;
    .param p2, "timeSpan"    # I
    .param p3, "collection"    # I

    .prologue
    .line 734
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    .line 735
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/16 v5, 0x19

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    .line 738
    .local v7, "pendingScores":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    return-void
.end method

.method protected getSignInError()Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->getSignInError()Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public native notifyAchievementsLoaded([Ljava/lang/String;[Z[I[I)V
.end method

.method public native notifyConflict([B[B)V
.end method

.method public native notifyDisconnect()V
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
    .line 762
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

    .line 763
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [F

    .line 764
    .local v3, "scores":[F
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 765
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 766
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v4

    long-to-float v4, v4

    aput v4, v3, v0

    .line 767
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 768
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v2

    .line 769
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

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    .end local v2    # "scoreStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifyLeaderboardScoreQuery(I[F[Ljava/lang/String;)V

    .line 774
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
    .locals 18
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 220
    const/16 v15, 0x2081

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 221
    packed-switch p2, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotLoading()V

    .line 224
    const-string v15, "com.google.android.gms.games.SNAPSHOT_METADATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 225
    .local v11, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    sget-object v15, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v15

    new-instance v16, Lcom/wardrumstudios/utils/WarGameService$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wardrumstudios/utils/WarGameService$2;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 288
    .end local v11    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_1
    const/16 v15, 0x2711

    move/from16 v0, p1

    if-ne v0, v15, :cond_2

    .line 289
    const/4 v15, -0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .local v6, "extras":Landroid/os/Bundle;
    const-string v15, "invitation"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 298
    .local v7, "invitation":Lcom/google/android/gms/games/multiplayer/Invitation;
    invoke-direct/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v15

    invoke-interface {v7}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v13

    .line 299
    .local v13, "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    sget-object v15, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v13}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto :goto_0

    .line 300
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "invitation":Lcom/google/android/gms/games/multiplayer/Invitation;
    .end local v13    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    :cond_2
    const/16 v15, 0x2713

    move/from16 v0, p1

    if-ne v0, v15, :cond_5

    .line 301
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_4

    .line 302
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/wardrumstudios/utils/WarGameService;->isPlayingMultiplayer:Z

    if-eqz v15, :cond_3

    .line 303
    const-string v15, "RC_INVITE_PLAYERS back to playing game"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    const-string v15, "RC_INVITE_PLAYERS not implemented"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto/16 :goto_0

    .line 312
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v15}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v9

    .line 313
    .local v9, "matchCriteria":Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v14

    .line 314
    .local v14, "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    invoke-virtual {v14, v9}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 315
    invoke-virtual {v14}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v13

    .line 318
    .restart local v13    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    :try_start_0
    sget-object v15, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v13}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v5

    .line 320
    .local v5, "ex":Ljava/lang/Exception;
    const-string v15, "Exception Games.RealTimeMultiplayer.join"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 321
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRoom "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v9    # "matchCriteria":Landroid/os/Bundle;
    .end local v13    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    .end local v14    # "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    :cond_5
    const/16 v15, 0x2712

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    .line 350
    const/4 v15, -0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_6

    .line 352
    const-string v15, "WarGameService"

    const-string v16, "Starting game (waiting room returned OK)."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->startGame(Z)V

    goto/16 :goto_0

    .line 354
    :cond_6
    const/16 v15, 0x2715

    move/from16 v0, p2

    if-ne v0, v15, :cond_7

    .line 356
    const-string v15, "RESULT_LEFT_ROOM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto/16 :goto_0

    .line 359
    :cond_7
    if-nez p2, :cond_0

    .line 363
    const-string v15, "RESULT_LEFT_ROOM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto/16 :goto_0

    .line 367
    :cond_8
    const/16 v15, 0x2710

    move/from16 v0, p1

    if-ne v0, v15, :cond_c

    .line 368
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    .line 370
    const-string v15, "RC_SELECT_PLAYERS canceled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    goto/16 :goto_0

    .line 376
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 377
    .restart local v6    # "extras":Landroid/os/Bundle;
    const-string v15, "players"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 380
    .local v8, "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 381
    .local v4, "autoMatchCriteria":Landroid/os/Bundle;
    const-string v15, "min_automatch_players"

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 382
    .local v12, "minAutoMatchPlayers":I
    const-string v15, "max_automatch_players"

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 384
    .local v10, "maxAutoMatchPlayers":I
    if-lez v12, :cond_b

    .line 385
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v12, v10, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v4

    .line 391
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v14

    .line 392
    .restart local v14    # "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    invoke-virtual {v14, v8}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 393
    if-eqz v4, :cond_a

    .line 394
    invoke-virtual {v14, v4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 396
    :cond_a
    invoke-virtual {v14}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v13

    .line 397
    .restart local v13    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    sget-object v15, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v13}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto/16 :goto_0

    .line 387
    .end local v13    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    .end local v14    # "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 398
    .end local v4    # "autoMatchCriteria":Landroid/os/Bundle;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "maxAutoMatchPlayers":I
    .end local v12    # "minAutoMatchPlayers":I
    :cond_c
    const/16 v15, 0x2712

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    .line 399
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_0

    .line 402
    if-nez p2, :cond_d

    .line 403
    const-string v15, "RC_WAITING_ROOM RESULT_CANCELED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto/16 :goto_0

    .line 407
    :cond_d
    const/16 v15, 0x2715

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 408
    const-string v15, "RC_WAITING_ROOM RESULT_LEFT_ROOM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto/16 :goto_0

    .line 413
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/wardrumstudios/utils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1522
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_0

    .line 1525
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1526
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mMyId:Ljava/lang/String;

    .line 1527
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mMyId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->WarSetMyId(Ljava/lang/String;)V

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedToRoom Room "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->onStop()V

    .line 444
    return-void
.end method

.method public onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1438
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnectedFromRoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1441
    return-void
.end method

.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 3
    .param p1, "invitation"    # Lcom/google/android/gms/games/multiplayer/Invitation;

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvitationReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/multiplayer/Invitations;->getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvitationRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1361
    if-eqz p1, :cond_0

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJoinedRoom Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1380
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto :goto_0

    .line 1371
    :cond_1
    const-string v0, "onJoinedRoom WarExitGame"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1372
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService;->joiningRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 1374
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->WarExitGame()V

    .line 1376
    const-string v0, "onJoinedRoom WarExitGame end"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p0, p2}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJoinedRoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "buffer"    # Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    .prologue
    .line 543
    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "roomId"    # Ljava/lang/String;

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLeftRoom roomId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->WarLeaveSession()V

    .line 1505
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "peer"    # Ljava/lang/String;

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onP2PConnected peer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "peer"    # Ljava/lang/String;

    .prologue
    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onP2PDisconnected peer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 432
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

    .line 433
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->onPause()V

    .line 434
    return-void
.end method

.method public onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1348
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeerDeclined "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1351
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mPlaying:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->shouldCancelGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1354
    :cond_0
    return-void
.end method

.method public onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1429
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeerInvitedToRoom Room "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1431
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_0

    .line 1432
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1434
    :cond_0
    return-void
.end method

.method public onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 4
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1286
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1287
    .local v0, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeerJoined Room "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " peers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->WarOnP2PConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    .end local v0    # "p":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerLeft "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " peers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1338
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->WarOnP2PDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 1341
    .end local v0    # "p":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mPlaying:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->shouldCancelGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1344
    :cond_1
    return-void
.end method

.method public onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeersConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1297
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mPlaying:Z

    if-eqz v0, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->shouldStartGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 4
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1306
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1307
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeersConnected not our room "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRoomId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1312
    .local v0, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeersDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1315
    .end local v0    # "p":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeersDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " peers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1316
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mPlaying:Z

    if-nez v1, :cond_0

    .line 1320
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->shouldCancelGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    goto :goto_0
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 2
    .param p1, "rtm"    # Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    .prologue
    .line 1492
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getSenderParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "peer":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v0

    .line 1497
    .local v0, "message":[B
    invoke-virtual {p0, v1, v0}, Lcom/wardrumstudios/utils/WarGameService;->receivedData(Ljava/lang/String;[B)V

    .line 1498
    return-void
.end method

.method public onRealTimeMessageSent(IILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "tokenId"    # I
    .param p3, "recipientParticipantId"    # Ljava/lang/String;

    .prologue
    .line 1472
    sparse-switch p1, :sswitch_data_0

    .line 1483
    :goto_0
    :sswitch_0
    return-void

    .line 1477
    :sswitch_1
    const-string v0, "STATUS_REAL_TIME_MESSAGE_SEND_FAILED"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :sswitch_2
    const-string v0, "STATUS_REAL_TIME_ROOM_NOT_JOINED"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1472
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b59 -> :sswitch_1
        0x1b5c -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 447
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 449
    return-void
.end method

.method public onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1420
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoomAutoMatching Room "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1422
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1425
    :cond_0
    return-void
.end method

.method public onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoomConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0, p2}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1204
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method public onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoomConnectingRoom Room "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1411
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v1, v1, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v0, v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LeaveRoom()V

    .line 1415
    :cond_0
    return-void
.end method

.method public onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1392
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v2, v2, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    if-eq v1, v2, :cond_0

    .line 1395
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1396
    if-eqz p1, :cond_1

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomCreated Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1405
    :goto_0
    return-void

    .line 1400
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1403
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-interface {v1, v2, p2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    .line 1404
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    .line 539
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInFailed()V

    .line 540
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->startGameOnSignIn:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->StartQuickGame()V

    .line 534
    :goto_0
    return-void

    .line 476
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/multiplayer/Invitations;->registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    .line 477
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->hasInvitation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    const-string v0, "Starting Invited Game"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->WarHasInvitation()V

    .line 484
    :cond_1
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$3;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$3;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 532
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->LoadSnapshot()V

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInChange(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 428
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPlayingMultiplayer:Z

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/GameHelper;->onStop()V

    .line 440
    :cond_0
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
    .line 741
    .local p2, "pendingScores":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;>;"
    move v0, p1

    .line 742
    .local v0, "qQueryId":I
    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$4;

    invoke-direct {v1, p0, v0}, Lcom/wardrumstudios/utils/WarGameService$4;-><init>(Lcom/wardrumstudios/utils/WarGameService;I)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 749
    return-void
.end method

.method public native receivedData(Ljava/lang/String;[B)V
.end method

.method protected setRequestedClients(I)V
    .locals 0
    .param p1, "requestedClients"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 206
    return-void
.end method

.method shouldCancelGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1232
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check shouldCancelGame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x0

    return v0
.end method

.method shouldStartGame(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Z
    .locals 4
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->AssignRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, "connectedPlayers":I
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 1225
    .local v1, "p":Lcom/google/android/gms/games/multiplayer/Participant;
    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    .end local v1    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    :cond_1
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected startGame(Z)V
    .locals 3
    .param p1, "isServer"    # Z

    .prologue
    .line 209
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoom:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, "peerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 211
    .local v1, "peers":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "peers":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 212
    .restart local v1    # "peers":[Ljava/lang/String;
    const-string v2, "startGame"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRoomId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/wardrumstudios/utils/WarGameService;->WarStartGame(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarGameService;->isPlayingMultiplayer:Z

    .line 215
    return-void
.end method
