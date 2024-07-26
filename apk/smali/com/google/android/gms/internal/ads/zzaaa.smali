.class final Lcom/google/android/gms/internal/ads/zzaaa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzbvx:Lcom/google/android/gms/internal/ads/zzzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzbvx:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzbvx:Lcom/google/android/gms/internal/ads/zzzy;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    return-void
.end method
