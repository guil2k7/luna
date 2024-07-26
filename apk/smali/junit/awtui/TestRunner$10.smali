.class Ljunit/awtui/TestRunner$10;
.super Ljava/lang/Thread;
.source "TestRunner.java"


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;

.field private final val$testSuite:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;Ljunit/framework/Test;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;
    .param p2, "val$testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iput-object p2, p0, Ljunit/awtui/TestRunner$10;->val$testSuite:Ljunit/framework/Test;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 491
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v7, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    invoke-virtual {v7}, Ljunit/awtui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v7

    iput-object v7, v6, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    .line 492
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v6, v6, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    iget-object v7, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    invoke-virtual {v6, v7}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 493
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v6, v6, Ljunit/awtui/TestRunner;->fProgressIndicator:Ljunit/awtui/ProgressBar;

    iget-object v7, p0, Ljunit/awtui/TestRunner$10;->val$testSuite:Ljunit/framework/Test;

    invoke-interface {v7}, Ljunit/framework/Test;->countTestCases()I

    move-result v7

    invoke-virtual {v6, v7}, Ljunit/awtui/ProgressBar;->start(I)V

    .line 494
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    const-string v7, "Running..."

    invoke-static {v6, v7}, Ljunit/awtui/TestRunner;->access$100(Ljunit/awtui/TestRunner;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 497
    .local v4, "startTime":J
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->val$testSuite:Ljunit/framework/Test;

    iget-object v7, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v7, v7, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-interface {v6, v7}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 499
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v6, v6, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v6}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    const-string v7, "Stopped"

    invoke-static {v6, v7}, Ljunit/awtui/TestRunner;->access$200(Ljunit/awtui/TestRunner;Ljava/lang/String;)V

    .line 506
    :goto_0
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iput-object v9, v6, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    .line 507
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iget-object v6, v6, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    const-string v7, "Run"

    invoke-virtual {v6, v7}, Ljava/awt/Button;->setLabel(Ljava/lang/String;)V

    .line 508
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    iput-object v9, v6, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    .line 509
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 510
    return-void

    .line 502
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 503
    .local v0, "endTime":J
    sub-long v2, v0, v4

    .line 504
    .local v2, "runTime":J
    iget-object v6, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Finished: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Ljunit/awtui/TestRunner$10;->this$0:Ljunit/awtui/TestRunner;

    invoke-virtual {v8, v2, v3}, Ljunit/awtui/TestRunner;->elapsedTimeAsString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljunit/awtui/TestRunner;->access$100(Ljunit/awtui/TestRunner;Ljava/lang/String;)V

    goto :goto_0
.end method
