.class Lcom/wardrumstudios/utils/WarGameService$5$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService$5;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarGameService$5;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wardrumstudios/utils/WarGameService$5;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 833
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$5$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 10
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    const/4 v9, 0x0

    .line 836
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load onResult GameStatusCodes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 837
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 869
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v6, v9}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 870
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open snapshot, status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 841
    :sswitch_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v1

    .line 842
    .local v1, "data":[B
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v6, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    .end local v1    # "data":[B
    :catch_0
    move-exception v4

    .line 844
    .local v4, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v6, v9}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 848
    .end local v4    # "e":Ljava/io/IOException;
    :sswitch_1
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v7, "Conflict while opening the selected snapshot, resolving..."

    invoke-virtual {v6, v7}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 849
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    .line 850
    .local v5, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    .line 853
    .local v0, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v2

    .line 854
    .local v2, "dataconflict":[B
    invoke-interface {v5}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v3

    .line 856
    .local v3, "datalatest":[B
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v8, v8, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v8, v8, Lcom/wardrumstudios/utils/WarGameService;->lastSaveName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v3, v2}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateConflict(ILjava/lang/String;[B[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 857
    .end local v2    # "dataconflict":[B
    .end local v3    # "datalatest":[B
    :catch_1
    move-exception v4

    .line 858
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v6, v9}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 837
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method
