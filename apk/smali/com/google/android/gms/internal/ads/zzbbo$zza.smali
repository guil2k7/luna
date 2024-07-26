.class public Lcom/google/android/gms/internal/ads/zzbbo$zza;
.super Lcom/google/android/gms/internal/ads/zzazz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzbbo",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzbbo$zza",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzazz",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzdtw:Lcom/google/android/gms/internal/ads/zzbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzdty:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtw:Lcom/google/android/gms/internal/ads/zzbbo;

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdud:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtw:Lcom/google/android/gms/internal/ads/zzbbo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    :goto_0
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbbo$zza;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/ads/zzazy;)Lcom/google/android/gms/internal/ads/zzazz;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbbo$zza;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbbo$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzadh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p0
.end method

.method public final synthetic zzaax()Lcom/google/android/gms/internal/ads/zzazz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    return-object v0
.end method

.method public final synthetic zzadg()Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtw:Lcom/google/android/gms/internal/ads/zzbbo;

    return-object v0
.end method

.method protected final zzadh()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdud:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbbo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    :cond_0
    return-void
.end method

.method public final zzadi()Lcom/google/android/gms/internal/ads/zzbbo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_3

    sget v4, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz v3, :cond_4

    move-object v1, v0

    :goto_2
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final synthetic zzadj()Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    goto :goto_0
.end method

.method public final synthetic zzadk()Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdty:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzdtx:Lcom/google/android/gms/internal/ads/zzbbo;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_3

    sget v4, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz v3, :cond_4

    move-object v1, v0

    :goto_2
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    return-object v0
.end method
