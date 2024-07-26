.class Ljunit/swingui/TestSelector$TestCellRenderer;
.super Ljavax/swing/DefaultListCellRenderer;
.source "TestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/TestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestCellRenderer"
.end annotation


# instance fields
.field fLeafIcon:Ljavax/swing/Icon;

.field fSuiteIcon:Ljavax/swing/Icon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/swing/DefaultListCellRenderer;-><init>()V

    .line 57
    const-string v0, "Tree.leafIcon"

    invoke-static {v0}, Ljavax/swing/UIManager;->getIcon(Ljava/lang/Object;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestSelector$TestCellRenderer;->fLeafIcon:Ljavax/swing/Icon;

    .line 58
    const-string v0, "Tree.closedIcon"

    invoke-static {v0}, Ljavax/swing/UIManager;->getIcon(Ljava/lang/Object;)Ljavax/swing/Icon;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestSelector$TestCellRenderer;->fSuiteIcon:Ljavax/swing/Icon;

    .line 59
    return-void
.end method

.method public static displayString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 77
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 78
    .local v0, "typeIndex":I
    if-gez v0, :cond_0

    .line 80
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static matchesKey(Ljava/lang/String;C)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ch"    # C

    .prologue
    .line 84
    invoke-static {p0}, Ljunit/swingui/TestSelector$TestCellRenderer;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static typeIndex(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 89
    .local v1, "typeIndex":I
    const/4 v0, 0x0

    .line 90
    .local v0, "i":I
    if-lez v1, :cond_0

    .line 91
    add-int/lit8 v0, v1, 0x1

    .line 92
    :cond_0
    return v0
.end method


# virtual methods
.method public getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
    .locals 3
    .param p1, "list"    # Ljavax/swing/JList;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "modelIndex"    # I
    .param p4, "isSelected"    # Z
    .param p5, "cellHasFocus"    # Z

    .prologue
    .line 64
    invoke-super/range {p0 .. p5}, Ljavax/swing/DefaultListCellRenderer;->getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/awt/Component;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljunit/swingui/TestSelector$TestCellRenderer;->displayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "displayString":Ljava/lang/String;
    const-string v2, "AllTests"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Ljunit/swingui/TestSelector$TestCellRenderer;->fSuiteIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v2}, Ljunit/swingui/TestSelector$TestCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 72
    :goto_0
    invoke-virtual {p0, v1}, Ljunit/swingui/TestSelector$TestCellRenderer;->setText(Ljava/lang/String;)V

    .line 73
    return-object v0

    .line 70
    :cond_0
    iget-object v2, p0, Ljunit/swingui/TestSelector$TestCellRenderer;->fLeafIcon:Ljavax/swing/Icon;

    invoke-virtual {p0, v2}, Ljunit/swingui/TestSelector$TestCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    goto :goto_0
.end method
