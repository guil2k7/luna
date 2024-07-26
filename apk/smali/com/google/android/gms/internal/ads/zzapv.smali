.class public final Lcom/google/android/gms/internal/ads/zzapv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzczu:Z

.field private final zzczv:I

.field private final zzczw:I

.field private final zzczx:I

.field private final zzczy:Ljava/lang/String;

.field private final zzczz:I

.field private final zzdaa:I

.field private final zzdab:I

.field private final zzdac:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :goto_1
    const-string v0, "aggressive_media_codec_release"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzavl:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczu:Z

    const-string v0, "byte_buffer_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzauv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczv:I

    const-string v0, "exo_cache_buffer_size"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzauz:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczw:I

    const-string v0, "exo_connect_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzaur:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczx:I

    const-string v0, "exo_player_version"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzauq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczy:Ljava/lang/String;

    const-string v0, "exo_read_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzaus:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzczz:I

    const-string v0, "load_check_interval_bytes"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzaut:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzdaa:I

    const-string v0, "player_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzauu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzdab:I

    const-string v0, "use_cache_data_source"

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzbdr:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->zzdac:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzna",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzna",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzna",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
