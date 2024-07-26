.class public abstract Lcom/google/android/gms/internal/measurement/zzacd;
.super Lcom/google/android/gms/internal/measurement/zzacj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/zzacd",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/measurement/zzacj;"
    }
.end annotation


# instance fields
.field protected zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacj;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzacj;->zzvu()Lcom/google/android/gms/internal/measurement/zzacj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacd;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzach;->zza(Lcom/google/android/gms/internal/measurement/zzacd;Lcom/google/android/gms/internal/measurement/zzacd;)V

    return-object v0
.end method

.method protected zza()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacf;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzacf;->zzau(I)Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacg;->zza()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzace;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzace",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzace;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzacf;->zzat(I)Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzacg;->zzb(Lcom/google/android/gms/internal/measurement/zzace;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzacb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacf;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzacf;->zzau(I)Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzacg;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzaca;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzaca;->zzak(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaca;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzaca;->zzc(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacl;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/measurement/zzacl;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzacf;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzacg;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/measurement/zzacf;->zza(ILcom/google/android/gms/internal/measurement/zzacg;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzacg;->zza(Lcom/google/android/gms/internal/measurement/zzacl;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacd;->zzbzd:Lcom/google/android/gms/internal/measurement/zzacf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacf;->zzat(I)Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v0

    goto :goto_1
.end method

.method public final synthetic zzvu()Lcom/google/android/gms/internal/measurement/zzacj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacd;

    return-object v0
.end method
