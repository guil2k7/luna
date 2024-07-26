.class public Ljunit/swingui/TestHierarchyRunView;
.super Ljava/lang/Object;
.source "TestHierarchyRunView.java"

# interfaces
.implements Ljunit/swingui/TestRunView;


# instance fields
.field fTestContext:Ljunit/swingui/TestRunContext;

.field fTreeBrowser:Ljunit/swingui/TestSuitePanel;


# direct methods
.method public constructor <init>(Ljunit/swingui/TestRunContext;)V
    .locals 2
    .param p1, "context"    # Ljunit/swingui/TestRunContext;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljunit/swingui/TestHierarchyRunView;->fTestContext:Ljunit/swingui/TestRunContext;

    .line 26
    new-instance v0, Ljunit/swingui/TestSuitePanel;

    invoke-direct {v0}, Ljunit/swingui/TestSuitePanel;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    .line 27
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {v0}, Ljunit/swingui/TestSuitePanel;->getTree()Ljavax/swing/JTree;

    move-result-object v0

    new-instance v1, Ljunit/swingui/TestHierarchyRunView$1;

    invoke-direct {v1, p0}, Ljunit/swingui/TestHierarchyRunView$1;-><init>(Ljunit/swingui/TestHierarchyRunView;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public aboutToStart(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 66
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {v0, p1}, Ljunit/swingui/TestSuitePanel;->showTestTree(Ljunit/framework/Test;)V

    .line 67
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {p2, v0}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 68
    return-void
.end method

.method public activate()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Ljunit/swingui/TestHierarchyRunView;->testSelected()V

    .line 47
    return-void
.end method

.method public addTab(Ljavax/swing/JTabbedPane;)V
    .locals 4
    .param p1, "pane"    # Ljavax/swing/JTabbedPane;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "icons/hierarchy.gif"

    invoke-static {v1, v2}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    .line 38
    .local v0, "treeIcon":Ljavax/swing/Icon;
    const-string v1, "Test Hierarchy"

    iget-object v2, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    const-string v3, "The test hierarchy"

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public getSelectedTest()Ljunit/framework/Test;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {v0}, Ljunit/swingui/TestSuitePanel;->getSelectedTest()Ljunit/framework/Test;

    move-result-object v0

    return-object v0
.end method

.method public revealFailure(Ljunit/framework/Test;)V
    .locals 9
    .param p1, "failure"    # Ljunit/framework/Test;

    .prologue
    .line 50
    iget-object v7, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {v7}, Ljunit/swingui/TestSuitePanel;->getTree()Ljavax/swing/JTree;

    move-result-object v5

    .line 51
    .local v5, "tree":Ljavax/swing/JTree;
    invoke-virtual {v5}, Ljavax/swing/JTree;->getModel()Ljavax/swing/tree/TreeModel;

    move-result-object v2

    check-cast v2, Ljunit/swingui/TestTreeModel;

    .line 52
    .local v2, "model":Ljunit/swingui/TestTreeModel;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 53
    .local v6, "vpath":Ljava/util/Vector;
    invoke-virtual {v2}, Ljunit/swingui/TestTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljunit/framework/Test;

    invoke-virtual {v2, p1, v7, v6}, Ljunit/swingui/TestTreeModel;->findTest(Ljunit/framework/Test;Ljunit/framework/Test;Ljava/util/Vector;)I

    move-result v0

    .line 54
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 55
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    .line 56
    .local v3, "path":[Ljava/lang/Object;
    invoke-virtual {v6, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v3, v7

    .line 58
    .local v1, "last":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v2, v1, v0}, Ljunit/swingui/TestTreeModel;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    .line 59
    new-instance v4, Ljavax/swing/tree/TreePath;

    invoke-direct {v4, v3}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 60
    .local v4, "selectionPath":Ljavax/swing/tree/TreePath;
    invoke-virtual {v5, v4}, Ljavax/swing/JTree;->setSelectionPath(Ljavax/swing/tree/TreePath;)V

    .line 61
    invoke-virtual {v5, v4}, Ljavax/swing/JTree;->makeVisible(Ljavax/swing/tree/TreePath;)V

    .line 63
    .end local v1    # "last":Ljava/lang/Object;
    .end local v3    # "path":[Ljava/lang/Object;
    .end local v4    # "selectionPath":Ljavax/swing/tree/TreePath;
    :cond_0
    return-void
.end method

.method public runFinished(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 71
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTreeBrowser:Ljunit/swingui/TestSuitePanel;

    invoke-virtual {p2, v0}, Ljunit/framework/TestResult;->removeListener(Ljunit/framework/TestListener;)V

    .line 72
    return-void
.end method

.method protected testSelected()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView;->fTestContext:Ljunit/swingui/TestRunContext;

    invoke-virtual {p0}, Ljunit/swingui/TestHierarchyRunView;->getSelectedTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v0, v1}, Ljunit/swingui/TestRunContext;->handleTestSelected(Ljunit/framework/Test;)V

    .line 76
    return-void
.end method
