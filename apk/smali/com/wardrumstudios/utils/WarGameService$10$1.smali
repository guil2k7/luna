.class Lcom/wardrumstudios/utils/WarGameService$10$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarGameService$10;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wardrumstudios/utils/WarGameService$10;

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1252
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarGameService$10;->val$myWarGameService:Lcom/wardrumstudios/utils/WarGameService;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/Invitations;->registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    .line 1254
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/wardrumstudios/utils/GameHelper;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/GameHelper;->hasInvitation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarGameService;->access$000(Lcom/wardrumstudios/utils/WarGameService;)Lcom/wardrumstudios/utils/WarBase;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/games/Games;->setViewForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$10$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$10;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$10;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v2, "SetPopupView IllegalStateException"

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
