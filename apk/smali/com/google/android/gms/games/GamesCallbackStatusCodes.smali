.class public final Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRealTimeMessageSentStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomConnectedStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnLeftRoomStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnJoinedRoomStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomCreatedStatusCodes;
    }
.end annotation


# static fields
.field public static final CLIENT_RECONNECT_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x1

.field public static final MULTIPLAYER_DISABLED:I = 0x1773

.field public static final OK:I = 0x0

.field public static final REAL_TIME_CONNECTION_FAILED:I = 0x1b58

.field public static final REAL_TIME_MESSAGE_SEND_FAILED:I = 0x1b59

.field public static final REAL_TIME_ROOM_NOT_JOINED:I = 0x1b5c


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown games callback status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "OK"

    goto :goto_0

    :sswitch_1
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :sswitch_2
    const-string v0, "CLIENT_RECONNECT_REQUIRED"

    goto :goto_0

    :sswitch_3
    const-string v0, "MULTIPLAYER_DISABLED"

    goto :goto_0

    :sswitch_4
    const-string v0, "REAL_TIME_CONNECTION_FAILED"

    goto :goto_0

    :sswitch_5
    const-string v0, "REAL_TIME_MESSAGE_SEND_FAILED"

    goto :goto_0

    :sswitch_6
    const-string v0, "REAL_TIME_ROOM_NOT_JOINED"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x1773 -> :sswitch_3
        0x1b58 -> :sswitch_4
        0x1b59 -> :sswitch_5
        0x1b5c -> :sswitch_6
    .end sparse-switch
.end method
