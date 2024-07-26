.class Ljunit/swingui/TestRunner$7;
.super Ljava/awt/event/WindowAdapter;
.source "TestRunner.java"


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$7;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 284
    iget-object v0, p0, Ljunit/swingui/TestRunner$7;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v0}, Ljunit/swingui/TestRunner;->terminate()V

    .line 285
    return-void
.end method
