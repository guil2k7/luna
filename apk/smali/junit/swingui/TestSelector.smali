.class public Ljunit/swingui/TestSelector;
.super Ljavax/swing/JDialog;
.source "TestSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/swingui/TestSelector$ParallelSwapper;,
        Ljunit/swingui/TestSelector$KeySelectListener;,
        Ljunit/swingui/TestSelector$DoubleClickListener;,
        Ljunit/swingui/TestSelector$TestCellRenderer;
    }
.end annotation


# instance fields
.field private fCancel:Ljavax/swing/JButton;

.field private fDescription:Ljavax/swing/JLabel;

.field private fList:Ljavax/swing/JList;

.field private fOk:Ljavax/swing/JButton;

.field private fScrolledList:Ljavax/swing/JScrollPane;

.field private fSelectedItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;Ljunit/runner/TestCollector;)V
    .locals 5
    .param p1, "parent"    # Ljava/awt/Frame;
    .param p2, "testCollector"    # Ljunit/runner/TestCollector;

    .prologue
    const/4 v4, 0x0

    .line 111
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 112
    const/16 v2, 0x15e

    const/16 v3, 0x12c

    invoke-virtual {p0, v2, v3}, Ljunit/swingui/TestSelector;->setSize(II)V

    .line 113
    invoke-virtual {p0, v4}, Ljunit/swingui/TestSelector;->setResizable(Z)V

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/swingui/TestSelector;->setLocationRelativeTo(Ljava/awt/Component;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const-string v2, "Test Selector"

    invoke-virtual {p0, v2}, Ljunit/swingui/TestSelector;->setTitle(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "list":Ljava/util/Vector;
    const/4 v2, 0x3

    :try_start_1
    invoke-static {v2}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/awt/Frame;->setCursor(Ljava/awt/Cursor;)V

    .line 125
    invoke-direct {p0, p2}, Ljunit/swingui/TestSelector;->createTestList(Ljunit/runner/TestCollector;)Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 127
    invoke-static {}, Ljava/awt/Cursor;->getDefaultCursor()Ljava/awt/Cursor;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/awt/Frame;->setCursor(Ljava/awt/Cursor;)V

    .line 129
    new-instance v2, Ljavax/swing/JList;

    invoke-direct {v2, v1}, Ljavax/swing/JList;-><init>(Ljava/util/Vector;)V

    iput-object v2, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    .line 130
    iget-object v2, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v2, v4}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 131
    iget-object v2, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    new-instance v3, Ljunit/swingui/TestSelector$TestCellRenderer;

    invoke-direct {v3}, Ljunit/swingui/TestSelector$TestCellRenderer;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/swing/JList;->setCellRenderer(Ljavax/swing/ListCellRenderer;)V

    .line 132
    new-instance v2, Ljavax/swing/JScrollPane;

    iget-object v3, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-direct {v2, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iput-object v2, p0, Ljunit/swingui/TestSelector;->fScrolledList:Ljavax/swing/JScrollPane;

    .line 134
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Cancel"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljunit/swingui/TestSelector;->fCancel:Ljavax/swing/JButton;

    .line 135
    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Select the Test class:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljunit/swingui/TestSelector;->fDescription:Ljavax/swing/JLabel;

    .line 136
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "OK"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    .line 137
    iget-object v2, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v2

    iget-object v3, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    invoke-virtual {v2, v3}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    .line 140
    invoke-direct {p0}, Ljunit/swingui/TestSelector;->defineLayout()V

    .line 141
    invoke-direct {p0}, Ljunit/swingui/TestSelector;->addListeners()V

    .line 142
    return-void

    .line 117
    .end local v1    # "list":Ljava/util/Vector;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-static {p0}, Ljunit/swingui/TestSelector;->centerWindow(Ljava/awt/Component;)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "list":Ljava/util/Vector;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/awt/Cursor;->getDefaultCursor()Ljava/awt/Cursor;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/awt/Frame;->setCursor(Ljava/awt/Cursor;)V

    throw v2
.end method

.method private addListeners()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fCancel:Ljavax/swing/JButton;

    new-instance v1, Ljunit/swingui/TestSelector$1;

    invoke-direct {v1, p0}, Ljunit/swingui/TestSelector$1;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 159
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    new-instance v1, Ljunit/swingui/TestSelector$2;

    invoke-direct {v1, p0}, Ljunit/swingui/TestSelector$2;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 167
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/TestSelector$DoubleClickListener;

    invoke-direct {v1, p0}, Ljunit/swingui/TestSelector$DoubleClickListener;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 168
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/TestSelector$KeySelectListener;

    invoke-direct {v1, p0}, Ljunit/swingui/TestSelector$KeySelectListener;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 169
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    new-instance v1, Ljunit/swingui/TestSelector$3;

    invoke-direct {v1, p0}, Ljunit/swingui/TestSelector$3;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 177
    new-instance v0, Ljunit/swingui/TestSelector$4;

    invoke-direct {v0, p0}, Ljunit/swingui/TestSelector$4;-><init>(Ljunit/swingui/TestSelector;)V

    invoke-virtual {p0, v0}, Ljunit/swingui/TestSelector;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 184
    return-void
.end method

.method public static centerWindow(Ljava/awt/Component;)V
    .locals 5
    .param p0, "c"    # Ljava/awt/Component;

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 146
    .local v0, "paneSize":Ljava/awt/Dimension;
    invoke-virtual {p0}, Ljava/awt/Component;->getToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 147
    .local v1, "screenSize":Ljava/awt/Dimension;
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Ljava/awt/Dimension;->height:I

    iget v4, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/awt/Component;->setLocation(II)V

    .line 148
    return-void
.end method

.method private createTestList(Ljunit/runner/TestCollector;)Ljava/util/Vector;
    .locals 7
    .param p1, "collector"    # Ljunit/runner/TestCollector;

    .prologue
    .line 257
    invoke-interface {p1}, Ljunit/runner/TestCollector;->collectTests()Ljava/util/Enumeration;

    move-result-object v1

    .line 258
    .local v1, "each":Ljava/util/Enumeration;
    new-instance v3, Ljava/util/Vector;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 259
    .local v3, "v":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/Vector;-><init>(I)V

    .line 260
    .local v0, "displayVector":Ljava/util/Vector;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    invoke-static {v2}, Ljunit/swingui/TestSelector$TestCellRenderer;->displayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Ljunit/swingui/TestSelector$ParallelSwapper;

    invoke-direct {v6, p0, v3}, Ljunit/swingui/TestSelector$ParallelSwapper;-><init>(Ljunit/swingui/TestSelector;Ljava/util/Vector;)V

    invoke-static {v0, v4, v5, v6}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    .line 267
    :cond_1
    return-object v3
.end method

.method private defineLayout()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 187
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    new-instance v5, Ljava/awt/GridBagLayout;

    invoke-direct {v5}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v4, v5}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 188
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 189
    .local v1, "labelConstraints":Ljava/awt/GridBagConstraints;
    iput v8, v1, Ljava/awt/GridBagConstraints;->gridx:I

    iput v8, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 190
    iput v7, v1, Ljava/awt/GridBagConstraints;->gridwidth:I

    iput v7, v1, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 191
    iput v7, v1, Ljava/awt/GridBagConstraints;->fill:I

    .line 192
    const/16 v4, 0x11

    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 193
    iput-wide v10, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 194
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Ljava/awt/GridBagConstraints;->weighty:D

    .line 195
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v6, v6, v8, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v4, v1, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 196
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    iget-object v5, p0, Ljunit/swingui/TestSelector;->fDescription:Ljavax/swing/JLabel;

    invoke-virtual {v4, v5, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 198
    new-instance v2, Ljava/awt/GridBagConstraints;

    invoke-direct {v2}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 199
    .local v2, "listConstraints":Ljava/awt/GridBagConstraints;
    iput v8, v2, Ljava/awt/GridBagConstraints;->gridx:I

    iput v7, v2, Ljava/awt/GridBagConstraints;->gridy:I

    .line 200
    const/4 v4, 0x4

    iput v4, v2, Ljava/awt/GridBagConstraints;->gridwidth:I

    iput v7, v2, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 201
    iput v7, v2, Ljava/awt/GridBagConstraints;->fill:I

    .line 202
    const/16 v4, 0xa

    iput v4, v2, Ljava/awt/GridBagConstraints;->anchor:I

    .line 203
    iput-wide v10, v2, Ljava/awt/GridBagConstraints;->weightx:D

    .line 204
    iput-wide v10, v2, Ljava/awt/GridBagConstraints;->weighty:D

    .line 205
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v6, v6, v6, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v4, v2, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 206
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    iget-object v5, p0, Ljunit/swingui/TestSelector;->fScrolledList:Ljavax/swing/JScrollPane;

    invoke-virtual {v4, v5, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 208
    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 209
    .local v3, "okConstraints":Ljava/awt/GridBagConstraints;
    iput v9, v3, Ljava/awt/GridBagConstraints;->gridx:I

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 210
    iput v7, v3, Ljava/awt/GridBagConstraints;->gridwidth:I

    iput v7, v3, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 211
    const/16 v4, 0xd

    iput v4, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 212
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v8, v6, v6, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v4, v3, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 213
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    iget-object v5, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    invoke-virtual {v4, v5, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 217
    .local v0, "cancelConstraints":Ljava/awt/GridBagConstraints;
    const/4 v4, 0x3

    iput v4, v0, Ljava/awt/GridBagConstraints;->gridx:I

    iput v9, v0, Ljava/awt/GridBagConstraints;->gridy:I

    .line 218
    iput v7, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    iput v7, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 219
    const/16 v4, 0xd

    iput v4, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 220
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v8, v6, v6, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v4, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 221
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    iget-object v5, p0, Ljunit/swingui/TestSelector;->fCancel:Ljavax/swing/JButton;

    invoke-virtual {v4, v5, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 222
    return-void
.end method


# virtual methods
.method public checkEnableOK(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 3
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    .line 225
    iget-object v1, p0, Ljunit/swingui/TestSelector;->fOk:Ljavax/swing/JButton;

    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fSelectedItem:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/ListModel;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySelectTestClass(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 238
    iget-object v3, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v3}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v1

    .line 239
    .local v1, "model":Ljavax/swing/ListModel;
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljavax/swing/ListModel;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 242
    invoke-interface {v1, v0}, Ljavax/swing/ListModel;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "s":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v2, v3}, Ljunit/swingui/TestSelector$TestCellRenderer;->matchesKey(Ljava/lang/String;C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v3, v0}, Ljavax/swing/JList;->setSelectedIndex(I)V

    .line 245
    iget-object v3, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v3, v0}, Ljavax/swing/JList;->ensureIndexIsVisible(I)V

    goto :goto_0

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->beep()V

    goto :goto_0
.end method

.method public okSelected()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljunit/swingui/TestSelector;->fList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljunit/swingui/TestSelector;->fSelectedItem:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Ljunit/swingui/TestSelector;->dispose()V

    .line 231
    return-void
.end method
