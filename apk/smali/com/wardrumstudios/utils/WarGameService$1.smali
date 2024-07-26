.class Lcom/wardrumstudios/utils/WarGameService$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;-><init>(Lcom/wardrumstudios/utils/WarBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;

.field final synthetic val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;Lcom/wardrumstudios/utils/WarGameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarBase;->AddLifecycleListener(Lcom/wardrumstudios/utils/WarActivityLifecycleListener;)V

    .line 153
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 154
    .local v0, "result":I
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGooglePlayServicesAvailable failed  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 155
    if-eq v0, v4, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGooglePlayServicesAvailable failed  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->setRequestedClients(I)V

    .line 165
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarGameService;->getGameHelper()Lcom/wardrumstudios/utils/GameHelper;

    move-result-object v2

    iput-object v2, v1, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    .line 166
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    iput-boolean v2, v1, Lcom/wardrumstudios/utils/GameHelper;->mDebugLog:Z

    .line 167
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/GameHelper;->setup(Lcom/wardrumstudios/utils/GameHelper$GameHelperListener;)V

    .line 172
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->onStart()V

    .line 173
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    goto :goto_0
.end method
