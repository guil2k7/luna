.class public final Lcom/google/android/gms/internal/measurement/zzg;
.super Lcom/google/android/gms/internal/measurement/zzaca;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzaca",
        "<",
        "Lcom/google/android/gms/internal/measurement/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field public zzod:[Lcom/google/android/gms/internal/measurement/zzm;

.field public zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

.field public zzof:[Lcom/google/android/gms/internal/measurement/zzf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaca;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzm;->zzg()[Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzm;->zzg()[Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzf;->zzc()[Lcom/google/android/gms/internal/measurement/zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxr:I

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
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzace;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzace;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzace;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacc;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzace;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzace;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzace;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzbxg:Lcom/google/android/gms/internal/measurement/zzacc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacc;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected final zza()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzaby;->zzb(ILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzaby;->zzb(ILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/zzaby;->zzb(ILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzaby;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaby;->zza(ILcom/google/android/gms/internal/measurement/zzacg;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaby;->zza(ILcom/google/android/gms/internal/measurement/zzacg;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzaby;->zza(ILcom/google/android/gms/internal/measurement/zzacg;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzaby;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zzabx;)Lcom/google/android/gms/internal/measurement/zzacg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzvf()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzabx;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacj;->zzb(Lcom/google/android/gms/internal/measurement/zzabx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzm;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzvf()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzm;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzod:[Lcom/google/android/gms/internal/measurement/zzm;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacj;->zzb(Lcom/google/android/gms/internal/measurement/zzabx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzm;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzm;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzvf()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzm;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzoe:[Lcom/google/android/gms/internal/measurement/zzm;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacj;->zzb(Lcom/google/android/gms/internal/measurement/zzabx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzf;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzf;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzvf()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzf;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzabx;->zza(Lcom/google/android/gms/internal/measurement/zzacg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzg;->zzof:[Lcom/google/android/gms/internal/measurement/zzf;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
