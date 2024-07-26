.class public Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarGameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSnapshotResultHandler"
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
.field private data:[B

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private playedMS:J

.field private screenshot:[B

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[B[BJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGameService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "screenshot"    # [B
    .param p6, "playedMS"    # J

    .prologue
    .line 915
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->name:Ljava/lang/String;

    .line 917
    iput-object p3, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->description:Ljava/lang/String;

    .line 918
    iput-object p4, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->data:[B

    .line 919
    iput-object p5, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    .line 920
    iput-wide p6, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->playedMS:J

    .line 921
    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 908
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 14
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    .line 924
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 967
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save snapshot, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 926
    :sswitch_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->data:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v8, 0x0

    .line 928
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 932
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 934
    :cond_1
    new-instance v12, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v12}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 936
    .local v12, "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->description:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 937
    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->playedMS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->playedMS:J

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 938
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v12, v8}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 939
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v11

    .line 944
    .local v11, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    invoke-interface {v0, v1, v2, v11}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;

    goto/16 :goto_0

    .line 949
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v12    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    :sswitch_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Conflict while saving, resolving..."

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 950
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v10

    .line 951
    .local v10, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v9

    .line 953
    .local v9, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    .line 954
    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 955
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-interface {v0, v1, v2, v9}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v13

    new-instance v0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->data:[B

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->screenshot:[B

    iget-wide v6, p0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;->playedMS:J

    invoke-direct/range {v0 .. v7}, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[B[BJ)V

    .line 956
    invoke-virtual {v13, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto/16 :goto_0

    .line 924
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method
