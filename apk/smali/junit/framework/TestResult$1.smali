.class Ljunit/framework/TestResult$1;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Ljunit/framework/Protectable;


# instance fields
.field private final this$0:Ljunit/framework/TestResult;

.field private final val$test:Ljunit/framework/TestCase;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/framework/TestResult;
    .param p2, "val$test"    # Ljunit/framework/TestCase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/framework/TestResult$1;->this$0:Ljunit/framework/TestResult;

    iput-object p2, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    return-void
.end method


# virtual methods
.method public protect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljunit/framework/TestCase;->runBare()V

    .line 107
    return-void
.end method
