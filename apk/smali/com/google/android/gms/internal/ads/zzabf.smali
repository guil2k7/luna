.class public abstract Lcom/google/android/gms/internal/ads/zzabf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalc;
.implements Lcom/google/android/gms/internal/ads/zzasd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzalc",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzasd;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzbzd:Lcom/google/android/gms/internal/ads/zzabm;

.field private final zzbze:Lcom/google/android/gms/internal/ads/zzaji;

.field protected zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

.field private zzbzg:Ljava/lang/Runnable;

.field private final zzbzh:Ljava/lang/Object;

.field private zzbzi:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzabm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzd:Lcom/google/android/gms/internal/ads/zzabm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzabf;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakq;->zzi(Lcom/google/android/gms/internal/ads/zzaqw;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzabf;->zzz(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final zze(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzabf;->zzz(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract zzns()V
.end method

.method public final synthetic zznt()Ljava/lang/Object;
    .locals 6

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Lcom/google/android/gms/internal/ads/zzabf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzg:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzg:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbao:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzabf;->zzns()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzz(I)V
    .locals 47

    const/4 v2, -0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaej;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    move/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zztz()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzd:Lcom/google/android/gms/internal/ads/zzabm;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzaef;->zzccy:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcoh:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcob:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfg:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfh:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfi:Lcom/google/android/gms/internal/ads/zzael;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzbsr:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzzl:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcor:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfp:Z

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzzm:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabf;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaej;->zzcfq:Ljava/lang/String;

    move-object/from16 v45, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v45}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzaqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzxq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzxa;JLcom/google/android/gms/internal/ads/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzpb;Lcom/google/android/gms/internal/ads/zzaig;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzael;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhs;ZZZLjava/util/List;ZLjava/lang/String;)V

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method
