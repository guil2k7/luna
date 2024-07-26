.class Ljunit/awtui/AboutDialog;
.super Ljava/awt/Dialog;
.source "AboutDialog.java"


# direct methods
.method public constructor <init>(Ljava/awt/Frame;)V
    .locals 13
    .param p1, "parent"    # Ljava/awt/Frame;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/awt/Dialog;-><init>(Ljava/awt/Frame;)V

    .line 22
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljunit/awtui/AboutDialog;->setResizable(Z)V

    .line 23
    new-instance v8, Ljava/awt/GridBagLayout;

    invoke-direct {v8}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {p0, v8}, Ljunit/awtui/AboutDialog;->setLayout(Ljava/awt/LayoutManager;)V

    .line 24
    const/16 v8, 0x14a

    const/16 v9, 0x8a

    invoke-virtual {p0, v8, v9}, Ljunit/awtui/AboutDialog;->setSize(II)V

    .line 25
    const-string v8, "About"

    invoke-virtual {p0, v8}, Ljunit/awtui/AboutDialog;->setTitle(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/awt/Button;

    const-string v8, "Close"

    invoke-direct {v0, v8}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "button":Ljava/awt/Button;
    new-instance v8, Ljunit/awtui/AboutDialog$1;

    invoke-direct {v8, p0}, Ljunit/awtui/AboutDialog$1;-><init>(Ljunit/awtui/AboutDialog;)V

    invoke-virtual {v0, v8}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 36
    new-instance v5, Ljava/awt/Label;

    const-string v8, "JUnit"

    invoke-direct {v5, v8}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 37
    .local v5, "label1":Ljava/awt/Label;
    new-instance v8, Ljava/awt/Font;

    const-string v9, "dialog"

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-direct {v8, v9, v10, v11}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v8}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 39
    new-instance v6, Ljava/awt/Label;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "JUnit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " by Kent Beck and Erich Gamma"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 40
    .local v6, "label2":Ljava/awt/Label;
    new-instance v8, Ljava/awt/Font;

    const-string v9, "dialog"

    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-direct {v8, v9, v10, v11}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v8}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 42
    new-instance v7, Ljunit/awtui/Logo;

    invoke-direct {v7}, Ljunit/awtui/Logo;-><init>()V

    .line 44
    .local v7, "logo":Ljunit/awtui/Logo;
    new-instance v2, Ljava/awt/GridBagConstraints;

    invoke-direct {v2}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 45
    .local v2, "constraintsLabel1":Ljava/awt/GridBagConstraints;
    const/4 v8, 0x3

    iput v8, v2, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x0

    iput v8, v2, Ljava/awt/GridBagConstraints;->gridy:I

    .line 46
    const/4 v8, 0x1

    iput v8, v2, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v8, 0x1

    iput v8, v2, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 47
    const/16 v8, 0xa

    iput v8, v2, Ljava/awt/GridBagConstraints;->anchor:I

    .line 48
    invoke-virtual {p0, v5, v2}, Ljunit/awtui/AboutDialog;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 50
    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 51
    .local v3, "constraintsLabel2":Ljava/awt/GridBagConstraints;
    const/4 v8, 0x2

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x1

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 52
    const/4 v8, 0x2

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v8, 0x1

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 53
    const/16 v8, 0xa

    iput v8, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 54
    invoke-virtual {p0, v6, v3}, Ljunit/awtui/AboutDialog;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 56
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 57
    .local v1, "constraintsButton1":Ljava/awt/GridBagConstraints;
    const/4 v8, 0x2

    iput v8, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x2

    iput v8, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 58
    const/4 v8, 0x2

    iput v8, v1, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v8, 0x1

    iput v8, v1, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 59
    const/16 v8, 0xa

    iput v8, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 60
    new-instance v8, Ljava/awt/Insets;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v8, v1, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 61
    invoke-virtual {p0, v0, v1}, Ljunit/awtui/AboutDialog;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 63
    new-instance v4, Ljava/awt/GridBagConstraints;

    invoke-direct {v4}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 64
    .local v4, "constraintsLogo1":Ljava/awt/GridBagConstraints;
    const/4 v8, 0x2

    iput v8, v4, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x0

    iput v8, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 65
    const/4 v8, 0x1

    iput v8, v4, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v8, 0x1

    iput v8, v4, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 66
    const/16 v8, 0xa

    iput v8, v4, Ljava/awt/GridBagConstraints;->anchor:I

    .line 67
    invoke-virtual {p0, v7, v4}, Ljunit/awtui/AboutDialog;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 69
    new-instance v8, Ljunit/awtui/AboutDialog$2;

    invoke-direct {v8, p0}, Ljunit/awtui/AboutDialog$2;-><init>(Ljunit/awtui/AboutDialog;)V

    invoke-virtual {p0, v8}, Ljunit/awtui/AboutDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 76
    return-void
.end method
