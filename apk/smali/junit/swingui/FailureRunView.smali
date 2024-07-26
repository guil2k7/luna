.class public Ljunit/swingui/FailureRunView;
.super Ljava/lang/Object;
.source "FailureRunView.java"

# interfaces
.implements Ljunit/swingui/TestRunView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/swingui/FailureRunView$FailureListCellRenderer;
    }
.end annotation


# instance fields
.field fFailureList:Ljavax/swing/JList;

.field fRunContext:Ljunit/swingui/TestRunContext;


# direct methods
.method public constructor <init>(Ljunit/swingui/TestRunContext;)V
    .locals 5
    .param p1, "context"    # Ljunit/swingui/TestRunContext;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljunit/swingui/FailureRunView;->fRunContext:Ljunit/swingui/TestRunContext;

    .line 73
    new-instance v0, Ljavax/swing/JList;

    iget-object v1, p0, Ljunit/swingui/FailureRunView;->fRunContext:Ljunit/swingui/TestRunContext;

    invoke-interface {v1}, Ljunit/swingui/TestRunContext;->getFailures()Ljavax/swing/ListModel;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    .line 74
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    new-instance v1, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setFont(Ljava/awt/Font;)V

    .line 76
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    invoke-virtual {v0, v4}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 77
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/FailureRunView$FailureListCellRenderer;

    invoke-direct {v1}, Ljunit/swingui/FailureRunView$FailureListCellRenderer;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setCellRenderer(Ljavax/swing/ListCellRenderer;)V

    .line 78
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setVisibleRowCount(I)V

    .line 80
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/FailureRunView$1;

    invoke-direct {v1, p0}, Ljunit/swingui/FailureRunView$1;-><init>(Ljunit/swingui/FailureRunView;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public aboutToStart(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 114
    return-void
.end method

.method public activate()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Ljunit/swingui/FailureRunView;->testSelected()V

    .line 101
    return-void
.end method

.method public addTab(Ljavax/swing/JTabbedPane;)V
    .locals 5
    .param p1, "pane"    # Ljavax/swing/JTabbedPane;

    .prologue
    .line 104
    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    const/16 v3, 0x16

    const/16 v4, 0x20

    invoke-direct {v1, v2, v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    .line 105
    .local v1, "scrollPane":Ljavax/swing/JScrollPane;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "icons/error.gif"

    invoke-static {v2, v3}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    .line 106
    .local v0, "errorIcon":Ljavax/swing/Icon;
    const-string v2, "Failures"

    const-string v3, "The list of failed tests"

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getSelectedTest()Ljunit/framework/Test;
    .locals 4

    .prologue
    .line 90
    iget-object v3, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    invoke-virtual {v3}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v1

    .line 91
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 96
    :goto_0
    return-object v3

    .line 94
    :cond_0
    iget-object v3, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    invoke-virtual {v3}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v2

    .line 95
    .local v2, "model":Ljavax/swing/ListModel;
    invoke-interface {v2, v1}, Ljavax/swing/ListModel;->getElementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestFailure;

    .line 96
    .local v0, "failure":Ljunit/framework/TestFailure;
    invoke-virtual {v0}, Ljunit/framework/TestFailure;->failedTest()Ljunit/framework/Test;

    move-result-object v3

    goto :goto_0
.end method

.method public revealFailure(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "failure"    # Ljunit/framework/Test;

    .prologue
    .line 110
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fFailureList:Ljavax/swing/JList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setSelectedIndex(I)V

    .line 111
    return-void
.end method

.method public runFinished(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 117
    return-void
.end method

.method protected testSelected()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Ljunit/swingui/FailureRunView;->fRunContext:Ljunit/swingui/TestRunContext;

    invoke-virtual {p0}, Ljunit/swingui/FailureRunView;->getSelectedTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v0, v1}, Ljunit/swingui/TestRunContext;->handleTestSelected(Ljunit/framework/Test;)V

    .line 121
    return-void
.end method
