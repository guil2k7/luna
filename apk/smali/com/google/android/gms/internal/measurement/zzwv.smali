.class final Lcom/google/android/gms/internal/measurement/zzwv;
.super Landroid/database/ContentObserver;


# instance fields
.field private final synthetic zzbpf:Lcom/google/android/gms/internal/measurement/zzwu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzwu;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwv;->zzbpf:Lcom/google/android/gms/internal/measurement/zzwu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwv;->zzbpf:Lcom/google/android/gms/internal/measurement/zzwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwu;->zzsi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwv;->zzbpf:Lcom/google/android/gms/internal/measurement/zzwu;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwu;->zza(Lcom/google/android/gms/internal/measurement/zzwu;)V

    return-void
.end method
