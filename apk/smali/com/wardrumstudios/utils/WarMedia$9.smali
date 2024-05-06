.class Lcom/wardrumstudios/utils/WarMedia$9;
.super Landroid/content/BroadcastReceiver;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver WarMedia "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    :cond_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 793
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "BroadcastReceiver ACTION_SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v5}, Lcom/wardrumstudios/utils/WarMedia;->access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 832
    :cond_2
    :goto_0
    return-void

    .line 795
    :cond_3
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 796
    :cond_4
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    :cond_5
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 799
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    if-nez v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inKeyguardRestrictedInputMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 800
    :cond_6
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 803
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v6}, Lcom/wardrumstudios/utils/WarMedia;->access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 804
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarMedia;->access$500(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v5}, Lcom/wardrumstudios/utils/WarMedia;->access$502(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 806
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarMedia;->access$600(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 807
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    .line 808
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v6}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 810
    :cond_7
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-nez v2, :cond_2

    .line 812
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v2, v5}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    goto/16 :goto_0

    .line 826
    .end local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 827
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarMedia;->NetworkChange()V

    goto/16 :goto_0

    .line 829
    :cond_9
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v2, :cond_2

    .line 830
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
