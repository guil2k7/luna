.class Ljunit/awtui/TestRunner$3;
.super Ljava/awt/event/WindowAdapter;
.source "TestRunner.java"


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;

.field private final val$finalFrame:Ljava/awt/Frame;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;Ljava/awt/Frame;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;
    .param p2, "val$finalFrame"    # Ljava/awt/Frame;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$3;->this$0:Ljunit/awtui/TestRunner;

    iput-object p2, p0, Ljunit/awtui/TestRunner$3;->val$finalFrame:Ljava/awt/Frame;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 186
    iget-object v0, p0, Ljunit/awtui/TestRunner$3;->val$finalFrame:Ljava/awt/Frame;

    invoke-virtual {v0}, Ljava/awt/Frame;->dispose()V

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 188
    return-void
.end method
