.class final Lcom/google/android/gms/internal/measurement/zzzl;
.super Lcom/google/android/gms/internal/measurement/zzzj;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzbto:Z

.field private zzbtp:I

.field private zzbtq:I

.field private zzbtr:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>(Lcom/google/android/gms/internal/measurement/zzzk;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtr:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->buffer:[B

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtq:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbto:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzzk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>([BIIZ)V

    return-void
.end method

.method private final zztp()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtq:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtr:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtp:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->limit:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtp:I

    goto :goto_0
.end method


# virtual methods
.method public final zzaf(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzy;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzy;->zzuc()Lcom/google/android/gms/internal/measurement/zzzy;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzto()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtr:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzy;->zzub()Lcom/google/android/gms/internal/measurement/zzzy;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtr:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zztp()V

    return v1
.end method

.method public final zzto()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzbtq:I

    sub-int/2addr v0, v1

    return v0
.end method
