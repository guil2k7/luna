.class public Ljunit/swingui/TestSelector$KeySelectListener;
.super Ljava/awt/event/KeyAdapter;
.source "TestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/TestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeySelectListener"
.end annotation


# instance fields
.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method protected constructor <init>(Ljunit/swingui/TestSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$KeySelectListener;->this$0:Ljunit/swingui/TestSelector;

    return-void
.end method


# virtual methods
.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 106
    iget-object v0, p0, Ljunit/swingui/TestSelector$KeySelectListener;->this$0:Ljunit/swingui/TestSelector;

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljunit/swingui/TestSelector;->keySelectTestClass(C)V

    .line 107
    return-void
.end method
