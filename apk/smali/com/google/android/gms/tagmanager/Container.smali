.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$zzb;,
        Lcom/google/android/gms/tagmanager/Container$zza;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    }
.end annotation


# instance fields
.field private final zzavt:Ljava/lang/String;

.field private final zzavu:Lcom/google/android/gms/tagmanager/DataLayer;

.field private zzavv:Lcom/google/android/gms/tagmanager/zzfb;

.field private zzavw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzavx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzavy:J

.field private volatile zzavz:Ljava/lang/String;

.field private final zzqx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzl;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavz:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzqx:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzavu:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzavt:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzavy:J

    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzl;->zzpv:Lcom/google/android/gms/internal/measurement/zzi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Lcom/google/android/gms/internal/measurement/zzi;)Lcom/google/android/gms/internal/measurement/zzwf;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzwj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/measurement/zzwf;)V

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzl;->zzpu:[Lcom/google/android/gms/internal/measurement/zzk;

    if-eqz v0, :cond_2

    iget-object v1, p6, Lcom/google/android/gms/internal/measurement/zzl;->zzpu:[Lcom/google/android/gms/internal/measurement/zzk;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not loading resource: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because it is invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzfb;->zzf(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzwf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavz:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzqx:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzavu:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzavt:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavy:J

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/measurement/zzwf;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzwf;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwf;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavz:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzof()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzog()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzbak:Lcom/google/android/gms/tagmanager/zzeh$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzeh$zza;->equals(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/android/gms/tagmanager/zzdq;

    invoke-direct {v6}, Lcom/google/android/gms/tagmanager/zzdq;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzqx:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->zzavu:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v4, Lcom/google/android/gms/tagmanager/Container$zza;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/Container$zza;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    new-instance v5, Lcom/google/android/gms/tagmanager/Container$zzb;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/Container$zzb;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/zzfb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzwf;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/tagmanager/zzfb;)V

    const-string v0, "_gtm.loadEventEnabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavu:Lcom/google/android/gms/tagmanager/DataLayer;

    const-string v1, "gtm.load"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtm.id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/Container;->zzavt:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/tagmanager/zzfb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavv:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzmj()Lcom/google/android/gms/tagmanager/zzfb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavv:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getBoolean called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzdj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzg(Lcom/google/android/gms/internal/measurement/zzm;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Calling getBoolean() threw an exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavt:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getDouble called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpf()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzdj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzf(Lcom/google/android/gms/internal/measurement/zzm;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Calling getDouble() threw an exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpf()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastRefreshTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavy:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getLong called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpe()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzdj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zze(Lcom/google/android/gms/internal/measurement/zzm;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Calling getLong() threw an exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpe()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getString called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzdj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzm;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Calling getString() threw an exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzpi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Macro handler must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavv:Lcom/google/android/gms/tagmanager/zzfb;

    return-void
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zzcm(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzcn(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzco(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzmj()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzco(Ljava/lang/String;)V

    return-void
.end method

.method public final zzmi()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzavz:Ljava/lang/String;

    return-object v0
.end method
