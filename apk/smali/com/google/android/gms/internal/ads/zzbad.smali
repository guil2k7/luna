.class final Lcom/google/android/gms/internal/ads/zzbad;
.super Ljava/lang/Object;


# direct methods
.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zzb([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_2
    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v2, v0, 0x4

    const/4 v1, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-eq v1, v2, :cond_2

    invoke-static {v1, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BIILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    goto :goto_1

    :cond_2
    if-gt v0, p3, :cond_3

    if-eq v1, v2, :cond_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbae;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/ads/zzbbt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v1

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-ne p0, v2, :cond_0

    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbef;Lcom/google/android/gms/internal/ads/zzbae;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zzb([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    :goto_0
    return v0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zze([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zzf([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v1, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbah;->zzc([BII)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbef;->zzagd()Lcom/google/android/gms/internal/ads/zzbef;

    move-result-object v4

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v6, v0, 0x4

    const/4 v0, 0x0

    move v1, p2

    :goto_2
    if-ge v1, p3, :cond_3

    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-eq v0, v6, :cond_2

    move-object v1, p1

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BIILcom/google/android/gms/internal/ads/zzbef;Lcom/google/android/gms/internal/ads/zzbae;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    if-gt v1, p3, :cond_4

    if-eq v0, v6, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {p4, p0, v4}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static zza(I[BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 3

    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    if-ltz v2, :cond_0

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    move v0, v2

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    if-ltz v2, :cond_3

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_4

    iput v2, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    if-ltz v1, :cond_0

    iput v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    goto :goto_0
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbae;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/zzbbt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v2, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadl()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_1
    return v0
.end method

.method static zzb([BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 8

    const/4 v1, 0x7

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    :goto_0
    return v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v2

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit8 v0, v2, 0x7f

    int-to-long v6, v0

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    move v0, v3

    :goto_1
    if-gez v2, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v2, 0x7f

    int-to-long v6, v0

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    move v0, v3

    goto :goto_1

    :cond_1
    iput-wide v4, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    goto :goto_0
.end method

.method static zzc([BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static zzd([BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    add-int v2, v0, v1

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzbem;->zzf([BII)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzads()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static zze([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static zze([BILcom/google/android/gms/internal/ads/zzbae;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbah;->zzc([BII)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static zzf([BI)J
    .locals 8

    const-wide/16 v6, 0xff

    aget-byte v0, p0, p1

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static zzg([BI)D
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzf([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static zzh([BI)F
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zze([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method
