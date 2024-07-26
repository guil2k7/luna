.class final Lcom/google/android/gms/internal/measurement/zzaat;
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


# static fields
.field private static final zzbvp:[I

.field private static final zzbvq:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaat;->zzbvp:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabr;->zzvg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaat;->zzbvq:Lsun/misc/Unsafe;

    return-void
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzaav;Lcom/google/android/gms/internal/measurement/zzaae;Lcom/google/android/gms/internal/measurement/zzabo;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzaal;)Lcom/google/android/gms/internal/measurement/zzaat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzaao;",
            "Lcom/google/android/gms/internal/measurement/zzaav;",
            "Lcom/google/android/gms/internal/measurement/zzaae;",
            "Lcom/google/android/gms/internal/measurement/zzabo",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/zzzo",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/zzaal;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzaat",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzaaz;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
