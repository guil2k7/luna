.class Ljunit/swingui/TestRunner$14;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$message"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$14;->this$0:Ljunit/swingui/TestRunner;

    iput-object p2, p0, Ljunit/swingui/TestRunner$14;->val$message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Ljunit/swingui/TestRunner$14;->this$0:Ljunit/swingui/TestRunner;

    iget-object v1, p0, Ljunit/swingui/TestRunner$14;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->access$700(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    .line 591
    return-void
.end method
