.class Ljunit/extensions/TestSetup$1;
.super Ljava/lang/Object;
.source "TestSetup.java"

# interfaces
.implements Ljunit/framework/Protectable;


# instance fields
.field private final this$0:Ljunit/extensions/TestSetup;

.field private final val$result:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/extensions/TestSetup;
    .param p2, "val$result"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iput-object p2, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    return-void
.end method


# virtual methods
.method public protect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->setUp()V

    .line 21
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iget-object v1, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    invoke-virtual {v0, v1}, Ljunit/extensions/TestSetup;->basicRun(Ljunit/framework/TestResult;)V

    .line 22
    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->tearDown()V

    .line 23
    return-void
.end method
