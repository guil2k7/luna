.class Lcom/google/android/gms/internal/measurement/zzzh;
.super Lcom/google/android/gms/internal/measurement/zzzg;


# instance fields
.field protected final zzbtj:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzzb;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzzh;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->zztm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzb;->zztm()I

    move-result v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eq v1, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzg;->zza(Lcom/google/android/gms/internal/measurement/zzzb;II)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    array-length v0, v0

    return v0
.end method

.method protected final zza(III)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zztn()I

    move-result v1

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/zzzw;->zza(I[BII)I

    move-result v0

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzzb;II)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v1

    if-le p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v1

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v1

    if-le p3, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v1

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzzh;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzh;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zztn()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zztn()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zztn()I

    move-result v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-byte v6, v3, v2

    aget-byte v7, v4, v1

    if-eq v6, v7, :cond_2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzzb;->zzb(II)Lcom/google/android/gms/internal/measurement/zzzb;

    move-result-object v1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/measurement/zzzb;->zzb(II)Lcom/google/android/gms/internal/measurement/zzzb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzzb;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public zzae(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/measurement/zzzb;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzb;->size()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzb(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzbte:Lcom/google/android/gms/internal/measurement/zzzb;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzze;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzh;->zzbtj:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zztn()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzze;-><init>([BII)V

    goto :goto_0
.end method

.method protected zztn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
