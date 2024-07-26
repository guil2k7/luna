.class public final Lcom/google/android/gms/internal/measurement/zzkn;
.super Lcom/google/android/gms/internal/measurement/zzacd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzacd",
        "<",
        "Lcom/google/android/gms/internal/measurement/zzkn;",
        ">;"
    }
.end annotation


# instance fields
.field public zzafa:Ljava/lang/String;

.field public zzaum:Ljava/lang/Long;

.field private zzaun:Ljava/lang/Integer;

.field public zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

.field public zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

.field public zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacd;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzlv()[Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzlu()[Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkg;->zzlq()[Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzo:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacf;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacf;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method protected final zza()I
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzacd;->zza()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzacb;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzacb;->zzf(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILcom/google/android/gms/internal/measurement/zzacj;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILcom/google/android/gms/internal/measurement/zzacj;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    move v0, v3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    array-length v1, v1

    if-lez v1, :cond_a

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILcom/google/android/gms/internal/measurement/zzacj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzacb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zze(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(ILcom/google/android/gms/internal/measurement/zzacj;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(ILcom/google/android/gms/internal/measurement/zzacj;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(ILcom/google/android/gms/internal/measurement/zzacj;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacd;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zzaca;)Lcom/google/android/gms/internal/measurement/zzacj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzacd;->zza(Lcom/google/android/gms/internal/measurement/zzaca;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzafa:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaun:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzko;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzko;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzko;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzko;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauo:[Lcom/google/android/gms/internal/measurement/zzko;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkm;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzaup:[Lcom/google/android/gms/internal/measurement/zzkm;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkg;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkg;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzauq:[Lcom/google/android/gms/internal/measurement/zzkg;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method
