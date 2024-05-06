.class public Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;
.super Landroid/app/Service;
.source "WarServiceNotifyAlarm.java"


# instance fields
.field public icon:I

.field private mManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 105
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 50
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 52
    .local v7, "extras":Landroid/os/Bundle;
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 53
    .local v18, "title":Ljava/lang/String;
    const-string v19, "subject"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 54
    .local v17, "subject":Ljava/lang/String;
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "message":Ljava/lang/String;
    const-string v19, "icon"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 56
    .local v8, "icon":I
    const-string v19, "smallicon"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 57
    .local v16, "smallicon":I
    const-string v19, "notifyId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 58
    .local v13, "notifyId":I
    const-string v19, "class"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "appClassString":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Alarm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 62
    .local v5, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 69
    .local v15, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->getApplicationContext()Landroid/content/Context;

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->mManager:Landroid/app/NotificationManager;

    .line 72
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 73
    .local v3, "appClass":Ljava/lang/Class;
    new-instance v9, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "appClass":Ljava/lang/Class;
    .local v9, "intent1":Landroid/content/Intent;
    :goto_0
    const/high16 v19, 0x24000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 81
    .local v14, "pendingNotificationIntent":Landroid/app/PendingIntent;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 83
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 84
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 85
    invoke-static {v15, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    .line 86
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x4

    .line 87
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 88
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 89
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 90
    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 95
    .local v12, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarServiceNotifyAlarm;->mManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 96
    sget-object v19, Lcom/wardrumstudios/utils/WarService;->myWarService:Lcom/wardrumstudios/utils/WarService;

    if-eqz v19, :cond_0

    .line 97
    sget-object v19, Lcom/wardrumstudios/utils/WarService;->myWarService:Lcom/wardrumstudios/utils/WarService;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/wardrumstudios/utils/WarService;->UpdateBadgeReceiver(ZLjava/lang/String;)V

    .line 99
    :cond_0
    return-void

    .line 74
    .end local v9    # "intent1":Landroid/content/Intent;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v14    # "pendingNotificationIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    .line 75
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .restart local v9    # "intent1":Landroid/content/Intent;
    goto :goto_0
.end method
