.class public final Lcom/google/android/gms/internal/measurement/zzkv;
.super Lcom/google/android/gms/internal/measurement/zzacd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzacd",
        "<",
        "Lcom/google/android/gms/internal/measurement/zzkv;",
        ">;"
    }
.end annotation


# instance fields
.field public zzawl:[J

.field public zzawm:[J

.field public zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

.field private zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacd;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzt:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzacm;->zzbzt:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkq;->zzlx()[Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkw;->zzmb()[Lcom/google/android/gms/internal/measurement/zzkw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzo:I

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
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzkv;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkv;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzach;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacf;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzach;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacf;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected final zza()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzacd;->zza()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zzat(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v0, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zzat(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILcom/google/android/gms/internal/measurement/zzacj;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    move v0, v3

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    array-length v2, v2

    if-lez v2, :cond_7

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb(ILcom/google/android/gms/internal/measurement/zzacj;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzacb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(ILcom/google/android/gms/internal/measurement/zzacj;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zza(ILcom/google/android/gms/internal/measurement/zzacj;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacd;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zzaca;)Lcom/google/android/gms/internal/measurement/zzacj;
    .locals 6
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
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zzaf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvr()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzaca;->zzam(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zzal(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v0, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zzaf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->getPosition()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvr()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzaca;->zzam(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    if-nez v2, :cond_d

    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvo()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v2, v2

    goto :goto_9

    :cond_e
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zzal(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    if-nez v0, :cond_10

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkq;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkq;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    array-length v0, v0

    goto :goto_b

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkq;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawn:[Lcom/google/android/gms/internal/measurement/zzkq;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacm;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez v0, :cond_13

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkw;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkw;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zzvl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    array-length v0, v0

    goto :goto_d

    :cond_14
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkw;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzawo:[Lcom/google/android/gms/internal/measurement/zzkw;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
    .end sparse-switch
.end method
