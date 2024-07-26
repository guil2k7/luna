.class public final Lcom/google/android/gms/internal/ads/zzarl;
.super Lcom/google/android/gms/internal/ads/zzlp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzato:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzatp:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzatq:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzbuq:Lcom/google/android/gms/internal/ads/zzlr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

.field private final zzded:Z

.field private final zzdee:Z

.field private final zzdef:F

.field private zzdeg:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdeh:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdei:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdej:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdek:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapw;FZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzato:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdef:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzded:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdee:Z

    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzarm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzarm;-><init>(Lcom/google/android/gms/internal/ads/zzarl;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPlaybackState()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isClickToExpandEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarl;->isCustomControlsEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatq:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdee:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isMuted()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final mute(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "mute"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FIZF)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdej:F

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzapw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v6, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarn;

    move-object v1, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzarn;-><init>(Lcom/google/android/gms/internal/ads/zzarl;IIZZ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zza(IIZZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v7

    if-eq p1, p2, :cond_2

    move v2, v1

    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeh:Z

    if-nez v3, :cond_3

    if-ne p2, v1, :cond_3

    move v6, v1

    :goto_1
    if-eqz v2, :cond_4

    if-ne p2, v1, :cond_4

    move v5, v1

    :goto_2
    if-eqz v2, :cond_5

    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    move v4, v1

    :goto_3
    if-eqz v2, :cond_6

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move v3, v1

    :goto_4
    if-eq p3, p4, :cond_7

    move v2, v1

    :goto_5
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeh:Z

    if-nez v8, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    if-nez v0, :cond_8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_2

    :cond_5
    move v4, v0

    goto :goto_3

    :cond_6
    move v3, v0

    goto :goto_4

    :cond_7
    move v2, v0

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoStart()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoPlay()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_8
    if-eqz v4, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoPause()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoEnd()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    :goto_a
    if-eqz v2, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoMute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    :goto_b
    :try_start_6
    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "Unable to call onVideoStart()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v1, "Unable to call onVideoPlay()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v1, "Unable to call onVideoPause()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v1, "Unable to call onVideoMute()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlr;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzmu;)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzato:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzato:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatq:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "initialState"

    const-string v0, "muteStart"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzato:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    const-string v2, "customControlsRequested"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatp:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    const-string v4, "clickToExpandRequested"

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatq:Z

    if-eqz v5, :cond_2

    const-string v5, "1"

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    goto :goto_1

    :cond_2
    const-string v5, "0"

    goto :goto_2
.end method

.method public final zzim()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdef:F

    return v0
.end method

.method public final zzin()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdej:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzio()Lcom/google/android/gms/internal/ads/zzlr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzo(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzapw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
