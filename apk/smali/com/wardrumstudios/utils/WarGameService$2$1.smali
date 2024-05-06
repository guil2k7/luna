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
    .line 161
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$2$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    .line 163
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 171
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save snapshot, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/Snapshot;->readFully()[B

    move-result-object v0

    .line 166
    .local v0, "data":[B
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$2$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$2;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
