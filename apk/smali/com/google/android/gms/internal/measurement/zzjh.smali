.class final Lcom/google/android/gms/internal/measurement/zzjh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzabs:Ljava/lang/Runnable;

.field private final synthetic zzark:Lcom/google/android/gms/internal/measurement/zzjt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzje;Lcom/google/android/gms/internal/measurement/zzjt;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzark:Lcom/google/android/gms/internal/measurement/zzjt;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzabs:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzark:Lcom/google/android/gms/internal/measurement/zzjt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzark:Lcom/google/android/gms/internal/measurement/zzjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzabs:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzark:Lcom/google/android/gms/internal/measurement/zzjt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzle()V

    return-void
.end method
