.class public final Lcom/google/android/gms/internal/ads/zzasj;
.super Lcom/google/android/gms/internal/ads/zzus;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasc;
.implements Lcom/google/android/gms/internal/ads/zzasx;
.implements Lcom/google/android/gms/internal/ads/zzasz;
.implements Lcom/google/android/gms/internal/ads/zzata;
.implements Lcom/google/android/gms/internal/ads/zzatb;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus",
        "<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzasc;",
        "Lcom/google/android/gms/internal/ads/zzasx;",
        "Lcom/google/android/gms/internal/ads/zzasz;",
        "Lcom/google/android/gms/internal/ads/zzata;",
        "Lcom/google/android/gms/internal/ads/zzatb;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzaek:Z

.field private zzapt:Lcom/google/android/gms/internal/ads/zzjd;

.field private zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

.field private zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

.field private zzbmu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private zzbmw:Lcom/google/android/gms/ads/internal/zzx;

.field private zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

.field private zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

.field private zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

.field private zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field private zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

.field private zzdbs:Lcom/google/android/gms/internal/ads/zzase;

.field private zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

.field private zzdbu:Z

.field private zzdbv:Z

.field private zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzdby:Z

.field private final zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzdca:Lcom/google/android/gms/internal/ads/zzasg;

.field private zzdcb:Z

.field private zzdcc:Z

.field private zzdcd:I

.field private zzdce:Landroid/view/View$OnAttachStateChangeListener;

.field private zzxd:Lcom/google/android/gms/internal/ads/zzait;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzua()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzmw;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmw;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzasj;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;ZLcom/google/android/gms/internal/ads/zzaak;Lcom/google/android/gms/internal/ads/zzaab;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;ZLcom/google/android/gms/internal/ads/zzaak;Lcom/google/android/gms/internal/ads/zzaab;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzaek:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V
    .locals 4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzait;->zzph()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzait;->zzr(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzait;->zzph()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzasl;-><init>(Lcom/google/android/gms/internal/ads/zzasj;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zznf()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzei()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzait;->zzcf(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzasj;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x2710

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljava/net/URL;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move v0, v4

    move-object v6, v1

    :goto_0
    add-int/lit8 v5, v0, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_8

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->zzab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid protocol."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v4, v0}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzamy;-><init>()V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_7

    const/16 v1, 0x190

    if-ge v2, v1, :cond_7

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v0, "Protocol is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_3
    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v1, "Unsupported scheme: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v6, "Redirecting to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v5

    move-object v6, v2

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->zzb(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects (20)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzuy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final zzvd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcb:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcd:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcc:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcc:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzasd;->zze(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzup()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic getReference()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    return-object v0
.end method

.method public final reset()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzait;->zzpj()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzuy()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzus;->reset()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzaek:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdby:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaak;->zzc(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaab;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuo()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdca:Lcom/google/android/gms/internal/ads/zzasg;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;ZLcom/google/android/gms/ads/internal/gmsg/zzz;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaam;Lcom/google/android/gms/internal/ads/zzait;)V
    .locals 13
    .param p7    # Lcom/google/android/gms/ads/internal/gmsg/zzz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/internal/ads/zzait;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p8, :cond_3

    new-instance v10, Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-direct {v10, v1, v0, v2}, Lcom/google/android/gms/ads/internal/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzait;Lcom/google/android/gms/internal/ads/zzael;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    move-object/from16 v0, p9

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaam;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzayf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/adMetadata"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zza;

    invoke-direct {v2, p2}, Lcom/google/android/gms/ads/internal/gmsg/zza;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_0
    const-string v1, "/appEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzc;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzd;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/backButton"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblx:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/refresh"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbly:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/canOpenURLs"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblo:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/canOpenIntents"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblp:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/click"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblq:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/close"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblr:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/customClose"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbls:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmb:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmd:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/delayPageClosed"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbme:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/getLocationInfo"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmf:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/httpTrack"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblt:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblu:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/mraid"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzac;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    move-object/from16 v0, p9

    invoke-direct {v2, v10, v3, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzac;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzaam;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/mraidLoaded"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v12, "/open"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzad;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v4

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    move-object/from16 v5, p5

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/ads/internal/gmsg/zzad;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaab;)V

    invoke-virtual {p0, v12, v1}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/precache"

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaql;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/touch"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblw:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblz:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbma:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/logScionEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzab;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzab;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_1
    if-eqz p7, :cond_2

    const-string v1, "/setInterstitialProperties"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzy;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzy;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzz;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzus;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iput-object v10, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    return-void

    :cond_3
    move-object/from16 v10, p8

    goto/16 :goto_0
.end method

.method public final zza(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    goto :goto_0
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v10

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    goto :goto_1
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasu;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzus;->zzf(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v8

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v8

    :goto_2
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzait;->zzcf(Ljava/lang/String;)V

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzci;->zzb(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_7
    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx;->zzcy()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    :goto_4
    move v0, v8

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Unable to append parameter to URL: "

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzx;->zzs(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v1, "AdWebView unable to handle URL: "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public final zzah(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    return-void
.end method

.method public final zzb(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzb(II)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzasu;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzus;->zzf(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzasu;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzase;->zzly()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzvd()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzasu;->zzab:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzait;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mraid.js"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zznk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzawe:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzakk;->zzf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzawd:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzawc:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzasj;->zze(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasu;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhl;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeq()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzhi()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzhj()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v2

    const-string v3, "AdWebViewClient.interceptRequest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzazn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzasj;->zze(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final zzfz()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzaek:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zznk()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbu:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzaek:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzask;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzask;-><init>(Lcom/google/android/gms/internal/ads/zzasj;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzut()Lcom/google/android/gms/ads/internal/zzx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    return-object v0
.end method

.method public final zzuu()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbv:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzuv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzuw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzux()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdby:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzuz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzuy()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzasj;Lcom/google/android/gms/internal/ads/zzait;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final zzva()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasj;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdby:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcd:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzvd()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzvb()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcd:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzvd()V

    return-void
.end method

.method public final zzvc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdcc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;->zzvd()V

    return-void
.end method

.method public final zzve()Lcom/google/android/gms/internal/ads/zzasg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdca:Lcom/google/android/gms/internal/ads/zzasg;

    return-object v0
.end method

.method public final zzvf()Lcom/google/android/gms/internal/ads/zzait;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    return-object v0
.end method

.method final synthetic zzvg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznk()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasf;->zzdb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    :cond_1
    return-void
.end method
