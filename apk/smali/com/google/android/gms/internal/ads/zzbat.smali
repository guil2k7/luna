.class final Lcom/google/android/gms/internal/ads/zzbat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdl;


# instance fields
.field private tag:I

.field private final zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

.field private zzdqj:I

.field private zzdqk:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbaq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdqa:Lcom/google/android/gms/internal/ads/zzbat;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbaq;)Lcom/google/android/gms/internal/ads/zzbat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdqa:Lcom/google/android/gms/internal/ads/zzbat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdqa:Lcom/google/android/gms/internal/ads/zzbat;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbat;-><init>(Lcom/google/android/gms/internal/ads/zzbaq;)V

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbes;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbes;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbau;->zzdql:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabs()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdg;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzbat;->zzc(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzaby()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbcd;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcd;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabs()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zzap(Lcom/google/android/gms/internal/ads/zzbah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabr()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private final zzbv(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private static zzbw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private static zzbx(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private final zzby(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadl()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpx:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpy:I

    if-lt v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbr(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdm;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpx:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbbb;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpx:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzbaq;->zzdpx:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbs(I)V

    return-object v1
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdm;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbbb;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    throw v0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    return-object v0
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbat;->zzc(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbat;->zzc(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v1

    if-eq v1, v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbcn;Lcom/google/android/gms/internal/ads/zzbbb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/zzbcn",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbr(I)I

    move-result v2

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdvz:Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdwb:Ljava/lang/Object;

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzaci()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    packed-switch v3, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzacj()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbu;

    const-string v4, "Unable to parse map entry."

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzacj()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    const-string v1, "Unable to parse map entry."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbs(I)V

    throw v0

    :pswitch_0
    :try_start_3
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdvy:Lcom/google/android/gms/internal/ads/zzbes;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbat;->zza(Lcom/google/android/gms/internal/ads/zzbes;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdwa:Lcom/google/android/gms/internal/ads/zzbes;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdwb:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/ads/zzbat;->zza(Lcom/google/android/gms/internal/ads/zzbes;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbs(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzaa(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabu()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabu()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabu()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzab(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabv()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final zzabl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzabm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzabn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabn()I

    move-result v0

    return v0
.end method

.method public final zzabo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzabp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabp()I

    move-result v0

    return v0
.end method

.method public final zzabq()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabq()Z

    move-result v0

    return v0
.end method

.method public final zzabr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzabs()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabs()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    return-object v0
.end method

.method public final zzabt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    return v0
.end method

.method public final zzabu()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabu()I

    move-result v0

    return v0
.end method

.method public final zzabv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabv()I

    move-result v0

    return v0
.end method

.method public final zzabw()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzabx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabx()I

    move-result v0

    return v0
.end method

.method public final zzaby()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaby()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzac(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabw()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabw()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzaci()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    if-ne v0, v1, :cond_2

    :cond_0
    const v0, 0x7fffffff

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method public final zzacj()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqj:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbq(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final zzad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabx()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabx()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabx()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzae(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaby()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaby()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaby()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaby()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbv(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbat;->zzd(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbdm",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbat;->zzd(Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v1

    if-eq v1, v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbay;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbay;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbay;->zzd(D)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbay;->zzd(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbm;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbm;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->readFloat()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbm;->zzd(F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzd(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final zzr(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabl()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabm()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabm()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabm()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzt(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabn()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabo()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabo()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzw(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabp()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzbx(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final zzw(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbaf;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbaf;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabq()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbaf;->addBoolean(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabq()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaf;->addBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/zzbah;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzabs()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbp;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadq()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzacb()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbat;->zzby(I)V

    goto :goto_0

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzaca()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqi:Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzabk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzdqk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
