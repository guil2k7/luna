.class Ljunit/swingui/AboutDialog;
.super Ljavax/swing/JDialog;
.source "AboutDialog.java"


# static fields
.field static class$junit$runner$BaseTestRunner:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;)V
    .locals 14
    .param p1, "parent"    # Ljavax/swing/JFrame;

    .prologue
    .line 26
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 28
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljunit/swingui/AboutDialog;->setResizable(Z)V

    .line 29
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    new-instance v10, Ljava/awt/GridBagLayout;

    invoke-direct {v10}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v9, v10}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 30
    const/16 v9, 0x14a

    const/16 v10, 0x8a

    invoke-virtual {p0, v9, v10}, Ljunit/swingui/AboutDialog;->setSize(II)V

    .line 31
    const-string v9, "About"

    invoke-virtual {p0, v9}, Ljunit/swingui/AboutDialog;->setTitle(Ljava/lang/String;)V

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/swingui/AboutDialog;->setLocationRelativeTo(Ljava/awt/Component;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    new-instance v0, Ljavax/swing/JButton;

    const-string v9, "Close"

    invoke-direct {v0, v9}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "close":Ljavax/swing/JButton;
    new-instance v9, Ljunit/swingui/AboutDialog$1;

    invoke-direct {v9, p0}, Ljunit/swingui/AboutDialog$1;-><init>(Ljunit/swingui/AboutDialog;)V

    invoke-virtual {v0, v9}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 47
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    .line 48
    new-instance v6, Ljavax/swing/JLabel;

    const-string v9, "JUnit"

    invoke-direct {v6, v9}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "label1":Ljavax/swing/JLabel;
    new-instance v9, Ljava/awt/Font;

    const-string v10, "dialog"

    const/4 v11, 0x0

    const/16 v12, 0x24

    invoke-direct {v9, v10, v11, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v9}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 51
    new-instance v7, Ljavax/swing/JLabel;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "JUnit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " by Kent Beck and Erich Gamma"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 52
    .local v7, "label2":Ljavax/swing/JLabel;
    new-instance v9, Ljava/awt/Font;

    const-string v10, "dialog"

    const/4 v11, 0x0

    const/16 v12, 0xe

    invoke-direct {v9, v10, v11, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v7, v9}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 54
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->createLogo()Ljavax/swing/JLabel;

    move-result-object v8

    .line 56
    .local v8, "logo":Ljavax/swing/JLabel;
    new-instance v2, Ljava/awt/GridBagConstraints;

    invoke-direct {v2}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 57
    .local v2, "constraintsLabel1":Ljava/awt/GridBagConstraints;
    const/4 v9, 0x3

    iput v9, v2, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v9, 0x0

    iput v9, v2, Ljava/awt/GridBagConstraints;->gridy:I

    .line 58
    const/4 v9, 0x1

    iput v9, v2, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v9, 0x1

    iput v9, v2, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 59
    const/16 v9, 0xa

    iput v9, v2, Ljava/awt/GridBagConstraints;->anchor:I

    .line 60
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    invoke-virtual {v9, v6, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 62
    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 63
    .local v3, "constraintsLabel2":Ljava/awt/GridBagConstraints;
    const/4 v9, 0x2

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v9, 0x1

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 64
    const/4 v9, 0x2

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v9, 0x1

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 65
    const/16 v9, 0xa

    iput v9, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 66
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    invoke-virtual {v9, v7, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 68
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 69
    .local v1, "constraintsButton1":Ljava/awt/GridBagConstraints;
    const/4 v9, 0x2

    iput v9, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v9, 0x2

    iput v9, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 70
    const/4 v9, 0x2

    iput v9, v1, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v9, 0x1

    iput v9, v1, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 71
    const/16 v9, 0xa

    iput v9, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 72
    new-instance v9, Ljava/awt/Insets;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v9, v1, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 73
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 75
    new-instance v4, Ljava/awt/GridBagConstraints;

    invoke-direct {v4}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 76
    .local v4, "constraintsLogo1":Ljava/awt/GridBagConstraints;
    const/4 v9, 0x2

    iput v9, v4, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v9, 0x0

    iput v9, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 77
    const/4 v9, 0x1

    iput v9, v4, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v9, 0x1

    iput v9, v4, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 78
    const/16 v9, 0xa

    iput v9, v4, Ljava/awt/GridBagConstraints;->anchor:I

    .line 79
    invoke-virtual {p0}, Ljunit/swingui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 81
    new-instance v9, Ljunit/swingui/AboutDialog$2;

    invoke-direct {v9, p0}, Ljunit/swingui/AboutDialog$2;-><init>(Ljunit/swingui/AboutDialog;)V

    invoke-virtual {p0, v9}, Ljunit/swingui/AboutDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 88
    return-void

    .line 35
    .end local v0    # "close":Ljavax/swing/JButton;
    .end local v1    # "constraintsButton1":Ljava/awt/GridBagConstraints;
    .end local v2    # "constraintsLabel1":Ljava/awt/GridBagConstraints;
    .end local v3    # "constraintsLabel2":Ljava/awt/GridBagConstraints;
    .end local v4    # "constraintsLogo1":Ljava/awt/GridBagConstraints;
    .end local v6    # "label1":Ljavax/swing/JLabel;
    .end local v7    # "label2":Ljavax/swing/JLabel;
    .end local v8    # "logo":Ljavax/swing/JLabel;
    :catch_0
    move-exception v5

    .line 36
    .local v5, "e":Ljava/lang/NoSuchMethodError;
    invoke-static {p0}, Ljunit/swingui/TestSelector;->centerWindow(Ljava/awt/Component;)V

    goto/16 :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createLogo()Ljavax/swing/JLabel;
    .locals 3

    .prologue
    .line 90
    sget-object v1, Ljunit/swingui/AboutDialog;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "junit.runner.BaseTestRunner"

    invoke-static {v1}, Ljunit/swingui/AboutDialog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljunit/swingui/AboutDialog;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    :goto_0
    const-string v2, "logo.gif"

    invoke-static {v1, v2}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    .line 91
    .local v0, "icon":Ljavax/swing/Icon;
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1, v0}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    return-object v1

    .line 90
    .end local v0    # "icon":Ljavax/swing/Icon;
    :cond_0
    sget-object v1, Ljunit/swingui/AboutDialog;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    goto :goto_0
.end method
