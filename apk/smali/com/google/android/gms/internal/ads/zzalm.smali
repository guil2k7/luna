.class final Lcom/google/android/gms/internal/ads/zzalm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzcst:Lcom/google/android/gms/internal/ads/zzall;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzall;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzcst:Lcom/google/android/gms/internal/ads/zzall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzcst:Lcom/google/android/gms/internal/ads/zzall;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzall;->val$context:Landroid/content/Context;

    const-string v1, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
