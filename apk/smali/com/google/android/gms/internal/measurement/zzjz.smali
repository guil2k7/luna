.class public final Lcom/google/android/gms/internal/measurement/zzjz;
.super Lcom/google/android/gms/internal/measurement/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzks;
    .locals 5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzki;)V
    .locals 6

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzki;->zzats:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzki;->zzatt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, p2, 0x1

    const-string v0, "string_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzki;->zzatq:Lcom/google/android/gms/internal/measurement/zzkl;

    if-eqz v2, :cond_4

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzaue:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "UNKNOWN_MATCH_TYPE"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzaue:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    const-string v3, "match_type"

    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "expression"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzauf:Ljava/lang/String;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "case_sensitive"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzaug:Ljava/lang/Boolean;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzauh:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "expression_list {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzauh:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    add-int/lit8 v5, v1, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "REGEXP"

    goto :goto_1

    :pswitch_1
    const-string v0, "BEGINS_WITH"

    goto :goto_1

    :pswitch_2
    const-string v0, "ENDS_WITH"

    goto :goto_1

    :pswitch_3
    const-string v0, "PARTIAL"

    goto :goto_1

    :pswitch_4
    const-string v0, "EXACT"

    goto :goto_1

    :pswitch_5
    const-string v0, "IN_LIST"

    goto :goto_1

    :cond_2
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, p2, 0x1

    const-string v1, "number_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzki;->zzatr:Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkj;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkj;)V
    .locals 2

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzatw:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "UNKNOWN_COMPARISON_TYPE"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzatw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const-string v1, "comparison_type"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "match_as_float"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzatx:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzaty:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzatz:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzkj;->zzaua:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v0, "LESS_THAN"

    goto :goto_1

    :pswitch_1
    const-string v0, "GREATER_THAN"

    goto :goto_1

    :pswitch_2
    const-string v0, "EQUAL"

    goto :goto_1

    :pswitch_3
    const-string v0, "BETWEEN"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkv;)V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    if-eqz v0, :cond_3

    invoke-static {p0, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "results: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lcom/google/android/gms/internal/measurement/zzkv;->zzawm:[J

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget-wide v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    if-eqz v0, :cond_6

    invoke-static {p0, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzkv;->zzawl:[J

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v0, v4, :cond_5

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v1, v2, 0x1

    if-eqz v2, :cond_4

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static zza([JI)Z
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    shl-int/lit8 v1, v1, 0x6

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v1, p1, 0x40

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v1, p1, 0x40

    shl-long/2addr v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static zza(Ljava/util/BitSet;)[J
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v3, v0, 0x40

    new-array v4, v3, [J

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    move v0, v1

    :goto_1
    const/16 v5, 0x40

    if-ge v0, v5, :cond_1

    shl-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    shl-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v4, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p0, v0

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Double;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzks;

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzks;-><init>()V

    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast p2, Ljava/lang/Long;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    :cond_5
    :goto_2
    array-length v2, p0

    aput-object v1, v0, v2

    move-object p0, v0

    goto :goto_1

    :cond_6
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_7

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    goto :goto_2

    :cond_7
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_5

    check-cast p2, Ljava/lang/Double;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    goto :goto_2
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzcf(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v3, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzkh;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nevent_filter {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filter_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkh;->zzatk:Ljava/lang/Integer;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_name"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzkh;->zzatl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_count_filter"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkh;->zzato:Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkj;)V

    const-string v2, "  filters {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkh;->zzatm:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/4 v5, 0x2

    invoke-direct {p0, v1, v5, v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzki;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzkk;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkk;->zzatk:Ljava/lang/Integer;

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkk;->zzauc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkk;->zzaud:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzki;)V

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzale:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzasw:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzale:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzkx;->zzasw:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zza(JJ)Z
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzkt;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacj;->zzwb()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzacb;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzacj;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacb;->zzvt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize batch"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zza([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzab()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzab()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/String;
    .locals 17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nbatch {\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    array-length v7, v6

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_b

    aget-object v3, v6, v4

    if-eqz v3, :cond_a

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "bundle {\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const-string v8, "protocol_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavh:Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "platform"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavp:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "gmp_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavt:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "uploading_gmp_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavu:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "config_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawf:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "gmp_app_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzafa:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "app_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "app_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zztg:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "app_version_major"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawb:Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "firebase_instance_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzafc:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "dev_cert_hash"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavx:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "app_store"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzafh:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "upload_timestamp_millis"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavk:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "start_timestamp_millis"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "end_timestamp_millis"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "previous_bundle_start_timestamp_millis"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavn:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "previous_bundle_end_timestamp_millis"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavo:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "app_instance_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzaez:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "resettable_device_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "device_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawe:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "ds_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawh:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "limited_ad_tracking"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavw:Ljava/lang/Boolean;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "os_version"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavq:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "device_model"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavr:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "user_default_language"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzahd:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "time_zone_offset_minutes"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavs:Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "bundle_sequential_index"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavy:Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "service_upload"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavz:Ljava/lang/Boolean;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "health_monitor"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzafy:Ljava/lang/String;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawg:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawg:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const-string v8, "android_id"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawg:Ljava/lang/Long;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawj:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const-string v8, "retry_counter"

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawj:Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    if-eqz v8, :cond_3

    array-length v9, v8

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_3

    aget-object v10, v8, v2

    if-eqz v10, :cond_2

    const/4 v11, 0x2

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v11, "user_property {\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    const-string v12, "set_timestamp_millis"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v13

    iget-object v14, v10, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "string_value"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkx;->zzale:Ljava/lang/String;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "int_value"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "double_value"

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzkx;->zzasw:Ljava/lang/Double;

    invoke-static {v5, v11, v12, v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v10, "}\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzawa:[Lcom/google/android/gms/internal/measurement/zzkp;

    if-eqz v8, :cond_5

    array-length v9, v8

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_5

    aget-object v10, v8, v2

    if-eqz v10, :cond_4

    const/4 v11, 0x2

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v11, "audience_membership {\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    const-string v12, "audience_id"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkp;->zzate:Ljava/lang/Integer;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "new_audience"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkp;->zzauv:Ljava/lang/Boolean;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    const-string v12, "current_data"

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzkp;->zzaut:Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-static {v5, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkv;)V

    const/4 v11, 0x2

    const-string v12, "previous_data"

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzkp;->zzauu:Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-static {v5, v11, v12, v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzkv;)V

    const/4 v10, 0x2

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v10, "}\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    if-eqz v8, :cond_9

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v9, :cond_9

    aget-object v2, v8, v3

    if-eqz v2, :cond_8

    const/4 v10, 0x2

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v10, "event {\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    const-string v11, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    const-string v11, "timestamp_millis"

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-static {v5, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    const-string v11, "previous_timestamp_millis"

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkr;->zzavc:Ljava/lang/Long;

    invoke-static {v5, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    const-string v11, "count"

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkr;->count:Ljava/lang/Integer;

    invoke-static {v5, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    if-eqz v10, :cond_7

    array-length v11, v10

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_7

    aget-object v12, v10, v2

    if-eqz v12, :cond_6

    const/4 v13, 0x3

    invoke-static {v5, v13}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v13, "param {\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    const-string v14, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v15

    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x3

    const-string v14, "string_value"

    iget-object v15, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    invoke-static {v5, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x3

    const-string v14, "int_value"

    iget-object v15, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    invoke-static {v5, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x3

    const-string v14, "double_value"

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    invoke-static {v5, v13, v14, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v12, 0x3

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v12, "}\n"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x2

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    :cond_b
    const-string v2, "}\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method final zzb([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Failed to gzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic zzfu()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzfu()V

    return-void
.end method

.method public final bridge synthetic zzfv()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzfv()V

    return-void
.end method

.method public final bridge synthetic zzfw()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzfw()V

    return-void
.end method

.method public final bridge synthetic zzge()Lcom/google/android/gms/internal/measurement/zzer;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgg()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgh()Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/internal/measurement/zzft;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/internal/measurement/zzee;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjf()Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjg()Lcom/google/android/gms/internal/measurement/zzed;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzjg()Lcom/google/android/gms/internal/measurement/zzed;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjh()Lcom/google/android/gms/internal/measurement/zzek;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    return-object v0
.end method
