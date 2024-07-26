.class public Lcom/google/android/gms/internal/measurement/zzgn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhk;


# static fields
.field private static volatile zzaoc:Lcom/google/android/gms/internal/measurement/zzgn;


# instance fields
.field private final clock:Lcom/google/android/gms/common/util/Clock;

.field private final zzaga:J

.field private final zzahs:Lcom/google/android/gms/internal/measurement/zzee;

.field private final zzaod:Ljava/lang/String;

.field private final zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

.field private final zzaof:Lcom/google/android/gms/internal/measurement/zzft;

.field private final zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

.field private final zzaoi:Lcom/google/android/gms/internal/measurement/zzjj;

.field private final zzaoj:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzaok:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzaol:Lcom/google/android/gms/internal/measurement/zzkd;

.field private final zzaom:Lcom/google/android/gms/internal/measurement/zzfg;

.field private final zzaon:Lcom/google/android/gms/internal/measurement/zzih;

.field private final zzaoo:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final zzaop:Lcom/google/android/gms/internal/measurement/zzdu;

.field private zzaoq:Lcom/google/android/gms/internal/measurement/zzfe;

.field private zzaor:Lcom/google/android/gms/internal/measurement/zzik;

.field private zzaos:Lcom/google/android/gms/internal/measurement/zzer;

.field private zzaot:Lcom/google/android/gms/internal/measurement/zzfd;

.field private zzaou:Lcom/google/android/gms/internal/measurement/zzfz;

.field private zzaov:Ljava/lang/Boolean;

.field private zzaow:J

.field private zzaox:I

.field private zzaoy:I

.field private final zzqx:Landroid/content/Context;

.field private zzvn:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzvn:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhl;->zzqx:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzee;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzee;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzez;->zza(Lcom/google/android/gms/internal/measurement/zzee;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhl;->zzqx:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhl;->zzaod:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaod:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwx;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzeh;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzft;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaof:Lcom/google/android/gms/internal/measurement/zzft;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaol:Lcom/google/android/gms/internal/measurement/zzkd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaom:Lcom/google/android/gms/internal/measurement/zzfg;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdu;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaop:Lcom/google/android/gms/internal/measurement/zzdu;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaon:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhm;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoo:Lcom/google/android/gms/internal/measurement/zzhm;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoj:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaok:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjj;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoi:Lcom/google/android/gms/internal/measurement/zzjj;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfy()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzhm;->zzapl:Lcom/google/android/gms/internal/measurement/zzif;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzif;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzhm;Lcom/google/android/gms/internal/measurement/zzhn;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzhm;->zzapl:Lcom/google/android/gms/internal/measurement/zzif;

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzhm;->zzapl:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzhm;->zzapl:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Lcom/google/android/gms/internal/measurement/zzhl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoc:Lcom/google/android/gms/internal/measurement/zzgn;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoc:Lcom/google/android/gms/internal/measurement/zzgn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/measurement/zzhl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>(Lcom/google/android/gms/internal/measurement/zzhl;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoc:Lcom/google/android/gms/internal/measurement/zzgn;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoc:Lcom/google/android/gms/internal/measurement/zzgn;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzdz;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdz;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhl;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhi;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhj;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhn()Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaos:Lcom/google/android/gms/internal/measurement/zzer;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfd;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaot:Lcom/google/android/gms/internal/measurement/zzfd;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoq:Lcom/google/android/gms/internal/measurement/zzfe;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdz;->zzm()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaor:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaol:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaof:Lcom/google/android/gms/internal/measurement/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgm()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaou:Lcom/google/android/gms/internal/measurement/zzfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaot:Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdz;->zzgm()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoy:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzvn:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final zzch()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzvn:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzch()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzho()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhp()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzg(Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected final start()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzaly:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Persisting first open"

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzaly:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzkg()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzx(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "App is missing INTERNET permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzx(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhu()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zza(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzft;->zzjj()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzft;->zzbt(Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfy()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzft;->zzama:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy;->zzjq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzbu(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzft;->zzjp()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzho()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    if-nez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzh(Z)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfy()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzkm()V

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzga()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzik;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzft;->zzjm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaor:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzik;->disconnect()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaor:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzik;->zzdf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzft;->zzbt(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzaly:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzama:Lcom/google/android/gms/internal/measurement/zzfy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy;->zzbv(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzdz;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzhj;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaox:I

    return-void
.end method

.method public final zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method final zzfu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzfv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    return-void
.end method

.method public final zzfx()Lcom/google/android/gms/internal/measurement/zzdu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaop:Lcom/google/android/gms/internal/measurement/zzdu;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaop:Lcom/google/android/gms/internal/measurement/zzdu;

    return-object v0
.end method

.method public final zzfy()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoo:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoo:Lcom/google/android/gms/internal/measurement/zzhm;

    return-object v0
.end method

.method public final zzfz()Lcom/google/android/gms/internal/measurement/zzfd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaot:Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaot:Lcom/google/android/gms/internal/measurement/zzfd;

    return-object v0
.end method

.method public final zzga()Lcom/google/android/gms/internal/measurement/zzik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaor:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaor:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzgb()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaon:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaon:Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public final zzgc()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoq:Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoq:Lcom/google/android/gms/internal/measurement/zzfe;

    return-object v0
.end method

.method public final zzgd()Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoi:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoi:Lcom/google/android/gms/internal/measurement/zzjj;

    return-object v0
.end method

.method public final zzge()Lcom/google/android/gms/internal/measurement/zzer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaos:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaos:Lcom/google/android/gms/internal/measurement/zzer;

    return-object v0
.end method

.method public final zzgf()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaom:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaom:Lcom/google/android/gms/internal/measurement/zzfg;

    return-object v0
.end method

.method public final zzgg()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaol:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaol:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzgh()Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

    return-object v0
.end method

.method public final zzgi()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzgj()Lcom/google/android/gms/internal/measurement/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaof:Lcom/google/android/gms/internal/measurement/zzft;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzhi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaof:Lcom/google/android/gms/internal/measurement/zzft;

    return-object v0
.end method

.method public final zzgk()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    return-object v0
.end method

.method public final zzgl()Lcom/google/android/gms/internal/measurement/zzee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    return-object v0
.end method

.method public final zzjy()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaog:Lcom/google/android/gms/internal/measurement/zzfi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzjz()Lcom/google/android/gms/internal/measurement/zzfz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaou:Lcom/google/android/gms/internal/measurement/zzfz;

    return-object v0
.end method

.method final zzka()Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoh:Lcom/google/android/gms/internal/measurement/zzgi;

    return-object v0
.end method

.method public final zzkb()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoj:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzkc()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaok:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzkd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaod:Ljava/lang/String;

    return-object v0
.end method

.method final zzke()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzaly:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaga:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method final zzkf()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoy:I

    return-void
.end method

.method protected final zzkg()Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaow:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaow:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaow:J

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzahs:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaoe:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhu()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzqx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfd;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzck(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaov:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
