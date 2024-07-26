.class Lcom/wardrumstudios/utils/WarGameService$7;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->SaveSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;

.field final synthetic val$data:[B

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$playedMS:J


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;[BLjava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$data:[B

    iput-object p4, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$description:Ljava/lang/String;

    iput-wide p5, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$playedMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 982
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v9, v9, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v9}, Lcom/wardrumstudios/utils/GameHelper;->isSignedIn()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v9}, Lcom/wardrumstudios/utils/WarGameService;->access$100(Lcom/wardrumstudios/utils/WarGameService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-boolean v9, v9, Lcom/wardrumstudios/utils/WarGameService;->isDoSnapshot:Z

    if-eqz v9, :cond_1

    .line 983
    :cond_0
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v10, "Saving snapshot..."

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 985
    :try_start_0
    sget-object v9, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v10}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v10

    iget-object v11, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 986
    .local v8, "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1018
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to save snapshot, status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1026
    .end local v8    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_1
    :goto_0
    return-void

    .line 988
    .restart local v8    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_0
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v10, "OpenSnapshotResult Save, no conflict"

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 989
    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v9

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$data:[B

    invoke-interface {v9, v10}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 990
    new-instance v7, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 991
    .local v7, "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$description:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 992
    iget-wide v10, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$playedMS:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    iget-wide v10, p0, Lcom/wardrumstudios/utils/WarGameService$7;->val$playedMS:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 993
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v6

    .line 994
    .local v6, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v9, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v10}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v10

    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v11

    invoke-interface {v9, v10, v11, v6}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1021
    .end local v6    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v7    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .end local v8    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :catch_0
    move-exception v4

    .line 1022
    .local v4, "isex":Ljava/lang/IllegalStateException;
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1023
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v10, "Snapshot IllegalStateException 1"

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    .end local v4    # "isex":Ljava/lang/IllegalStateException;
    .restart local v8    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_1
    :try_start_1
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v10, "Conflict while saving, resolving..."

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1000
    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    .line 1001
    .local v5, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1003
    .local v0, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v1

    .line 1004
    .local v1, "dataconflict":[B
    invoke-interface {v5}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v2

    .line 1005
    .local v2, "datalatest":[B
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v11, v11, Lcom/wardrumstudios/utils/WarGameService;->lastSaveName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v2, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateConflict(ILjava/lang/String;[B[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1006
    .end local v1    # "dataconflict":[B
    .end local v2    # "datalatest":[B
    :catch_1
    move-exception v3

    .line 1007
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGameService$7;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 986
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method
