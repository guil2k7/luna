.class Ljunit/awtui/TestRunner$6;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$6;->this$0:Ljunit/awtui/TestRunner;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 224
    iget-object v0, p0, Ljunit/awtui/TestRunner$6;->this$0:Ljunit/awtui/TestRunner;

    invoke-virtual {v0}, Ljunit/awtui/TestRunner;->runSuite()V

    .line 225
    return-void
.end method
