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
    .line 85
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarBase;->AddLifecycleListener(Lcom/wardrumstudios/utils/WarActivityLifecycleListener;)V

    .line 91
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 92
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->setRequestedClients(I)V

    .line 93
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    .line 98
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarGameService;->onStart()V

    .line 99
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$1;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wardrumstudios/utils/WarGameService;->creatingGamehelper:Z

    .line 100
    return-void
.end method
