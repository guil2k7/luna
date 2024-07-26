.class Ljunit/swingui/TestRunner$2;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$100(Ljunit/swingui/TestRunner;)Ljunit/swingui/CounterPanel;

    move-result-object v0

    iget-object v1, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Ljunit/framework/TestResult;->runCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljunit/swingui/CounterPanel;->setRunValue(I)V

    .line 142
    iget-object v0, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$300(Ljunit/swingui/TestRunner;)Ljunit/swingui/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Ljunit/framework/TestResult;->runCount()I

    move-result v1

    iget-object v2, p0, Ljunit/swingui/TestRunner$2;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v2}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v2

    invoke-virtual {v2}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljunit/swingui/ProgressBar;->step(IZ)V

    .line 144
    :cond_0
    return-void
.end method
