.class final Lcom/google/android/gms/internal/measurement/zzhs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaps:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final synthetic zzapv:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzaps:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzapv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzaps:Lcom/google/android/gms/internal/measurement/zzhm;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzapv:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzfv()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdz;->zzch()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v6, "Resetting analytics data (FE)"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zzgd()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzkv()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd;->zzah()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzaly:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_0
    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/zzhm;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->isEnabled()Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzho()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v5

    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzh(Z)V

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zzga()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzik;->resetAnalyticsData()V

    if-nez v4, :cond_3

    :goto_1
    iput-boolean v1, v3, Lcom/google/android/gms/internal/measurement/zzhm;->zzapq:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
