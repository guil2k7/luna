.class Lcom/nvidia/devtech/NvEventQueueActivity$3;
.super Ljava/lang/Object;
.source "NvEventQueueActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;->systemInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nvidia/devtech/NvEventQueueActivity;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewWidth:I

    .line 975
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewHeight:I

    .line 976
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 956
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewIsActive:Z

    .line 957
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewCreated:Z

    if-nez v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewCreated:Z

    .line 969
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->InVideview:Z

    .line 970
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewIsActive:Z

    .line 982
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieIsStopping:Z

    .line 983
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->InVideview:Z

    .line 984
    return-void
.end method
