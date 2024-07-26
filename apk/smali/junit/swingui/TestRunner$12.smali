.class Ljunit/swingui/TestRunner$12;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/ItemListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$12;->this$0:Ljunit/swingui/TestRunner;

    return-void
.end method


# virtual methods
.method public itemStateChanged(Ljava/awt/event/ItemEvent;)V
    .locals 2
    .param p1, "event"    # Ljava/awt/event/ItemEvent;

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/awt/event/ItemEvent;->getStateChange()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Ljunit/swingui/TestRunner$12;->this$0:Ljunit/swingui/TestRunner;

    invoke-virtual {v0}, Ljunit/swingui/TestRunner;->textChanged()V

    .line 384
    :cond_0
    return-void
.end method
