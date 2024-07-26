.class public final Lcom/google/android/gms/internal/ads/zzok;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzaad:Lcom/google/android/gms/internal/ads/zzacm;

.field private zzbhm:Lcom/google/android/gms/internal/ads/zzro;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbhn:Lcom/google/android/gms/ads/internal/gmsg/zzv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbho:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzbhp:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzbhq:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzok;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzok;)Lcom/google/android/gms/internal/ads/zzro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhm:Lcom/google/android/gms/internal/ads/zzro;

    return-object v0
.end method

.method private final zzjx()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbho:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhp:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhq:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhm:Lcom/google/android/gms/internal/ads/zzro;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzok;->zzjx()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhm:Lcom/google/android/gms/internal/ads/zzro;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzro;->onUnconfirmedClickCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbho:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhp:Ljava/lang/Long;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzok;->zzjx()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbho:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time_interval"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "messageType"

    const-string v2, "onePointFiveClick"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzok;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzacm;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzro;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhm:Lcom/google/android/gms/internal/ads/zzro;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhn:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    const-string v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhn:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacm;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzol;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzol;-><init>(Lcom/google/android/gms/internal/ads/zzok;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhn:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    const-string v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhn:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacm;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    return-void
.end method

.method public final zzjw()Lcom/google/android/gms/internal/ads/zzro;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->zzbhm:Lcom/google/android/gms/internal/ads/zzro;

    return-object v0
.end method
