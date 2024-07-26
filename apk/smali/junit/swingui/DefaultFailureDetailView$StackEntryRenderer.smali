.class Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;
.super Ljavax/swing/DefaultListCellRenderer;
.source "DefaultFailureDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/DefaultFailureDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackEntryRenderer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/swing/DefaultListCellRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
    .locals 7
    .param p1, "list"    # Ljavax/swing/JList;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "modelIndex"    # I
    .param p4, "isSelected"    # Z
    .param p5, "cellHasFocus"    # Z

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    const/16 v0, 0x9

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 64
    invoke-super/range {v0 .. v5}, Ljavax/swing/DefaultListCellRenderer;->getListCellRendererComponent(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;

    move-result-object v6

    .line 65
    .local v6, "c":Ljava/awt/Component;
    invoke-virtual {p0, v2}, Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v2}, Ljunit/swingui/DefaultFailureDetailView$StackEntryRenderer;->setToolTipText(Ljava/lang/String;)V

    .line 67
    return-object v6
.end method
