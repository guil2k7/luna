.class Ljunit/swingui/TestRunner$13;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljavax/swing/event/ChangeListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$13;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public stateChanged(Ljavax/swing/event/ChangeEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/ChangeEvent;

    .prologue
    .line 404
    iget-object v0, p0, Ljunit/swingui/TestRunner$13;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v0}, Ljunit/swingui/TestRunner;->testViewChanged()V

    .line 405
    return-void
.end method
