.class public Lcom/wardrumstudios/utils/WarBootNotify;
.super Landroid/app/Service;
.source "WarBootNotify.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private CreateAlarmIntent(ILjava/lang/String;)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "alarm"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v19, "\\|"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "parts":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 55
    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 56
    .local v10, "epochTime":J
    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 57
    .local v17, "smallicon":I
    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 58
    .local v12, "icon":I
    const/16 v19, 0x3

    aget-object v18, v15, v19

    .line 59
    .local v18, "title":Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v13, v15, v19

    .line 60
    .local v13, "message":Ljava/lang/String;
    const/16 v19, 0x5

    aget-object v5, v15, v19

    .line 62
    .local v5, "appClassString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 63
    .local v6, "currentTimeMS":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v8, v10, v20

    .line 64
    .local v8, "delay":J
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-gez v19, :cond_0

    const-wide/16 v8, 0x2710

    .line 67
    :cond_0
    new-instance v14, Landroid/content/Intent;

    const-class v19, Lcom/wardrumstudios/utils/WarServiceNotifyReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v14, "newIntent":Landroid/content/Intent;
    const-string v19, "class"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v19, "icon"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v19, "smallicon"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v19, "notifyId"

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 76
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    const-string v19, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarBootNotify;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 77
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    const/16 v19, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v8

    move/from16 v0, v19

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 79
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v5    # "appClassString":Ljava/lang/String;
    .end local v6    # "currentTimeMS":J
    .end local v8    # "delay":J
    .end local v10    # "epochTime":J
    .end local v12    # "icon":I
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "newIntent":Landroid/content/Intent;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "smallicon":I
    .end local v18    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "pIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "alarm":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 90
    invoke-direct {p0, v1, v0}, Lcom/wardrumstudios/utils/WarBootNotify;->CreateAlarmIntent(ILjava/lang/String;)V

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3
.end method
