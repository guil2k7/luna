.class public final Lcom/google/android/gms/internal/ads/zzaak;
.super Lcom/google/android/gms/internal/ads/zzaal;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaal;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv",
        "<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaeu:Landroid/view/WindowManager;

.field private zzagj:Landroid/util/DisplayMetrics;

.field private final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzbww:Lcom/google/android/gms/internal/ads/zzmw;

.field private zzbwx:F

.field private zzbwy:I

.field private zzbwz:I

.field private zzbxa:I

.field private zzbxb:I

.field private zzbxc:I

.field private zzbxd:I

.field private zzbxe:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmw;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwy:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxe:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbww:Lcom/google/android/gms/internal/ads/zzmw;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzaeu:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzaeu:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwx:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxa:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwy:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwy:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxb:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxc:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwy:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxd:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxe:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwy:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwz:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxb:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxc:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbwx:F

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxa:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaal;->zza(IIIIFI)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbww:Lcom/google/android/gms/internal/ads/zzmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmw;->zziw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzo(Z)Lcom/google/android/gms/internal/ads/zzaaj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbww:Lcom/google/android/gms/internal/ads/zzmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmw;->zzix()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzn(Z)Lcom/google/android/gms/internal/ads/zzaaj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbww:Lcom/google/android/gms/internal/ads/zzmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmw;->zziz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzp(Z)Lcom/google/android/gms/internal/ads/zzaaj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbww:Lcom/google/android/gms/internal/ads/zzmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmw;->zziy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzq(Z)Lcom/google/android/gms/internal/ads/zzaaj;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaj;->zzr(Z)Lcom/google/android/gms/internal/ads/zzaaj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaah;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaah;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzaai;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaah;->zzng()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    aget v0, v0, v8

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaak;->zzc(II)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzakb;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbx(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzagj:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxc:I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/ads/zzaqw;->measure(II)V

    goto/16 :goto_1
.end method

.method public final zzc(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxd:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxe:I

    :cond_1
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxd:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbxe:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaak;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasc;->zzb(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
