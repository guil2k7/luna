.class final Lcom/google/android/gms/tagmanager/zzf;
.super Lcom/google/android/gms/tagmanager/zzbq;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final zzavk:Lcom/google/android/gms/tagmanager/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zza;->zzb:Lcom/google/android/gms/internal/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzf;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zza;->zzh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/tagmanager/zza;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzf;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbq;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzf;->zzavk:Lcom/google/android/gms/tagmanager/zza;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzm;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzm;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzf;->zzavk:Lcom/google/android/gms/tagmanager/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zza;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzm;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
