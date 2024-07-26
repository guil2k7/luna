.class final synthetic Lcom/google/android/gms/internal/measurement/zzwz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxg;


# instance fields
.field private final zzbpq:Lcom/google/android/gms/internal/measurement/zzwx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwz;->zzbpq:Lcom/google/android/gms/internal/measurement/zzwx;

    return-void
.end method


# virtual methods
.method public final zzsq()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwz;->zzbpq:Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwx;->zzsp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
