.class final Lcom/google/android/gms/internal/ads/zzzz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzbvx:Lcom/google/android/gms/internal/ads/zzzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzbvx:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzbvx:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzbvx:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzy;->zza(Lcom/google/android/gms/internal/ads/zzzy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
