.class Lcom/nvidia/devtech/NvEventQueueActivity$1;
.super Ljava/lang/Object;
.source "NvEventQueueActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;->DoResumeEvent()V
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
    .line 810
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 812
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->waitingForResume:Z

    .line 813
    :goto_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/nvidia/devtech/NvEventQueueActivity;->mSleep(J)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->waitingForResume:Z

    .line 819
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeEvent()V

    .line 820
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$1;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    .line 822
    return-void
.end method
