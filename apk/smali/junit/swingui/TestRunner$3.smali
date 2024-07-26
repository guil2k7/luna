.class Ljunit/swingui/TestRunner$3;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$testSuite:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$3;->this$0:Ljunit/swingui/TestRunner;

    iput-object p2, p0, Ljunit/swingui/TestRunner$3;->val$testSuite:Ljunit/framework/Test;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    iget-object v2, p0, Ljunit/swingui/TestRunner$3;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v2}, Ljunit/swingui/TestRunner;->access$400(Ljunit/swingui/TestRunner;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/swingui/TestRunView;

    .line 201
    .local v1, "v":Ljunit/swingui/TestRunView;
    iget-object v2, p0, Ljunit/swingui/TestRunner$3;->val$testSuite:Ljunit/framework/Test;

    iget-object v3, p0, Ljunit/swingui/TestRunner$3;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v3}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljunit/swingui/TestRunView;->runFinished(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    goto :goto_0

    .line 203
    .end local v1    # "v":Ljunit/swingui/TestRunView;
    :cond_0
    return-void
.end method
