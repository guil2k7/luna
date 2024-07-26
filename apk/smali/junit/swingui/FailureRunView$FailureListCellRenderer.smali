.class Ljunit/swingui/FailureRunView$FailureListCellRenderer;
.super Ljavax/swing/DefaultListCellRenderer;
.source "FailureRunView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/FailureRunView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailureListCellRenderer"
.end annotation


# instance fields
.field private fErrorIcon:Ljavax/swing/Icon;

.field private fFailureIcon:Ljavax/swing/Icon;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/swing/DefaultListCellRenderer;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->loadIcons()V

    .line 40
    return-void
.end method


# virtual methods
.method public getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
    .locals 6
    .param p1, "list"    # Ljavax/swing/JList;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "modelIndex"    # I
    .param p4, "isSelected"    # Z
    .param p5, "cellHasFocus"    # Z

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Ljavax/swing/DefaultListCellRenderer;->getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;

    move-result-object v0

    .local v0, "c":Ljava/awt/Component;
    move-object v1, p2

    .line 52
    check-cast v1, Ljunit/framework/TestFailure;

    .line 53
    .local v1, "failure":Ljunit/framework/TestFailure;
    invoke-virtual {v1}, Ljunit/framework/TestFailure;->failedTest()Ljunit/framework/Test;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljunit/framework/TestFailure;->exceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljunit/framework/TestFailure;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    iget-object v4, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v4}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v3}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->setToolTipText(Ljava/lang/String;)V

    .line 67
    return-object v0

    .line 62
    :cond_2
    iget-object v4, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v4}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    goto :goto_0
.end method

.method loadIcons()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icons/failure.gif"

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icons/error.gif"

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/FailureRunView$FailureListCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    .line 45
    return-void
.end method
