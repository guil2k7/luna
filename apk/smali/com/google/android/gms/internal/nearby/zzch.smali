.class final Lcom/google/android/gms/internal/nearby/zzch;
.super Lcom/google/android/gms/internal/nearby/zzcw;


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic zzcy:J

.field private final synthetic zzcz:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzca;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzch;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzch;->zzcy:J

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzch;->zzcz:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/nearby/zzcw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzcb;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzch;->val$name:Ljava/lang/String;

    const-string v2, "__LEGACY_SERVICE_ID__"

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzch;->zzcy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzch;->zzcz:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;-><init>()V

    sget-object v6, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->setStrategy(Lcom/google/android/gms/nearby/connection/Strategy;)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->build()Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzx;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdu;

    new-instance v7, Lcom/google/android/gms/internal/nearby/zzga;

    invoke-direct {v7}, Lcom/google/android/gms/internal/nearby/zzga;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/nearby/zzbc;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/nearby/zzbc;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/nearby/zzga;->zza(Lcom/google/android/gms/internal/nearby/zzec;)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/nearby/zzga;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzga;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/nearby/zzga;->zzd(J)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzag;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/nearby/zzag;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzga;->zza(Lcom/google/android/gms/internal/nearby/zzdd;)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/nearby/zzga;->zzg(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/internal/nearby/zzga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzga;->zzv()Lcom/google/android/gms/internal/nearby/zzfy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nearby/zzdu;->zza(Lcom/google/android/gms/internal/nearby/zzfy;)V

    return-void
.end method
