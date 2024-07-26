.class public Ljunit/swingui/DefaultFailureDetailView;
.super Ljava/lang/Object;
.source "DefaultFailureDetailView.java"

# interfaces
.implements Ljunit/runner/FailureDetailView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;,
        Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;
    }
.end annotation


# instance fields
.field fList:Ljavax/swing/JList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private getModel()Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v0

    check-cast v0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljunit/swingui/DefaultFailureDetailView;->getModel()Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;

    move-result-object v0

    invoke-virtual {v0}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->clear()V

    .line 96
    return-void
.end method

.method public getComponent()Ljava/awt/Component;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;

    invoke-direct {v1}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    .line 77
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    new-instance v1, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setFont(Ljava/awt/Font;)V

    .line 78
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    invoke-virtual {v0, v4}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 79
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setVisibleRowCount(I)V

    .line 80
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;

    invoke-direct {v1}, Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setCellRenderer(Ljavax/swing/ListCellRenderer;)V

    .line 82
    :cond_0
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView;->fList:Ljavax/swing/JList;

    return-object v0
.end method

.method public showFailure(Ljunit/framework/TestFailure;)V
    .locals 2
    .param p1, "failure"    # Ljunit/framework/TestFailure;

    .prologue
    .line 89
    invoke-direct {p0}, Ljunit/swingui/DefaultFailureDetailView;->getModel()Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;

    move-result-object v0

    invoke-virtual {p1}, Ljunit/framework/TestFailure;->trace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->setTrace(Ljava/lang/String;)V

    .line 90
    return-void
.end method
