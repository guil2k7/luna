.class Lcom/wardrumstudios/utils/WarAdMob$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "WarAdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarAdMob;-><init>(Lcom/wardrumstudios/utils/WarBase;Landroid/view/SurfaceView;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 60
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onAdClosed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-static {v0, v2}, Lcom/wardrumstudios/utils/WarAdMob;->access$002(Lcom/wardrumstudios/utils/WarAdMob;I)I

    .line 65
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarAdMob;->access$100(Lcom/wardrumstudios/utils/WarAdMob;)V

    .line 66
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    invoke-static {v0, v2}, Lcom/wardrumstudios/utils/WarAdMob;->access$202(Lcom/wardrumstudios/utils/WarAdMob;I)I

    .line 67
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToLoad errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarAdMob;->access$202(Lcom/wardrumstudios/utils/WarAdMob;I)I

    .line 79
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onAdLoaded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarAdMob$1;->this$0:Lcom/wardrumstudios/utils/WarAdMob;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarAdMob;->access$202(Lcom/wardrumstudios/utils/WarAdMob;I)I

    .line 73
    return-void
.end method
