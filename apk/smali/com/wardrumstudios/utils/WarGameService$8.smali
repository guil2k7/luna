.class Lcom/wardrumstudios/utils/WarGameService$8;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->SaveConflictSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
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
    .line 1032
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$data:[B

    iput-object p4, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$description:Ljava/lang/String;

    iput-wide p5, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$playedMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1034
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Saving conflicted snapshot..."

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1036
    :try_start_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 1037
    .local v9, "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1084
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save snapshot, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1091
    .end local v9    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_0
    :goto_0
    return-void

    .line 1039
    .restart local v9    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "OpenSnapshotResult from conflict"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1040
    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$data:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    new-instance v8, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 1042
    .local v8, "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$description:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 1043
    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$playedMS:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$playedMS:J

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 1044
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v4

    .line 1045
    .local v4, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    .end local v4    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v8    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .end local v9    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :catch_0
    move-exception v7

    .line 1088
    .local v7, "isex":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Snapshot IllegalStateException 3"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    .end local v7    # "isex":Ljava/lang/IllegalStateException;
    .restart local v9    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Saving resolved conflict..."

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1051
    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$data:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    .line 1052
    new-instance v8, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 1053
    .restart local v8    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$description:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 1054
    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$playedMS:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->val$playedMS:J

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 1055
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v4

    .line 1056
    .restart local v4    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 1058
    .local v6, "conflictResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1069
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Error resolving conflict..."

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflictResult.getStatus().getStatusCode() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    :sswitch_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Conflict resolved..."

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1063
    :sswitch_3
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Conflict taken care of"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :sswitch_4
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$8;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Resolving the conflict has lead to a new conflict, will attempt again at next save"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1037
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch

    .line 1058
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0xfa4 -> :sswitch_4
        0xfa6 -> :sswitch_3
    .end sparse-switch
.end method
