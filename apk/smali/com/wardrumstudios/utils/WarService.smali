.class public Lcom/wardrumstudios/utils/WarService;
.super Ljava/lang/Object;
.source "WarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarService$WarNotification;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WarService"

.field public static myWarService:Lcom/wardrumstudios/utils/WarService;


# instance fields
.field public done:Z

.field public icon:I

.field private intentClass:Ljava/lang/String;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mNotifyManager:Landroid/app/NotificationManager;

.field private notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarService$WarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private runOnce:Z

.field public smallicon:I

.field public warActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/wardrumstudios/utils/WarService;->myWarService:Lcom/wardrumstudios/utils/WarService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    .line 93
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarService;->runOnce:Z

    .line 98
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    .line 100
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarService;->jniWarService()V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarService;->intentClass:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    .line 106
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarService;->done:Z

    .line 107
    sput-object p0, Lcom/wardrumstudios/utils/WarService;->myWarService:Lcom/wardrumstudios/utils/WarService;

    .line 109
    :cond_0
    return-void
.end method

.method private CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    const-class v2, Lcom/wardrumstudios/utils/WarServiceNotifyReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "class"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService;->intentClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "icon"

    iget v2, p0, Lcom/wardrumstudios/utils/WarService;->icon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "smallicon"

    iget v2, p0, Lcom/wardrumstudios/utils/WarService;->smallicon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "notifyId"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    return-object v0
.end method

.method private CreateNotification(ILjava/lang/String;Ljava/lang/String;II)Lcom/wardrumstudios/utils/WarService$WarNotification;
    .locals 8
    .param p1, "delay"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "smallicon"    # I

    .prologue
    .line 125
    new-instance v0, Lcom/wardrumstudios/utils/WarService$WarNotification;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/wardrumstudios/utils/WarService$WarNotification;-><init>(Lcom/wardrumstudios/utils/WarService;ILjava/lang/String;Ljava/lang/String;II)V

    .line 126
    .local v0, "newNotification":Lcom/wardrumstudios/utils/WarService$WarNotification;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 127
    .local v7, "id":I
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v0
.end method


# virtual methods
.method public LocalPushNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "delay"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 133
    .local v8, "id":I
    invoke-direct {p0, p2, p3}, Lcom/wardrumstudios/utils/WarService;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 134
    .local v9, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/wardrumstudios/utils/WarService;->icon:I

    iget v5, p0, Lcom/wardrumstudios/utils/WarService;->smallicon:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarService;->CreateNotification(ILjava/lang/String;Ljava/lang/String;II)Lcom/wardrumstudios/utils/WarService$WarNotification;

    move-result-object v11

    .line 136
    .local v11, "notification":Lcom/wardrumstudios/utils/WarService$WarNotification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "key":Ljava/lang/String;
    iget-wide v0, v11, Lcom/wardrumstudios/utils/WarService$WarNotification;->epochTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "alarmSetting":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wardrumstudios/utils/WarService;->smallicon:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wardrumstudios/utils/WarService;->icon:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarService;->intentClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 144
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 145
    .local v7, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarService;->done:Z

    .line 149
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    new-instance v1, Lcom/wardrumstudios/utils/WarService$1;

    invoke-direct {v1, p0, v8, v9, p1}, Lcom/wardrumstudios/utils/WarService$1;-><init>(Lcom/wardrumstudios/utils/WarService;ILandroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    :goto_0
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarService;->done:Z

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public LocalPushNotificationCancel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 169
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 170
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Landroid/app/NotificationManager;->cancelAll()V

    .line 174
    const-string v7, ""

    const-string v8, ""

    invoke-direct {p0, v7, v8}, Lcom/wardrumstudios/utils/WarService;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 175
    .local v6, "tempIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v2, v7, :cond_0

    .line 176
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-static {v7, v2, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 177
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 178
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 179
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 183
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarService;->intentClass:Ljava/lang/String;

    invoke-virtual {p0, v9, v7}, Lcom/wardrumstudios/utils/WarService;->UpdateBadgeReceiver(ZLjava/lang/String;)V

    .line 190
    return-void
.end method

.method public UpdateBadgeReceiver(ZLjava/lang/String;)V
    .locals 13
    .param p1, "state"    # Z
    .param p2, "appClassString"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v0, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    const-string v2, "1"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v0, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v0, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 210
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v10, "localIntent1":Landroid/content/Intent;
    const-string v0, "packagename"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v0, "count"

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.htc.launcher.action.SET_NOTIFICATION"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v11, "localIntent2":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-direct {v9, v0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .local v9, "localComponentName":Landroid/content/ComponentName;
    const-string v0, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v0, "com.htc.launcher.extra.COUNT"

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    .end local v9    # "localComponentName":Landroid/content/ComponentName;
    .end local v10    # "localIntent1":Landroid/content/Intent;
    .end local v11    # "localIntent2":Landroid/content/Intent;
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 230
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    if-eqz p1, :cond_3

    .line 233
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v0, "package"

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "class"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "badgecount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 250
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_2
    :goto_2
    return-void

    .line 243
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v0, "badgecount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "package=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/wardrumstudios/utils/WarService;->warActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v0, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 248
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 221
    :catch_1
    move-exception v0

    goto :goto_1

    .line 205
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public native jniWarService()V
.end method
