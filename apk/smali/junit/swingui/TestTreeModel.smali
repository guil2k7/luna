.class Ljunit/swingui/TestTreeModel;
.super Ljava/lang/Object;
.source "TestTreeModel.java"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field private fErrors:Ljava/util/Hashtable;

.field private fFailures:Ljava/util/Hashtable;

.field private fModelListeners:Ljava/util/Vector;

.field private fRoot:Ljunit/framework/Test;

.field private fRunTests:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "root"    # Ljunit/framework/Test;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fModelListeners:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fFailures:Ljava/util/Hashtable;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fErrors:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fRunTests:Ljava/util/Hashtable;

    .line 31
    iput-object p1, p0, Ljunit/swingui/TestTreeModel;->fRoot:Ljunit/framework/Test;

    .line 32
    return-void
.end method


# virtual methods
.method addError(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 156
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fErrors:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method addFailure(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 150
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fFailures:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method addRunTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 162
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fRunTests:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/swing/event/TreeModelListener;

    .prologue
    .line 38
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fModelListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fModelListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method public findTest(Ljunit/framework/Test;Ljunit/framework/Test;Ljava/util/Vector;)I
    .locals 6
    .param p1, "target"    # Ljunit/framework/Test;
    .param p2, "node"    # Ljunit/framework/Test;
    .param p3, "path"    # Ljava/util/Vector;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {p0, p2}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object v2

    .line 56
    .local v2, "suite":Ljunit/framework/TestSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0, p2}, Ljunit/swingui/TestTreeModel;->getChildCount(Ljava/lang/Object;)I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 57
    invoke-virtual {v2, v0}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v3

    .line 58
    .local v3, "t":Ljunit/framework/Test;
    invoke-virtual {p0, p1, v3, p3}, Ljunit/swingui/TestTreeModel;->findTest(Ljunit/framework/Test;Ljunit/framework/Test;Ljava/util/Vector;)I

    move-result v1

    .line 59
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 60
    invoke-virtual {p3, p2, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 61
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move v0, v1

    .line 63
    goto :goto_0

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "index":I
    .end local v3    # "t":Ljunit/framework/Test;
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public fireNodeChanged(Ljavax/swing/tree/TreePath;I)V
    .locals 7
    .param p1, "path"    # Ljavax/swing/tree/TreePath;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    new-array v3, v5, [I

    aput p2, v3, v6

    .line 73
    .local v3, "indices":[I
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Ljunit/swingui/TestTreeModel;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v6

    .line 74
    .local v0, "changedChildren":[Ljava/lang/Object;
    new-instance v2, Ljavax/swing/event/TreeModelEvent;

    invoke-direct {v2, p0, p1, v3, v0}, Ljavax/swing/event/TreeModelEvent;-><init>(Ljava/lang/Object;Ljavax/swing/tree/TreePath;[I[Ljava/lang/Object;)V

    .line 76
    .local v2, "event":Ljavax/swing/event/TreeModelEvent;
    iget-object v5, p0, Ljunit/swingui/TestTreeModel;->fModelListeners:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 77
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/swing/event/TreeModelListener;

    .line 79
    .local v4, "l":Ljavax/swing/event/TreeModelListener;
    invoke-interface {v4, v2}, Ljavax/swing/event/TreeModelListener;->treeNodesChanged(Ljavax/swing/event/TreeModelEvent;)V

    goto :goto_0

    .line 81
    .end local v4    # "l":Ljavax/swing/event/TreeModelListener;
    :cond_0
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object v0

    .line 87
    .local v0, "suite":Ljunit/framework/TestSuite;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "parent"    # Ljava/lang/Object;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object v0

    .line 96
    .local v0, "suite":Ljunit/framework/TestSuite;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object v2

    .line 105
    .local v2, "suite":Ljunit/framework/TestSuite;
    if-eqz v2, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "i":I
    invoke-virtual {v2}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 107
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fRoot:Ljunit/framework/Test;

    return-object v0
.end method

.method isError(Ljunit/framework/Test;)Z
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 174
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fErrors:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fErrors:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFailure(Ljunit/framework/Test;)Z
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 180
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fFailures:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fFailures:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 130
    instance-of v1, p1, Ljunit/framework/TestSuite;

    if-eqz v1, :cond_0

    .line 131
    check-cast p1, Ljunit/framework/TestSuite;

    .line 136
    .end local p1    # "node":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 132
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljunit/extensions/TestDecorator;

    if-eqz v1, :cond_1

    .line 133
    check-cast p1, Ljunit/extensions/TestDecorator;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {p1}, Ljunit/extensions/TestDecorator;->getTest()Ljunit/framework/Test;

    move-result-object v0

    .line 134
    .local v0, "baseTest":Ljunit/framework/Test;
    invoke-virtual {p0, v0}, Ljunit/swingui/TestTreeModel;->isTestSuite(Ljava/lang/Object;)Ljunit/framework/TestSuite;

    move-result-object p1

    goto :goto_0

    .line 136
    .end local v0    # "baseTest":Ljunit/framework/Test;
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/swing/event/TreeModelListener;

    .prologue
    .line 45
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fModelListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method resetResults()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fFailures:Ljava/util/Hashtable;

    .line 187
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fRunTests:Ljava/util/Hashtable;

    .line 188
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestTreeModel;->fErrors:Ljava/util/Hashtable;

    .line 189
    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 2
    .param p1, "path"    # Ljavax/swing/tree/TreePath;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TreeModel.valueForPathChanged: not implemented"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method wasRun(Ljunit/framework/Test;)Z
    .locals 1
    .param p1, "t"    # Ljunit/framework/Test;

    .prologue
    .line 168
    iget-object v0, p0, Ljunit/swingui/TestTreeModel;->fRunTests:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
