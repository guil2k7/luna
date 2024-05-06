.class public Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;
.super Landroid/view/SurfaceView;
.source "NvEventQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "gSurfaceView"
.end annotation


# instance fields
.field myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method public constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nvidia/devtech/NvEventQueueActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    .line 141
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

    .line 142
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->IsShowingKeyboard:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->imeClosed()V

    .line 150
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->IsShowingKeyboard:Z

    .line 153
    :cond_0
    return v1
.end method
