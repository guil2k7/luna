.class final Lcom/google/android/gms/internal/measurement/zzij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqm:Lcom/google/android/gms/internal/measurement/zzih;

.field private final synthetic zzaqn:Lcom/google/android/gms/internal/measurement/zzig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzih;Lcom/google/android/gms/internal/measurement/zzig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqm:Lcom/google/android/gms/internal/measurement/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqn:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqm:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqn:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Lcom/google/android/gms/internal/measurement/zzih;Lcom/google/android/gms/internal/measurement/zzig;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqm:Lcom/google/android/gms/internal/measurement/zzih;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzih;->zzaqd:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzaqm:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdy;->zzga()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzik;->zzb(Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void
.end method
