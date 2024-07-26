.class Ljunit/swingui/TestSelector$2;
.super Ljava/lang/Object;
.source "TestSelector.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method constructor <init>(Ljunit/swingui/TestSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$2;->this$0:Ljunit/swingui/TestSelector;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 162
    iget-object v0, p0, Ljunit/swingui/TestSelector$2;->this$0:Ljunit/swingui/TestSelector;

    invoke-virtual {v0}, Ljunit/swingui/TestSelector;->okSelected()V

    .line 163
    return-void
.end method
