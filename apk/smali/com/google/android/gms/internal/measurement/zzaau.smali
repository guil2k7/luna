.class final Lcom/google/android/gms/internal/measurement/zzaau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzaba",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzbvr:Lcom/google/android/gms/internal/measurement/zzaaq;

.field private final zzbvs:Lcom/google/android/gms/internal/measurement/zzabo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzabo",
            "<**>;"
        }
    .end annotation
.end field

.field private final zzbvt:Z

.field private final zzbvu:Lcom/google/android/gms/internal/measurement/zzzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzzo",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzabo;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzaaq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzabo",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/zzzo",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/zzaaq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvs:Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzaaq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvt:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvu:Lcom/google/android/gms/internal/measurement/zzzo;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvr:Lcom/google/android/gms/internal/measurement/zzaaq;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzabo;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzaaq;)Lcom/google/android/gms/internal/measurement/zzaau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzabo",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/zzzo",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/zzaaq;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzaau",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaau;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaau;-><init>(Lcom/google/android/gms/internal/measurement/zzabo;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzaaq;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvs:Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvs:Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzabo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvu:Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzo;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvu:Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzzo;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvs:Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvt:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaau;->zzbvu:Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzzo;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
