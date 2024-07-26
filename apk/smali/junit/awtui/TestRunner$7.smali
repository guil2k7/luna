.class Ljunit/awtui/TestRunner$7;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/ItemListener;


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$7;->this$0:Ljunit/awtui/TestRunner;

    return-void
.end method


# virtual methods
.method public itemStateChanged(Ljava/awt/event/ItemEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ItemEvent;

    .prologue
    .line 258
    iget-object v0, p0, Ljunit/awtui/TestRunner$7;->this$0:Ljunit/awtui/TestRunner;

    invoke-virtual {v0}, Ljunit/awtui/TestRunner;->failureSelected()V

    .line 259
    return-void
.end method
