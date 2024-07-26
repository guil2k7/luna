.class Ljunit/extensions/ActiveTestSuite$1;
.super Ljava/lang/Thread;
.source "ActiveTestSuite.java"


# instance fields
.field private final this$0:Ljunit/extensions/ActiveTestSuite;

.field private final val$result:Ljunit/framework/TestResult;

.field private final val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/extensions/ActiveTestSuite;
    .param p2, "val$test"    # Ljunit/framework/Test;
    .param p3, "val$result"    # Ljunit/framework/TestResult;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    iput-object p2, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iput-object p3, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    invoke-interface {v0, v1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    invoke-virtual {v0}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    invoke-virtual {v1}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    throw v0
.end method
