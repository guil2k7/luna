.class public final Lcom/google/android/gms/internal/measurement/zzwb;
.super Ljava/lang/Object;


# direct methods
.method private static zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/measurement/zzi;",
            "[",
            "Lcom/google/android/gms/internal/measurement/zzm;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzm;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Value cycle detected.  Current value reference: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Previous value references: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzef(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    const-string v1, "values"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzwb;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    aget-object v0, p2, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzm;->type:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzef(Ljava/lang/String;)V

    :cond_3
    aput-object v1, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzl(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzc$zza;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzk(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v1

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpk:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzm;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzpy:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpk:[I

    array-length v7, v6

    move v2, v3

    move v4, v3

    :goto_2
    if-ge v2, v7, :cond_2

    aget v3, v6, v2

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzpy:[Lcom/google/android/gms/internal/measurement/zzm;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v3

    aput-object v3, v8, v4

    add-int/lit8 v3, v2, 0x1

    move v2, v3

    move v4, v5

    goto :goto_2

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzk(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzl(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzc$zza;

    move-result-object v6

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpl:[I

    array-length v2, v2

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpm:[I

    array-length v4, v4

    if-eq v2, v4, :cond_4

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpl:[I

    array-length v2, v2

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpm:[I

    array-length v4, v4

    const/16 v5, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Uneven map keys ("

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") and map values ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzwb;->zzef(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpl:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzm;

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzpz:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpl:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzm;

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqa:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpl:[I

    array-length v8, v7

    move v2, v3

    move v4, v3

    :goto_3
    if-ge v2, v8, :cond_5

    aget v9, v7, v2

    iget-object v10, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzpz:[Lcom/google/android/gms/internal/measurement/zzm;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v9, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v9

    aput-object v9, v10, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_3

    :cond_5
    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpm:[I

    array-length v7, v6

    move v2, v3

    move v4, v3

    :goto_4
    if-ge v2, v7, :cond_2

    aget v3, v6, v2

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqa:[Lcom/google/android/gms/internal/measurement/zzm;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v3

    aput-object v3, v8, v4

    add-int/lit8 v3, v2, 0x1

    move v2, v3

    move v4, v5

    goto :goto_4

    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzk(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzl(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzc$zza;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpp:I

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzm;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqb:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzk(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzl(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzc$zza;

    move-result-object v2

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpo:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzm;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqf:[Lcom/google/android/gms/internal/measurement/zzm;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpo:[I

    array-length v6, v5

    move v2, v3

    move v4, v3

    :goto_5
    if-ge v2, v6, :cond_2

    aget v7, v5, v2

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqf:[Lcom/google/android/gms/internal/measurement/zzm;

    add-int/lit8 v3, v4, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v7

    aput-object v7, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_5

    :pswitch_4
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zze;Lcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;I)Lcom/google/android/gms/internal/measurement/zzwd;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwd;->zzrs()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zze;->zznt:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzok:[Lcom/google/android/gms/internal/measurement/zzh;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "properties"

    invoke-static {v1, v0, v6}, Lcom/google/android/gms/internal/measurement/zzwb;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzh;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzoi:[Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/measurement/zzh;->key:I

    const-string v7, "keys"

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzwb;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzh;->value:I

    const-string v6, "values"

    invoke-static {p2, v0, v6}, Lcom/google/android/gms/internal/measurement/zzwb;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzb;->zzks:Lcom/google/android/gms/internal/measurement/zzb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzb;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzwe;->zzm(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzwe;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/measurement/zzwe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzwe;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwe;->zzrt()Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzi;)Lcom/google/android/gms/internal/measurement/zzwf;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v0, v0

    new-array v2, v0, [Lcom/google/android/gms/internal/measurement/zzm;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(ILcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzm;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwf;->zzru()Lcom/google/android/gms/internal/measurement/zzwg;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:[Lcom/google/android/gms/internal/measurement/zze;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:[Lcom/google/android/gms/internal/measurement/zze;

    aget-object v3, v3, v0

    invoke-static {v3, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Lcom/google/android/gms/internal/measurement/zze;Lcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;I)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:[Lcom/google/android/gms/internal/measurement/zze;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:[Lcom/google/android/gms/internal/measurement/zze;

    aget-object v3, v3, v0

    invoke-static {v3, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Lcom/google/android/gms/internal/measurement/zze;Lcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;I)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:[Lcom/google/android/gms/internal/measurement/zze;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:[Lcom/google/android/gms/internal/measurement/zze;

    aget-object v3, v3, v0

    invoke-static {v3, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Lcom/google/android/gms/internal/measurement/zze;Lcom/google/android/gms/internal/measurement/zzi;[Lcom/google/android/gms/internal/measurement/zzm;I)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzwg;->zzc(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwg;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoo:[Lcom/google/android/gms/internal/measurement/zzj;

    array-length v9, v8

    move v3, v1

    :goto_4
    if-ge v3, v9, :cond_e

    aget-object v10, v8, v3

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzwi;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;-><init>(Lcom/google/android/gms/internal/measurement/zzwc;)V

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzoy:[I

    array-length v13, v12

    move v2, v1

    :goto_5
    if-ge v2, v13, :cond_4

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzd(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_4
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzoz:[I

    array-length v13, v12

    move v2, v1

    :goto_6
    if-ge v2, v13, :cond_5

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zze(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_5
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpa:[I

    array-length v13, v12

    move v2, v1

    :goto_7
    if-ge v2, v13, :cond_6

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzf(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_6
    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpc:[I

    array-length v12, v2

    move v0, v1

    :goto_8
    if-ge v0, v12, :cond_7

    aget v13, v2, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzm;->string:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzwi;->zzet(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpb:[I

    array-length v13, v12

    move v2, v1

    :goto_9
    if-ge v2, v13, :cond_8

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzg(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_8
    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpd:[I

    array-length v12, v2

    move v0, v1

    :goto_a
    if-ge v0, v12, :cond_9

    aget v13, v2, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzm;->string:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzwi;->zzeu(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpe:[I

    array-length v13, v12

    move v2, v1

    :goto_b
    if-ge v2, v13, :cond_a

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzh(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_a
    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpg:[I

    array-length v12, v2

    move v0, v1

    :goto_c
    if-ge v0, v12, :cond_b

    aget v13, v2, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzm;->string:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzwi;->zzev(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzpf:[I

    array-length v13, v12

    move v2, v1

    :goto_d
    if-ge v2, v13, :cond_c

    aget v0, v12, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzi(Lcom/google/android/gms/internal/measurement/zzwd;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_c
    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/zzj;->zzph:[I

    array-length v10, v2

    move v0, v1

    :goto_e
    if-ge v0, v10, :cond_d

    aget v12, v2, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:[Lcom/google/android/gms/internal/measurement/zzm;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v13, v12

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzm;->string:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzwi;->zzew(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwi;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_d
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzwi;->zzrz()Lcom/google/android/gms/internal/measurement/zzwh;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzwg;->zzb(Lcom/google/android/gms/internal/measurement/zzwh;)Lcom/google/android/gms/internal/measurement/zzwg;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->version:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzwg;->zzes(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzwg;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzow:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzwg;->zzad(I)Lcom/google/android/gms/internal/measurement/zzwg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzwg;->zzrw()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object v0

    return-object v0
.end method

.method private static zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index out of bounds detected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzef(Ljava/lang/String;)V

    :cond_1
    aget-object v0, p0, p1

    return-object v0
.end method

.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static zzef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzwj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzm;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzm;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzm;->type:I

    iput v0, v1, Lcom/google/android/gms/internal/measurement/zzm;->type:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzm;->zzqg:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqg:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzm;->zzqh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzm;->zzqh:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/measurement/zzm;->zzqh:Z

    :cond_0
    return-object v1
.end method

.method private static zzl(Lcom/google/android/gms/internal/measurement/zzm;)Lcom/google/android/gms/internal/measurement/zzc$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwj;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpi:Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzc$zza;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zzef(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzc$zza;->zzpi:Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaca;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzc$zza;

    return-object v0
.end method
