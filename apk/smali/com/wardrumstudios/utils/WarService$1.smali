.class Lcom/wardrumstudios/utils/WarService$1;
.super Ljava/lang/Object;
.source "WarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarService;->LocalPushNotification(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarService;

.field final synthetic val$delay:I

.field final synthetic val$id:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarService;ILandroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarService;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarService$1;->this$0:Lcom/wardrumstudios/utils/WarService;

    iput p2, p0, Lcom/wardrumstudios/utils/WarService$1;->val$id:I

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarService$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/wardrumstudios/utils/WarService$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 153
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService$1;->this$0:Lcom/wardrumstudios/utils/WarService;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/wardrumstudios/utils/WarService$1;->val$id:I

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarService$1;->val$intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 155
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService$1;->this$0:Lcom/wardrumstudios/utils/WarService;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 156
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v3, p0, Lcom/wardrumstudios/utils/WarService$1;->val$delay:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 158
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService$1;->this$0:Lcom/wardrumstudios/utils/WarService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wardrumstudios/utils/WarService;->done:Z

    .line 159
    return-void
.end method
