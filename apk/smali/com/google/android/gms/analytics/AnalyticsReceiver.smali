.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzqp:Lcom/google/android/gms/internal/measurement/zzct;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzqp:Lcom/google/android/gms/internal/measurement/zzct;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzct;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzqp:Lcom/google/android/gms/internal/measurement/zzct;

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzct;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
