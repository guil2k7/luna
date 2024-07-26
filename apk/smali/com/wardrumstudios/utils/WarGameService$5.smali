.class Lcom/wardrumstudios/utils/WarGameService$5;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->LoadSnapshot()V
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
        "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 829
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$5;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;)V
    .locals 5
    .param p1, "loadResult"    # Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;

    .prologue
    .line 833
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;->getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$5$1;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$5$1;-><init>(Lcom/wardrumstudios/utils/WarGameService$5;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "isex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v2, "Snapshot IllegalStateException load"

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
