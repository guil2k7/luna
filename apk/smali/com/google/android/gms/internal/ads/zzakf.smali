.class final Lcom/google/android/gms/internal/ads/zzakf;
.super Lcom/google/android/gms/internal/ads/zzakg;


# instance fields
.field private final synthetic zzcrh:Lcom/google/android/gms/internal/ads/zzakd;

.field private final synthetic zzcri:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakd;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzcrh:Lcom/google/android/gms/internal/ads/zzakd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzcri:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzakg;-><init>(Lcom/google/android/gms/internal/ads/zzake;)V

    return-void
.end method


# virtual methods
.method public final zzdn()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzcrh:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzr(Lcom/google/android/gms/internal/ads/zzakd;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzcri:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzakh;->zzd(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
