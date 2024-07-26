.class Ljunit/awtui/TestRunner$1;
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
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$1;->this$0:Ljunit/awtui/TestRunner;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "event"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 147
    iget-object v0, p0, Ljunit/awtui/TestRunner$1;->this$0:Ljunit/awtui/TestRunner;

    invoke-static {v0}, Ljunit/awtui/TestRunner;->access$000(Ljunit/awtui/TestRunner;)V

    .line 148
    return-void
.end method
