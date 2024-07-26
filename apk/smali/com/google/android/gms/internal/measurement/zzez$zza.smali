.class public final Lcom/google/android/gms/internal/measurement/zzez$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaaa:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private zzaka:Lcom/google/android/gms/internal/measurement/zzwx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzwx",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final zzakb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzakc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzny:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakb:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/measurement/zzez$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/internal/measurement/zzez$zza",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;JJ)Lcom/google/android/gms/internal/measurement/zzez$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/internal/measurement/zzez$zza",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzez$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/measurement/zzez$zza",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzc(Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/zzez$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/internal/measurement/zzez$zza",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzaht:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzez$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzez$zza",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzez$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static zzip()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/measurement/zzez$zza;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzee;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzaht:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic zziq()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzm()V

    return-void
.end method

.method private static zzm()V
    .locals 8

    const-class v2, Lcom/google/android/gms/internal/measurement/zzez$zza;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez;->zzio()Lcom/google/android/gms/internal/measurement/zzxh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzxh;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez;->zzio()Lcom/google/android/gms/internal/measurement/zzxh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzxh;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez;->zzio()Lcom/google/android/gms/internal/measurement/zzxh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzxh;->zze(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzaht:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez;->zzio()Lcom/google/android/gms/internal/measurement/zzxh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzxh;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez;->zzio()Lcom/google/android/gms/internal/measurement/zzxh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzxh;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    goto :goto_4

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzee;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzip()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzee;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaaa:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzakc:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzip()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzaka:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwx;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzny:Ljava/lang/String;

    return-object v0
.end method
