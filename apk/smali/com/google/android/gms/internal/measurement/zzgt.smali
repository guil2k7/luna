.class final Lcom/google/android/gms/internal/measurement/zzgt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzape:Lcom/google/android/gms/internal/measurement/zzgp;

.field private final synthetic zzapf:Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgp;Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgt;->zzape:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgt;->zzapf:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgt;->zzape:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(Lcom/google/android/gms/internal/measurement/zzgp;)Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgt;->zzape:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(Lcom/google/android/gms/internal/measurement/zzgp;)Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgt;->zzapf:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzf(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-void
.end method
