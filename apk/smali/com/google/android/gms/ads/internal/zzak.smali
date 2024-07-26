.class public final Lcom/google/android/gms/ads/internal/zzak;
.super Lcom/google/android/gms/internal/ads/zzko;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzwc:Lcom/google/android/gms/ads/internal/zzw;

.field private final zzwh:Lcom/google/android/gms/internal/ads/zzxn;

.field private zzxs:Lcom/google/android/gms/internal/ads/zzkh;

.field private zzxx:Lcom/google/android/gms/internal/ads/zzjn;

.field private zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzyb:Lcom/google/android/gms/internal/ads/zzpl;

.field private zzyd:Lcom/google/android/gms/internal/ads/zzlg;

.field private final zzye:Ljava/lang/String;

.field private final zzyf:Lcom/google/android/gms/internal/ads/zzang;

.field private zzyk:Lcom/google/android/gms/internal/ads/zzqw;

.field private zzyl:Lcom/google/android/gms/internal/ads/zzrl;

.field private zzym:Lcom/google/android/gms/internal/ads/zzqz;

.field private zzyn:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrc;",
            ">;"
        }
    .end annotation
.end field

.field private zzyo:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrf;",
            ">;"
        }
    .end annotation
.end field

.field private zzyp:Lcom/google/android/gms/internal/ads/zzri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzko;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzye:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzak;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyn:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzak;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyk:Lcom/google/android/gms/internal/ads/zzqw;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzym:Lcom/google/android/gms/internal/ads/zzqz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyp:Lcom/google/android/gms/internal/ads/zzri;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzxx:Lcom/google/android/gms/internal/ads/zzjn;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzrl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyl:Lcom/google/android/gms/internal/ads/zzrl;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzrc;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzlg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzyd:Lcom/google/android/gms/internal/ads/zzlg;

    return-void
.end method

.method public final zzdh()Lcom/google/android/gms/internal/ads/zzkk;
    .locals 18

    new-instance v1, Lcom/google/android/gms/ads/internal/zzah;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzak;->zzye:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzak;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzak;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyk:Lcom/google/android/gms/internal/ads/zzqw;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyl:Lcom/google/android/gms/internal/ads/zzrl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzak;->zzym:Lcom/google/android/gms/internal/ads/zzqz;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyn:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyd:Lcom/google/android/gms/internal/ads/zzlg;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/zzak;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzak;->zzyp:Lcom/google/android/gms/internal/ads/zzri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzxx:Lcom/google/android/gms/internal/ads/zzjn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/ads/internal/zzah;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/zzqz;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/ads/zzpl;Lcom/google/android/gms/internal/ads/zzlg;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    return-object v1
.end method
