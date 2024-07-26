.class Ljunit/swingui/TestSuitePanel$1;
.super Ljava/lang/Object;
.source "TestSuitePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestSuitePanel;

.field private final val$expand:Z

.field private final val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/swingui/TestSuitePanel;Ljunit/framework/Test;Z)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSuitePanel;
    .param p2, "val$test"    # Ljunit/framework/Test;
    .param p3, "val$expand"    # Z

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    iput-object p2, p0, Ljunit/swingui/TestSuitePanel$1;->val$test:Ljunit/framework/Test;

    iput-boolean p3, p0, Ljunit/swingui/TestSuitePanel$1;->val$expand:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 153
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 154
    .local v5, "vpath":Ljava/util/Vector;
    iget-object v6, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    invoke-static {v6}, Ljunit/swingui/TestSuitePanel;->access$000(Ljunit/swingui/TestSuitePanel;)Ljunit/swingui/TestTreeModel;

    move-result-object v7

    iget-object v8, p0, Ljunit/swingui/TestSuitePanel$1;->val$test:Ljunit/framework/Test;

    iget-object v6, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    invoke-static {v6}, Ljunit/swingui/TestSuitePanel;->access$000(Ljunit/swingui/TestSuitePanel;)Ljunit/swingui/TestTreeModel;

    move-result-object v6

    invoke-virtual {v6}, Ljunit/swingui/TestTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljunit/framework/Test;

    invoke-virtual {v7, v8, v6, v5}, Ljunit/swingui/TestTreeModel;->findTest(Ljunit/framework/Test;Ljunit/framework/Test;Ljava/util/Vector;)I

    move-result v2

    .line 155
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 156
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/Object;

    .line 157
    .local v3, "path":[Ljava/lang/Object;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 158
    new-instance v4, Ljavax/swing/tree/TreePath;

    invoke-direct {v4, v3}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 159
    .local v4, "treePath":Ljavax/swing/tree/TreePath;
    iget-object v6, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    invoke-static {v6}, Ljunit/swingui/TestSuitePanel;->access$000(Ljunit/swingui/TestSuitePanel;)Ljunit/swingui/TestTreeModel;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljunit/swingui/TestTreeModel;->fireNodeChanged(Ljavax/swing/tree/TreePath;I)V

    .line 160
    iget-boolean v6, p0, Ljunit/swingui/TestSuitePanel$1;->val$expand:Z

    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 162
    .local v0, "fullPath":[Ljava/lang/Object;
    invoke-virtual {v5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    iget-object v7, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    invoke-static {v7}, Ljunit/swingui/TestSuitePanel;->access$000(Ljunit/swingui/TestSuitePanel;)Ljunit/swingui/TestTreeModel;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljunit/swingui/TestTreeModel;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v6

    .line 164
    new-instance v1, Ljavax/swing/tree/TreePath;

    invoke-direct {v1, v0}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 165
    .local v1, "fullTreePath":Ljavax/swing/tree/TreePath;
    iget-object v6, p0, Ljunit/swingui/TestSuitePanel$1;->this$0:Ljunit/swingui/TestSuitePanel;

    invoke-static {v6}, Ljunit/swingui/TestSuitePanel;->access$100(Ljunit/swingui/TestSuitePanel;)Ljavax/swing/JTree;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljavax/swing/JTree;->scrollPathToVisible(Ljavax/swing/tree/TreePath;)V

    .line 168
    .end local v0    # "fullPath":[Ljava/lang/Object;
    .end local v1    # "fullTreePath":Ljavax/swing/tree/TreePath;
    .end local v3    # "path":[Ljava/lang/Object;
    .end local v4    # "treePath":Ljavax/swing/tree/TreePath;
    :cond_0
    return-void
.end method
