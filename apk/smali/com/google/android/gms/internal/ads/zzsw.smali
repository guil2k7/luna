.class final Lcom/google/android/gms/internal/ads/zzsw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzts;


# instance fields
.field private final synthetic zzbnx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsu;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbnx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zztt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztt;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztt;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbnx:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
