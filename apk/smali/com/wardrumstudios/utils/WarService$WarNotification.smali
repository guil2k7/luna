.class Lcom/wardrumstudios/utils/WarService$WarNotification;
.super Ljava/lang/Object;
.source "WarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarNotification"
.end annotation


# instance fields
.field public epochTime:J

.field public icon:I

.field public message:Ljava/lang/String;

.field public smallicon:I

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarService;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarService;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p2, "delay"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "smallicon"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->this$0:Lcom/wardrumstudios/utils/WarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->epochTime:J

    .line 75
    iput-object p3, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->title:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->message:Ljava/lang/String;

    .line 77
    iput p5, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->icon:I

    .line 78
    iput p6, p0, Lcom/wardrumstudios/utils/WarService$WarNotification;->smallicon:I

    .line 79
    return-void
.end method
