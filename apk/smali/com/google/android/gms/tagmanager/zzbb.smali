.class public final Lcom/google/android/gms/tagmanager/zzbb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbx;


# static fields
.field private static final zzavh:Ljava/lang/Object;

.field private static zzaxy:Lcom/google/android/gms/tagmanager/zzbb;


# instance fields
.field private zzawl:Lcom/google/android/gms/tagmanager/zzej;

.field private zzaxz:Lcom/google/android/gms/tagmanager/zzby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzavh:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbz;->zzo(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzfl;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzfl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Lcom/google/android/gms/tagmanager/zzby;Lcom/google/android/gms/tagmanager/zzej;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzby;Lcom/google/android/gms/tagmanager/zzej;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzaxz:Lcom/google/android/gms/tagmanager/zzby;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzawl:Lcom/google/android/gms/tagmanager/zzej;

    return-void
.end method

.method public static zzi(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbx;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbb;->zzavh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzaxy:Lcom/google/android/gms/tagmanager/zzbb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzaxy:Lcom/google/android/gms/tagmanager/zzbb;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzaxy:Lcom/google/android/gms/tagmanager/zzbb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzcy(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzawl:Lcom/google/android/gms/tagmanager/zzej;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzej;->zzes()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaa(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzaxz:Lcom/google/android/gms/tagmanager/zzby;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzby;->zzdd(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
