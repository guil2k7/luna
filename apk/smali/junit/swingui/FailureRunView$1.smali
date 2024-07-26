.class Ljunit/swingui/FailureRunView$1;
.super Ljava/lang/Object;
.source "FailureRunView.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# instance fields
.field private final this$0:Ljunit/swingui/FailureRunView;


# direct methods
.method constructor <init>(Ljunit/swingui/FailureRunView;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/FailureRunView;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/FailureRunView$1;->this$0:Ljunit/swingui/FailureRunView;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    .line 83
    iget-object v0, p0, Ljunit/swingui/FailureRunView$1;->this$0:Ljunit/swingui/FailureRunView;

    invoke-virtual {v0}, Ljunit/swingui/FailureRunView;->testSelected()V

    .line 84
    return-void
.end method
