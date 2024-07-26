.class public Ljunit/swingui/CounterPanel;
.super Ljavax/swing/JPanel;
.source "CounterPanel.java"


# instance fields
.field private fErrorIcon:Ljavax/swing/Icon;

.field private fFailureIcon:Ljavax/swing/Icon;

.field private fNumberOfErrors:Ljavax/swing/JTextField;

.field private fNumberOfFailures:Ljavax/swing/JTextField;

.field private fNumberOfRuns:Ljavax/swing/JTextField;

.field private fTotal:I


# direct methods
.method public constructor <init>()V
    .locals 18

    .prologue
    .line 28
    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "icons/failure.gif"

    invoke-static {v2, v3}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljunit/swingui/CounterPanel;->fFailureIcon:Ljavax/swing/Icon;

    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "icons/error.gif"

    invoke-static {v2, v3}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljunit/swingui/CounterPanel;->fErrorIcon:Ljavax/swing/Icon;

    .line 29
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljunit/swingui/CounterPanel;->createOutputField(I)Ljavax/swing/JTextField;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljunit/swingui/CounterPanel;->fNumberOfErrors:Ljavax/swing/JTextField;

    .line 30
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljunit/swingui/CounterPanel;->createOutputField(I)Ljavax/swing/JTextField;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljunit/swingui/CounterPanel;->fNumberOfFailures:Ljavax/swing/JTextField;

    .line 31
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljunit/swingui/CounterPanel;->createOutputField(I)Ljavax/swing/JTextField;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljunit/swingui/CounterPanel;->fNumberOfRuns:Ljavax/swing/JTextField;

    .line 33
    new-instance v3, Ljavax/swing/JLabel;

    const-string v2, "Runs:"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/swingui/CounterPanel;->fNumberOfRuns:Ljavax/swing/JTextField;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x2

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 42
    new-instance v3, Ljavax/swing/JLabel;

    const-string v2, "Errors:"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljunit/swingui/CounterPanel;->fErrorIcon:Ljavax/swing/Icon;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;Ljavax/swing/Icon;I)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 46
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/swingui/CounterPanel;->fNumberOfErrors:Ljavax/swing/JTextField;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x2

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 51
    new-instance v3, Ljavax/swing/JLabel;

    const-string v2, "Failures:"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljunit/swingui/CounterPanel;->fFailureIcon:Ljavax/swing/Icon;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;Ljavax/swing/Icon;I)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/swingui/CounterPanel;->fNumberOfFailures:Ljavax/swing/JTextField;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v10, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x2

    new-instance v14, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v2, v15, v0, v1}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Ljunit/swingui/CounterPanel;->addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 59
    return-void
.end method

.method private createOutputField(I)Ljavax/swing/JTextField;
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 62
    new-instance v0, Ljavax/swing/JTextField;

    const-string v1, "0"

    invoke-direct {v0, v1, p1}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;I)V

    .line 64
    .local v0, "field":Ljavax/swing/JTextField;
    invoke-virtual {v0}, Ljavax/swing/JTextField;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 65
    invoke-virtual {v0}, Ljavax/swing/JTextField;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setHorizontalAlignment(I)V

    .line 67
    sget-object v1, Ljunit/swingui/StatusLine;->BOLD_FONT:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setFont(Ljava/awt/Font;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setEditable(Z)V

    .line 69
    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setBorder(Ljavax/swing/border/Border;)V

    .line 70
    return-object v0
.end method

.method private setLabelValue(Ljavax/swing/JTextField;I)V
    .locals 1
    .param p1, "label"    # Ljavax/swing/JTextField;
    .param p2, "value"    # I

    .prologue
    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public addToGrid(Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V
    .locals 2
    .param p1, "comp"    # Ljava/awt/Component;
    .param p2, "gridx"    # I
    .param p3, "gridy"    # I
    .param p4, "gridwidth"    # I
    .param p5, "gridheight"    # I
    .param p6, "weightx"    # D
    .param p8, "weighty"    # D
    .param p10, "anchor"    # I
    .param p11, "fill"    # I
    .param p12, "insets"    # Ljava/awt/Insets;

    .prologue
    .line 79
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 80
    .local v0, "constraints":Ljava/awt/GridBagConstraints;
    iput p2, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 81
    iput p3, v0, Ljava/awt/GridBagConstraints;->gridy:I

    .line 82
    iput p4, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 83
    iput p5, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 84
    iput-wide p6, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 85
    iput-wide p8, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 86
    iput p10, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 87
    iput p11, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 88
    iput-object p12, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 89
    invoke-virtual {p0, p1, v0}, Ljunit/swingui/CounterPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfErrors:Ljavax/swing/JTextField;

    invoke-direct {p0, v0, v1}, Ljunit/swingui/CounterPanel;->setLabelValue(Ljavax/swing/JTextField;I)V

    .line 94
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfFailures:Ljavax/swing/JTextField;

    invoke-direct {p0, v0, v1}, Ljunit/swingui/CounterPanel;->setLabelValue(Ljavax/swing/JTextField;I)V

    .line 95
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfRuns:Ljavax/swing/JTextField;

    invoke-direct {p0, v0, v1}, Ljunit/swingui/CounterPanel;->setLabelValue(Ljavax/swing/JTextField;I)V

    .line 96
    iput v1, p0, Ljunit/swingui/CounterPanel;->fTotal:I

    .line 97
    return-void
.end method

.method public setErrorValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 108
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfErrors:Ljavax/swing/JTextField;

    invoke-direct {p0, v0, p1}, Ljunit/swingui/CounterPanel;->setLabelValue(Ljavax/swing/JTextField;I)V

    .line 109
    return-void
.end method

.method public setFailureValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 112
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfFailures:Ljavax/swing/JTextField;

    invoke-direct {p0, v0, p1}, Ljunit/swingui/CounterPanel;->setLabelValue(Ljavax/swing/JTextField;I)V

    .line 113
    return-void
.end method

.method public setRunValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 104
    iget-object v0, p0, Ljunit/swingui/CounterPanel;->fNumberOfRuns:Ljavax/swing/JTextField;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Ljunit/swingui/CounterPanel;->fTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 100
    iput p1, p0, Ljunit/swingui/CounterPanel;->fTotal:I

    .line 101
    return-void
.end method
