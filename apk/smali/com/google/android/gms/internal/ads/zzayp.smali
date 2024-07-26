.class public final Lcom/google/android/gms/internal/ads/zzayp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauf;


# static fields
.field private static final zzdhv:[B


# instance fields
.field private final zzdne:Ljava/lang/String;

.field private final zzdnf:[B

.field private final zzdng:Lcom/google/android/gms/internal/ads/zzayw;

.field private final zzdnh:Lcom/google/android/gms/internal/ads/zzayn;

.field private final zzdni:Lcom/google/android/gms/internal/ads/zzayr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayp;->zzdhv:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzayw;Lcom/google/android/gms/internal/ads/zzayn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdni:Lcom/google/android/gms/internal/ads/zzayr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdnf:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdne:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdng:Lcom/google/android/gms/internal/ads/zzayw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdnh:Lcom/google/android/gms/internal/ads/zzayn;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdni:Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdne:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdnf:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdnh:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzayn;->zzwm()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdng:Lcom/google/android/gms/internal/ads/zzayw;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/zzayw;)Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzdnh:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzays;->zzaaq()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayn;->zzi([B)Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayp;->zzdhv:[B

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzatz;->zzc([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzays;->zzaap()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
