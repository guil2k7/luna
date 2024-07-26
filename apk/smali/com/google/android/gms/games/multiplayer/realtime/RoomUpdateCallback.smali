.class public abstract Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .param p2    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLeftRoom(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .param p2    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .param p2    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
