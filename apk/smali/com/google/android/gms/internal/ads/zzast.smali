.class final Lcom/google/android/gms/internal/ads/zzast;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

.field private final zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

.field private final zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

.field private final zzdff:Lcom/google/android/gms/internal/ads/zzata;

.field private final zzdfg:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasx;Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/zzasz;Lcom/google/android/gms/internal/ads/zzata;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdff:Lcom/google/android/gms/internal/ads/zzata;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzasx;->zza(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result v0

    return v0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatb;->zzd(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzasz;->zzb(Lcom/google/android/gms/internal/ads/zzasu;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdff:Lcom/google/android/gms/internal/ads/zzata;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->zzc(Lcom/google/android/gms/internal/ads/zzasu;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {v0, p2, p4}, Lcom/google/android/gms/internal/ads/zzatc;->zze(ILjava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzatc;->zzb(Landroid/net/http/SslError;)V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result v0

    goto :goto_0
.end method
