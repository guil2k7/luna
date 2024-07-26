.class Ljunit/swingui/TestRunner$18;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$test"    # Ljunit/framework/Test;

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$18;->this$0:Ljunit/swingui/TestRunner;

    iput-object p2, p0, Ljunit/swingui/TestRunner$18;->val$test:Ljunit/framework/Test;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    iget-object v1, p0, Ljunit/swingui/TestRunner$18;->val$test:Ljunit/framework/Test;

    invoke-interface {v1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    .line 792
    .local v0, "total":I
    iget-object v1, p0, Ljunit/swingui/TestRunner$18;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$300(Ljunit/swingui/TestRunner;)Ljunit/swingui/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljunit/swingui/ProgressBar;->start(I)V

    .line 793
    iget-object v1, p0, Ljunit/swingui/TestRunner$18;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$100(Ljunit/swingui/TestRunner;)Ljunit/swingui/CounterPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljunit/swingui/CounterPanel;->setTotal(I)V

    .line 794
    return-void
.end method
