.class Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "TestSuitePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/TestSuitePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestTreeCellRenderer"
.end annotation


# instance fields
.field private fErrorIcon:Ljavax/swing/Icon;

.field private fFailureIcon:Ljavax/swing/Icon;

.field private fOkIcon:Ljavax/swing/Icon;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->loadIcons()V

    .line 39
    return-void
.end method


# virtual methods
.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 8
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "sel"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I
    .param p7, "hasFocus"    # Z

    .prologue
    .line 58
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-result-object v0

    .line 59
    .local v0, "c":Ljava/awt/Component;
    invoke-virtual {p1}, Ljavax/swing/JTree;->getModel()Ljavax/swing/tree/TreeModel;

    move-result-object v1

    .line 60
    .local v1, "model":Ljavax/swing/tree/TreeModel;
    instance-of v5, v1, Ljunit/swingui/TestTreeModel;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 61
    check-cast v4, Ljunit/swingui/TestTreeModel;

    .local v4, "testModel":Ljunit/swingui/TestTreeModel;
    move-object v3, p2

    .line 62
    check-cast v3, Ljunit/framework/Test;

    .line 63
    .local v3, "t":Ljunit/framework/Test;
    const-string v2, ""

    .line 64
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljunit/swingui/TestTreeModel;->isFailure(Ljunit/framework/Test;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v5}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 67
    :cond_0
    const-string v2, " - Failed"

    .line 79
    :cond_1
    :goto_0
    instance-of v5, v0, Ljavax/swing/JComponent;

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 80
    check-cast v5, Ljavax/swing/JComponent;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    .line 82
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "t":Ljunit/framework/Test;
    .end local v4    # "testModel":Ljunit/swingui/TestTreeModel;
    :cond_2
    invoke-virtual {p0, p2}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->stripParenthesis(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 69
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "t":Ljunit/framework/Test;
    .restart local v4    # "testModel":Ljunit/swingui/TestTreeModel;
    :cond_3
    invoke-virtual {v4, v3}, Ljunit/swingui/TestTreeModel;->isError(Ljunit/framework/Test;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    if-eqz v5, :cond_4

    .line 71
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v5}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 72
    :cond_4
    const-string v2, " - Error"

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v4, v3}, Ljunit/swingui/TestTreeModel;->wasRun(Ljunit/framework/Test;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fOkIcon:Ljavax/swing/Icon;

    if-eqz v5, :cond_6

    .line 76
    iget-object v5, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fOkIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v5}, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 77
    :cond_6
    const-string v2, " - Passed"

    goto :goto_0
.end method

.method loadIcons()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icons/error.gif"

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fErrorIcon:Ljavax/swing/Icon;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icons/ok.gif"

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fOkIcon:Ljavax/swing/Icon;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icons/failure.gif"

    invoke-static {v0, v1}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestSuitePanel$TestTreeCellRenderer;->fFailureIcon:Ljavax/swing/Icon;

    .line 45
    return-void
.end method

.method stripParenthesis(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "text":Ljava/lang/String;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 50
    .local v0, "pos":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 52
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "text":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
