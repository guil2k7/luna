.class Lcom/wardrumstudios/utils/WarAdMob$2;
.super Ljava/lang/Object;
.source "WarAdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarAdMob;->ShowInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarAdMob;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarAdMob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarAdMob;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarAdMob$2;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$2;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarAdMob;->access$300(Lcom/wardrumstudios/utils/WarAdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$2;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarAdMob;->access$300(Lcom/wardrumstudios/utils/WarAdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 94
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$2;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarAdMob;->access$002(Lcom/wardrumstudios/utils/WarAdMob;I)I

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Ad not loaded for showing."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$2;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarAdMob;->access$002(Lcom/wardrumstudios/utils/WarAdMob;I)I

    goto :goto_0
.end method
