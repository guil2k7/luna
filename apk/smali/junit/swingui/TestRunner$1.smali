.class Ljunit/swingui/TestRunner$1;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$status:I

.field private final val$t:Ljava/lang/Throwable;

.field private final val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$status"    # I
    .param p3, "val$test"    # Ljunit/framework/Test;
    .param p4, "val$t"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    iput p2, p0, Ljunit/swingui/TestRunner$1;->val$status:I

    iput-object p3, p0, Ljunit/swingui/TestRunner$1;->val$test:Ljunit/framework/Test;

    iput-object p4, p0, Ljunit/swingui/TestRunner$1;->val$t:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Ljunit/swingui/TestRunner$1;->val$status:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$100(Ljunit/swingui/TestRunner;)Ljunit/swingui/CounterPanel;

    move-result-object v0

    iget-object v1, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Ljunit/framework/TestResult;->errorCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljunit/swingui/CounterPanel;->setErrorValue(I)V

    .line 119
    iget-object v0, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    iget-object v1, p0, Ljunit/swingui/TestRunner$1;->val$test:Ljunit/framework/Test;

    iget-object v2, p0, Ljunit/swingui/TestRunner$1;->val$t:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Ljunit/swingui/TestRunner;->access$200(Ljunit/swingui/TestRunner;Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$100(Ljunit/swingui/TestRunner;)Ljunit/swingui/CounterPanel;

    move-result-object v0

    iget-object v1, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v1}, Ljunit/swingui/TestRunner;->access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Ljunit/framework/TestResult;->failureCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljunit/swingui/CounterPanel;->setFailureValue(I)V

    .line 123
    iget-object v0, p0, Ljunit/swingui/TestRunner$1;->this$0:Ljunit/swingui/TestRunner;

    iget-object v1, p0, Ljunit/swingui/TestRunner$1;->val$test:Ljunit/framework/Test;

    iget-object v2, p0, Ljunit/swingui/TestRunner$1;->val$t:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Ljunit/swingui/TestRunner;->access$200(Ljunit/swingui/TestRunner;Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
