.class final synthetic Lcom/google/android/gms/internal/ads/zzph;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasd;


# instance fields
.field private final zzbjk:Lcom/google/android/gms/internal/ads/zzpg;

.field private final zzbjl:Ljava/util/Map;

.field private final zzbjm:Lcom/google/android/gms/internal/ads/zzacm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpg;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzacm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjk:Lcom/google/android/gms/internal/ads/zzpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjl:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjm:Lcom/google/android/gms/internal/ads/zzacm;

    return-void
.end method


# virtual methods
.method public final zze(Z)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjk:Lcom/google/android/gms/internal/ads/zzpg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjl:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjm:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzpg;->zzbjj:Lcom/google/android/gms/internal/ads/zzpf;

    const-string v4, "id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Lcom/google/android/gms/internal/ads/zzpf;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "messageType"

    const-string v4, "htmlLoaded"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpg;->zzbjj:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzb(Lcom/google/android/gms/internal/ads/zzpf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendMessageToNativeJs"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzacm;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
