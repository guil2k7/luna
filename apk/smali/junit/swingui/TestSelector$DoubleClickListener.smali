.class public Ljunit/swingui/TestSelector$DoubleClickListener;
.super Ljava/awt/event/MouseAdapter;
.source "TestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/TestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DoubleClickListener"
.end annotation


# instance fields
.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method protected constructor <init>(Ljunit/swingui/TestSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$DoubleClickListener;->this$0:Ljunit/swingui/TestSelector;

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Ljunit/swingui/TestSelector$DoubleClickListener;->this$0:Ljunit/swingui/TestSelector;

    invoke-virtual {v0}, Ljunit/swingui/TestSelector;->okSelected()V

    .line 101
    :cond_0
    return-void
.end method
