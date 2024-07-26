.class final Lcom/google/android/gms/ads/internal/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv",
        "<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzzr:Lcom/google/android/gms/internal/ads/zzxz;

.field private final synthetic zzzs:Lcom/google/android/gms/ads/internal/zzac;

.field private final synthetic zzzt:Lcom/google/android/gms/internal/ads/zzyc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/ads/internal/zzac;Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzr:Lcom/google/android/gms/internal/ads/zzxz;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzs:Lcom/google/android/gms/ads/internal/zzac;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzt:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzr:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzr:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxz;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzr:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzxz;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzs:Lcom/google/android/gms/ads/internal/zzac;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzac;->zzxl:Lcom/google/android/gms/ads/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzas;->zze(Lcom/google/android/gms/internal/ads/zzaqw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to call handleClick on mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzt:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzt:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyc;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzt:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzyc;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzax;->zzzs:Lcom/google/android/gms/ads/internal/zzac;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzac;->zzxl:Lcom/google/android/gms/ads/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzas;->zze(Lcom/google/android/gms/internal/ads/zzaqw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
