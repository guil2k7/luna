.class Lcom/wardrumstudios/utils/WarMedia$11$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$11;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wardrumstudios/utils/WarMedia$11;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "KeyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1143
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    if-eqz v0, :cond_0

    .line 1144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowExitDialog onKey action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IsShowingBackMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KeyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v0, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    if-ne v0, v4, :cond_3

    .line 1146
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1147
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 1157
    :cond_1
    :goto_0
    return v3

    .line 1151
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1153
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput v4, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    goto :goto_0
.end method
