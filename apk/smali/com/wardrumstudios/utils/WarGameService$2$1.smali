.class Lcom/wardrumstudios/utils/WarGameService$2$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService$2;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
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
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarGameService$2;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wardrumstudios/utils/WarGameService$2;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$2$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 262
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 263
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save snapshot, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 254
    :pswitch_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v0

    .line 255
    .local v0, "data":[B
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
