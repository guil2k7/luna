.class Ljunit/framework/TestSuite$1;
.super Ljunit/framework/TestCase;
.source "TestSuite.java"


# instance fields
.field private final val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "val$message"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected runTest()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/TestSuite$1;->fail(Ljava/lang/String;)V

    .line 91
    return-void
.end method
