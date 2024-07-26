.class Ljunit/swingui/TestRunner$4;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$4;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 219
    iget-object v0, p0, Ljunit/swingui/TestRunner$4;->this$0:Ljunit/swingui/TestRunner;

    invoke-static {v0}, Ljunit/swingui/TestRunner;->access$500(Ljunit/swingui/TestRunner;)V

    .line 220
    return-void
.end method
