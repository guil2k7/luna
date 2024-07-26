.class public final Lcom/google/android/gms/internal/ads/zzaxr$zzb;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzaxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo",
        "<",
        "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
        "Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf",
            "<",
            "Lcom/google/android/gms/internal/ads/zzaxr$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;


# instance fields
.field private zzdlj:I

.field private zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    const-class v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method static synthetic zzzt()Lcom/google/android/gms/internal/ads/zzaxr$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxs;->zzakf:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxr$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxs;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdlu"

    aput-object v2, v0, v1

    const-string v1, "zzdlv"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "zzdlw"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "zzdlj"

    aput-object v2, v0, v1

    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlx:Lcom/google/android/gms/internal/ads/zzaxr$zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final zzzo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzzp()Lcom/google/android/gms/internal/ads/zzaxi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->zzza()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlu:Lcom/google/android/gms/internal/ads/zzaxi;

    goto :goto_0
.end method

.method public final zzzq()Lcom/google/android/gms/internal/ads/zzaxl;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlv:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxl;->zzax(I)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlh:Lcom/google/android/gms/internal/ads/zzaxl;

    :cond_0
    return-object v0
.end method

.method public final zzzr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlw:I

    return v0
.end method

.method public final zzzs()Lcom/google/android/gms/internal/ads/zzayd;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxr$zzb;->zzdlj:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayd;->zzbg(I)Lcom/google/android/gms/internal/ads/zzayd;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmp:Lcom/google/android/gms/internal/ads/zzayd;

    :cond_0
    return-object v0
.end method
