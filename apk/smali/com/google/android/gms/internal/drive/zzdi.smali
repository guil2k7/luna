.class final Lcom/google/android/gms/internal/drive/zzdi;
.super Ljava/lang/Object;


# instance fields
.field private zzge:Lcom/google/android/gms/drive/events/OnChangeListener;

.field private zzgf:Lcom/google/android/gms/internal/drive/zzee;

.field private zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/OnChangeListener;Lcom/google/android/gms/drive/DriveId;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, p3}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzge:Lcom/google/android/gms/drive/events/OnChangeListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzk:Lcom/google/android/gms/drive/DriveId;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzch;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzdj;->zza(Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/drive/events/ChangeListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/drive/zzee;-><init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgf:Lcom/google/android/gms/internal/drive/zzee;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgf:Lcom/google/android/gms/internal/drive/zzee;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/drive/zzee;->zzf(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzdi;)Lcom/google/android/gms/internal/drive/zzee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgf:Lcom/google/android/gms/internal/drive/zzee;

    return-object v0
.end method
