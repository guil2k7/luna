.class final Lcom/google/android/gms/tagmanager/zzec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfw;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final synthetic zzazz:Lcom/google/android/gms/tagmanager/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzeb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tagmanager/zzbw;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;J)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/tagmanager/zzbw;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v0

    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Permanent failure dispatching hitId: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tagmanager/zzbw;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzec;->zzazz:Lcom/google/android/gms/tagmanager/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzeb;->zza(Lcom/google/android/gms/tagmanager/zzeb;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbw;->zznp()J

    move-result-wide v0

    const/16 v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Giving up on failed hitId: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
