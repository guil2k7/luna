.class Lcom/wardrumstudios/utils/NDKHelper$1;
.super Ljava/lang/Object;
.source "NDKHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/NDKHelper;->runOnUIThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/NDKHelper;

.field final synthetic val$p:J


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/NDKHelper;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/NDKHelper;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/wardrumstudios/utils/NDKHelper$1;->this$0:Lcom/wardrumstudios/utils/NDKHelper;

    iput-wide p2, p0, Lcom/wardrumstudios/utils/NDKHelper$1;->val$p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wardrumstudios/utils/NDKHelper$1;->this$0:Lcom/wardrumstudios/utils/NDKHelper;

    iget-wide v2, p0, Lcom/wardrumstudios/utils/NDKHelper$1;->val$p:J

    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/NDKHelper;->RunOnUiThreadHandler(J)V

    .line 229
    return-void
.end method
