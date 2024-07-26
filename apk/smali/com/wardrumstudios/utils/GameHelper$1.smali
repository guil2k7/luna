.class Lcom/wardrumstudios/utils/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/GameHelper;->showFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/GameHelper;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/GameHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/GameHelper;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 974
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v2, v2, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 975
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v2, v2, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 977
    .local v0, "actResp":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v2, v2, Lcom/wardrumstudios/utils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/wardrumstudios/utils/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 983
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/GameHelper$1;->this$0:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v4, v4, Lcom/wardrumstudios/utils/GameHelper;->mSignInFailureReason:Lcom/wardrumstudios/utils/GameHelper$SignInFailureReason;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
