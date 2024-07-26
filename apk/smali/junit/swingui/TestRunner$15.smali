.class Ljunit/swingui/TestRunner$15;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$status"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$15;->this$0:Ljunit/swingui/TestRunner;

    iput-object p2, p0, Ljunit/swingui/TestRunner$15;->val$status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Ljunit/swingui/TestRunner$15;->this$0:Ljunit/swingui/TestRunner;

    iget-object v1, p0, Ljunit/swingui/TestRunner$15;->val$status:Ljava/lang/String;

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->access$800(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    .line 601
    return-void
.end method
