.class final Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauf;


# instance fields
.field private final synthetic zzdhy:Lcom/google/android/gms/internal/ads/zzaum;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaum;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaum;->zzwh()Lcom/google/android/gms/internal/ads/zzaun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaun;->zzwj()[B

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaum;->zzwh()Lcom/google/android/gms/internal/ads/zzaun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaun;->zzwi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzauf;->zzc([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object v0

    return-object v0
.end method
