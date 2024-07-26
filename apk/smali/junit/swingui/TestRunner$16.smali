.class Ljunit/swingui/TestRunner$16;
.super Ljava/lang/Thread;
.source "TestRunner.java"


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$testSuite:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljava/lang/String;Ljunit/framework/Test;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "val$testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 693
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    iput-object p3, p0, Ljunit/swingui/TestRunner$16;->val$testSuite:Ljunit/framework/Test;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 694
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    iget-object v7, p0, Ljunit/swingui/TestRunner$16;->val$testSuite:Ljunit/framework/Test;

    invoke-static {v6, v7}, Ljunit/swingui/TestRunner;->access$900(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V

    .line 695
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    const-string v7, "Running..."

    invoke-static {v6, v7}, Ljunit/swingui/TestRunner;->access$1000(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 698
    .local v4, "startTime":J
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->val$testSuite:Ljunit/framework/Test;

    iget-object v7, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v7}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v7

    invoke-interface {v6, v7}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 700
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v6}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v6

    invoke-virtual {v6}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 701
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    const-string v7, "Stopped"

    invoke-static {v6, v7}, Ljunit/swingui/TestRunner;->access$1100(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    .line 707
    :goto_0
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    iget-object v7, p0, Ljunit/swingui/TestRunner$16;->val$testSuite:Ljunit/framework/Test;

    invoke-virtual {v6, v7}, Ljunit/swingui/TestRunner;->runFinished(Ljunit/framework/Test;)V

    .line 708
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    iget-object v7, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v7}, Ljunit/swingui/TestRunner;->access$1200(Ljunit/swingui/TestRunner;)Ljavax/swing/JButton;

    move-result-object v7

    const-string v8, "Run"

    invoke-static {v6, v7, v8}, Ljunit/swingui/TestRunner;->access$1300(Ljunit/swingui/TestRunner;Ljavax/swing/JButton;Ljava/lang/String;)V

    .line 709
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljunit/swingui/TestRunner;->access$1402(Ljunit/swingui/TestRunner;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 710
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 711
    return-void

    .line 703
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 704
    .local v0, "endTime":J
    sub-long v2, v0, v4

    .line 705
    .local v2, "runTime":J
    iget-object v6, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Finished: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Ljunit/swingui/TestRunner$16;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v8, v2, v3}, Ljunit/swingui/TestRunner;->elapsedTimeAsString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljunit/swingui/TestRunner;->access$1000(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    goto :goto_0
.end method
