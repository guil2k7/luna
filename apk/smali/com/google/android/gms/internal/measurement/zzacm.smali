.class public final Lcom/google/android/gms/internal/measurement/zzacm;
.super Ljava/lang/Object;


# static fields
.field public static final zzbvp:[I

.field private static final zzbzp:I

.field private static final zzbzq:I

.field private static final zzbzr:I

.field private static final zzbzs:I

.field public static final zzbzt:[J

.field private static final zzbzu:[F

.field private static final zzbzv:[D

.field private static final zzbzw:[Z

.field public static final zzbzx:[Ljava/lang/String;

.field private static final zzbzy:[[B

.field public static final zzbzz:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzp:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzq:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzr:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzs:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbvp:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzt:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzu:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzv:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzw:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzx:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzy:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzz:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaca;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzak(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzak(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzd(II)V

    return v0
.end method
