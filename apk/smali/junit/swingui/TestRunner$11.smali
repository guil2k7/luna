.class Ljunit/swingui/TestRunner$11;
.super Ljava/awt/event/KeyAdapter;
.source "TestRunner.java"


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$11;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 367
    iget-object v0, p0, Ljunit/swingui/TestRunner$11;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v0}, Ljunit/swingui/TestRunner;->textChanged()V

    .line 368
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyChar()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Ljunit/swingui/TestRunner$11;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v0}, Ljunit/swingui/TestRunner;->runSuite()V

    .line 370
    :cond_0
    return-void
.end method
