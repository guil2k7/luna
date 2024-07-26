.class Ljunit/swingui/TestSelector$4;
.super Ljava/awt/event/WindowAdapter;
.source "TestSelector.java"


# instance fields
.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method constructor <init>(Ljunit/swingui/TestSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$4;->this$0:Ljunit/swingui/TestSelector;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 180
    iget-object v0, p0, Ljunit/swingui/TestSelector$4;->this$0:Ljunit/swingui/TestSelector;

    invoke-virtual {v0}, Ljunit/swingui/TestSelector;->dispose()V

    .line 181
    return-void
.end method
