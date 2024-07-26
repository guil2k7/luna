.class Ljunit/swingui/TestSuitePanel;
.super Ljavax/swing/JPanel;
.source "TestSuitePanel.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;
    }
.end annotation


# instance fields
.field private fModel:Ljunit/swingui/TestTreeModel;

.field private fScrollTree:Ljavax/swing/JScrollPane;

.field private fTree:Ljavax/swing/JTree;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {p0, v0}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 89
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x12c

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Ljunit/swingui/TestSuitePanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 90
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0}, Ljavax/swing/JTree;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    .line 91
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 92
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setRowHeight(I)V

    .line 93
    invoke-static {}, Ljavax/swing/ToolTipManager;->sharedInstance()Ljavax/swing/ToolTipManager;

    move-result-object v0

    iget-object v1, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    invoke-virtual {v0, v1}, Ljavax/swing/ToolTipManager;->registerComponent(Ljavax/swing/JComponent;)V

    .line 94
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    const-string v1, "JTree.lineStyle"

    const-string v2, "Angled"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTree;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v1, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel;->fScrollTree:Ljavax/swing/JScrollPane;

    .line 96
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fScrollTree:Ljavax/swing/JScrollPane;

    const-string v1, "Center"

    invoke-virtual {p0, v0, v1}, Ljunit/swingui/TestSuitePanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method static access$000(Ljunit/swingui/TestSuitePanel;)Ljunit/swingui/TestTreeModel;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestSuitePanel;

    .prologue
    .line 26
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    return-object v0
.end method

.method static access$100(Ljunit/swingui/TestSuitePanel;)Ljavax/swing/JTree;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestSuitePanel;

    .prologue
    .line 26
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    return-object v0
.end method

.method private fireTestChanged(Ljunit/framework/Test;Z)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "expand"    # Z

    .prologue
    .line 150
    new-instance v0, Ljunit/swingui/TestSuitePanel$1;

    invoke-direct {v0, p0, p1, p2}, Ljunit/swingui/TestSuitePanel$1;-><init>(Ljunit/swingui/TestSuitePanel;Ljunit/framework/Test;Z)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    invoke-virtual {v0, p1}, Ljunit/swingui/TestTreeModel;->addError(Ljunit/framework/Test;)V

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljunit/swingui/TestSuitePanel;->fireTestChanged(Ljunit/framework/Test;Z)V

    .line 102
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .prologue
    .line 105
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    invoke-virtual {v0, p1}, Ljunit/swingui/TestTreeModel;->addFailure(Ljunit/framework/Test;)V

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljunit/swingui/TestSuitePanel;->fireTestChanged(Ljunit/framework/Test;Z)V

    .line 107
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 113
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    invoke-virtual {v0, p1}, Ljunit/swingui/TestTreeModel;->addRunTest(Ljunit/framework/Test;)V

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljunit/swingui/TestSuitePanel;->fireTestChanged(Ljunit/framework/Test;Z)V

    .line 115
    return-void
.end method

.method public getSelectedTest()Ljunit/framework/Test;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    invoke-virtual {v1}, Ljavax/swing/JTree;->getSelectionPaths()[Ljavax/swing/tree/TreePath;

    move-result-object v0

    .line 128
    .local v0, "paths":[Ljavax/swing/tree/TreePath;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;

    .line 130
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTree()Ljavax/swing/JTree;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    return-object v0
.end method

.method public showTestTree(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "root"    # Ljunit/framework/Test;

    .prologue
    .line 144
    new-instance v0, Ljunit/swingui/TestTreeModel;

    invoke-direct {v0, p1}, Ljunit/swingui/TestTreeModel;-><init>(Ljunit/framework/Test;)V

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    .line 145
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    iget-object v1, p0, Ljunit/swingui/TestSuitePanel;->fModel:Ljunit/swingui/TestTreeModel;

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 146
    iget-object v0, p0, Ljunit/swingui/TestSuitePanel;->fTree:Ljavax/swing/JTree;

    new-instance v1, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;

    invoke-direct {v1}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 147
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 121
    return-void
.end method
