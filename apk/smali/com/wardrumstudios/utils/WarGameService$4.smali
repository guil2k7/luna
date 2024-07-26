.class Lcom/wardrumstudios/utils/WarGameService$4;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->processPendingResult(ILcom/google/android/gms/common/api/PendingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;

.field final synthetic val$qQueryId:I


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGameService;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput p2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$qQueryId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 742
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;

    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$4;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)V
    .locals 3
    .param p1, "loadScoresResult"    # Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;

    .prologue
    .line 745
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1, p1}, Lcom/wardrumstudios/utils/WarGameService;->extractScores(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)Ljava/util/List;

    move-result-object v0

    .line 746
    .local v0, "leaderboardScores":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget v2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$qQueryId:I

    invoke-virtual {v1, v2, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifyScoresLoaded(ILjava/util/List;)V

    .line 747
    return-void
.end method
