.class Ljunit/swingui/TestSelector$3;
.super Ljava/lang/Object;
.source "TestSelector.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method constructor <init>(Ljunit/swingui/TestSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$3;->this$0:Ljunit/swingui/TestSelector;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    .line 172
    iget-object v0, p0, Ljunit/swingui/TestSelector$3;->this$0:Ljunit/swingui/TestSelector;

    invoke-virtual {v0, p1}, Ljunit/swingui/TestSelector;->checkEnableOK(Ljavax/swing/event/ListSelectionEvent;)V

    .line 173
    return-void
.end method
