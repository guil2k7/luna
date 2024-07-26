.class final Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzare:Lcom/google/android/gms/internal/measurement/zziy;

.field private final synthetic zzarf:Lcom/google/android/gms/internal/measurement/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziy;Lcom/google/android/gms/internal/measurement/zzfa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzarf:Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zziy;->zza(Lcom/google/android/gms/internal/measurement/zziy;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziy;->zzaqv:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzik;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziy;->zzaqv:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzare:Lcom/google/android/gms/internal/measurement/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziy;->zzaqv:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzarf:Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzik;->zza(Lcom/google/android/gms/internal/measurement/zzfa;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
