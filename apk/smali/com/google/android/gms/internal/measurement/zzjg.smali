.class final synthetic Lcom/google/android/gms/internal/measurement/zzjg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabr:Landroid/app/job/JobParameters;

.field private final zzarg:Lcom/google/android/gms/internal/measurement/zzje;

.field private final zzarj:Lcom/google/android/gms/internal/measurement/zzfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzje;Lcom/google/android/gms/internal/measurement/zzfi;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzarg:Lcom/google/android/gms/internal/measurement/zzje;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzarj:Lcom/google/android/gms/internal/measurement/zzfi;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzabr:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzarg:Lcom/google/android/gms/internal/measurement/zzje;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzarj:Lcom/google/android/gms/internal/measurement/zzfi;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzabr:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzje;->zza(Lcom/google/android/gms/internal/measurement/zzfi;Landroid/app/job/JobParameters;)V

    return-void
.end method
