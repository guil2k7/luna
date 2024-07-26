.class Lcom/wardrumstudios/utils/WarGameService$10;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->SetPopupView()V
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
    .line 1246
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$10;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarBase;->mSleep(J)V

    .line 1249
    new-instance v0, Lcom/wardrumstudios/utils/WarGameService$10$1;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarGameService$10$1;-><init>(Lcom/wardrumstudios/utils/WarGameService$10;)V

    .line 1265
    .local v0, "myRun":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1266
    return-void
.end method
