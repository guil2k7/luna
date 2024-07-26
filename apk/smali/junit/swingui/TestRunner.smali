.class public Ljunit/swingui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"

# interfaces
.implements Ljunit/swingui/TestRunContext;


# static fields
.field private static final FAILUREDETAILVIEW_KEY:Ljava/lang/String; = "FailureViewClass"

.field private static final GAP:I = 0x4

.field private static final HISTORY_LENGTH:I = 0x5

.field private static final TESTCOLLECTOR_KEY:Ljava/lang/String; = "TestCollectorClass"

.field static class$junit$runner$BaseTestRunner:Ljava/lang/Class;


# instance fields
.field private fCounterPanel:Ljunit/swingui/CounterPanel;

.field private fFailureView:Ljunit/runner/FailureDetailView;

.field private fFailures:Ljavax/swing/DefaultListModel;

.field protected fFrame:Ljavax/swing/JFrame;

.field private fLogo:Ljavax/swing/JLabel;

.field private fProgressIndicator:Ljunit/swingui/ProgressBar;

.field private fQuitButton:Ljavax/swing/JButton;

.field private fRerunButton:Ljavax/swing/JButton;

.field private fRun:Ljavax/swing/JButton;

.field private fRunner:Ljava/lang/Thread;

.field private fStatusLine:Ljunit/swingui/StatusLine;

.field private fSuiteCombo:Ljavax/swing/JComboBox;

.field private fTestResult:Ljunit/framework/TestResult;

.field private fTestRunViews:Ljava/util/Vector;

.field private fTestViewTab:Ljavax/swing/JTabbedPane;

.field private fUseLoadingRunner:Ljavax/swing/JCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    .line 101
    return-void
.end method

.method private about()V
    .locals 2

    .prologue
    .line 846
    new-instance v0, Ljunit/swingui/AboutDialog;

    iget-object v1, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    invoke-direct {v0, v1}, Ljunit/swingui/AboutDialog;-><init>(Ljavax/swing/JFrame;)V

    .line 847
    .local v0, "about":Ljunit/swingui/AboutDialog;
    invoke-virtual {v0}, Ljunit/swingui/AboutDialog;->show()V

    .line 848
    return-void
.end method

.method static access$000(Ljunit/swingui/TestRunner;)Ljunit/framework/TestResult;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    return-object v0
.end method

.method static access$100(Ljunit/swingui/TestRunner;)Ljunit/swingui/CounterPanel;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fCounterPanel:Ljunit/swingui/CounterPanel;

    return-object v0
.end method

.method static access$1000(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->postInfo(Ljava/lang/String;)V

    return-void
.end method

.method static access$1100(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->postStatus(Ljava/lang/String;)V

    return-void
.end method

.method static access$1200(Ljunit/swingui/TestRunner;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    return-object v0
.end method

.method static access$1300(Ljunit/swingui/TestRunner;Ljavax/swing/JButton;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljavax/swing/JButton;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljunit/swingui/TestRunner;->setButtonLabel(Ljavax/swing/JButton;Ljava/lang/String;)V

    return-void
.end method

.method static access$1402(Ljunit/swingui/TestRunner;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 75
    iput-object p1, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    return-object p1
.end method

.method static access$200(Ljunit/swingui/TestRunner;Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljunit/framework/Test;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljunit/swingui/TestRunner;->appendFailure(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    return-void
.end method

.method static access$300(Ljunit/swingui/TestRunner;)Ljunit/swingui/ProgressBar;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fProgressIndicator:Ljunit/swingui/ProgressBar;

    return-object v0
.end method

.method static access$400(Ljunit/swingui/TestRunner;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    return-object v0
.end method

.method static access$500(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->rerun()V

    return-void
.end method

.method static access$600(Ljunit/swingui/TestRunner;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;

    .prologue
    .line 75
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->about()V

    return-void
.end method

.method static access$700(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->showInfo(Ljava/lang/String;)V

    return-void
.end method

.method static access$800(Ljunit/swingui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->showStatus(Ljava/lang/String;)V

    return-void
.end method

.method static access$900(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V
    .locals 0
    .param p0, "x0"    # Ljunit/swingui/TestRunner;
    .param p1, "x1"    # Ljunit/framework/Test;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->start(Ljunit/framework/Test;)V

    return-void
.end method

.method private addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V
    .locals 9
    .param p1, "p"    # Ljavax/swing/JPanel;
    .param p2, "co"    # Ljava/awt/Component;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "fill"    # I
    .param p7, "wx"    # D
    .param p9, "anchor"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x4

    .line 487
    new-instance v2, Ljava/awt/GridBagConstraints;

    invoke-direct {v2}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 488
    .local v2, "c":Ljava/awt/GridBagConstraints;
    iput p3, v2, Ljava/awt/GridBagConstraints;->gridx:I

    iput p4, v2, Ljava/awt/GridBagConstraints;->gridy:I

    .line 489
    iput p5, v2, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 490
    move/from16 v0, p9

    iput v0, v2, Ljava/awt/GridBagConstraints;->anchor:I

    .line 491
    move-wide/from16 v0, p7

    iput-wide v0, v2, Ljava/awt/GridBagConstraints;->weightx:D

    .line 492
    iput p6, v2, Ljava/awt/GridBagConstraints;->fill:I

    .line 493
    const/4 v5, 0x1

    if-eq p6, v5, :cond_0

    const/4 v5, 0x3

    if-ne p6, v5, :cond_1

    .line 494
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v2, Ljava/awt/GridBagConstraints;->weighty:D

    .line 495
    :cond_1
    new-instance v6, Ljava/awt/Insets;

    if-nez p4, :cond_2

    move v5, v3

    :goto_0
    if-nez p3, :cond_3

    :goto_1
    invoke-direct {v6, v5, v3, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v6, v2, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 496
    invoke-virtual {p1, p2, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 497
    return-void

    .line 495
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private addToHistory(Ljava/lang/String;)V
    .locals 3
    .param p1, "suite"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v0}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v0}, Ljavax/swing/JComboBox;->removeItemAt(I)V

    .line 157
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, p1, v2}, Ljavax/swing/JComboBox;->insertItemAt(Ljava/lang/Object;I)V

    .line 158
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 165
    :goto_1
    return-void

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, p1, v2}, Ljavax/swing/JComboBox;->insertItemAt(Ljava/lang/Object;I)V

    .line 163
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 164
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->pruneHistory()V

    goto :goto_1
.end method

.method private appendFailure(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fFailures:Ljavax/swing/DefaultListModel;

    new-instance v1, Ljunit/framework/TestFailure;

    invoke-direct {v1, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fFailures:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0}, Ljavax/swing/DefaultListModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->revealFailure(Ljunit/framework/Test;)V

    .line 179
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 293
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

.method private doRunTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 691
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    const-string v1, "Stop"

    invoke-direct {p0, v0, v1}, Ljunit/swingui/TestRunner;->setButtonLabel(Ljavax/swing/JButton;Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljunit/swingui/TestRunner$16;

    const-string v1, "TestRunner-Thread"

    invoke-direct {v0, p0, v1, p1}, Ljunit/swingui/TestRunner$16;-><init>(Ljunit/swingui/TestRunner;Ljava/lang/String;Ljunit/framework/Test;)V

    iput-object v0, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    .line 715
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    iput-object v0, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    .line 716
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p0}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 717
    invoke-virtual {p0, p1}, Ljunit/swingui/TestRunner;->aboutToStart(Ljunit/framework/Test;)V

    .line 719
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 720
    return-void
.end method

.method public static getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 838
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 839
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Warning: could not load \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 840
    const/4 v1, 0x0

    .line 842
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-direct {v1, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    goto :goto_0
.end method

.method private getSettingsFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 582
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "home":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, ".junitsession"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private loadFrameIcon()Ljava/awt/Image;
    .locals 3

    .prologue
    .line 558
    sget-object v1, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "junit.runner.BaseTestRunner"

    invoke-static {v1}, Ljunit/swingui/TestRunner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    :goto_0
    const-string v2, "smalllogo.gif"

    invoke-static {v1, v2}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    check-cast v0, Ljavax/swing/ImageIcon;

    .line 559
    .local v0, "icon":Ljavax/swing/ImageIcon;
    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v1

    .line 561
    :goto_1
    return-object v1

    .line 558
    .end local v0    # "icon":Ljavax/swing/ImageIcon;
    :cond_0
    sget-object v1, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    goto :goto_0

    .line 561
    .restart local v0    # "icon":Ljavax/swing/ImageIcon;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadHistory(Ljavax/swing/JComboBox;)V
    .locals 5
    .param p1, "combo"    # Ljavax/swing/JComboBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {p0}, Ljunit/swingui/TestRunner;->getSettingsFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 566
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 569
    .local v1, "itemCount":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p1, v2}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    if-lez v1, :cond_1

    .line 574
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 579
    return-void

    .line 577
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljunit/swingui/TestRunner;

    invoke-direct {v0}, Ljunit/swingui/TestRunner;-><init>()V

    invoke-virtual {v0, p0}, Ljunit/swingui/TestRunner;->start([Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private postInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 587
    new-instance v0, Ljunit/swingui/TestRunner$14;

    invoke-direct {v0, p0, p1}, Ljunit/swingui/TestRunner$14;-><init>(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method private postStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Ljunit/swingui/TestRunner$15;

    invoke-direct {v0, p0, p1}, Ljunit/swingui/TestRunner$15;-><init>(Ljunit/swingui/TestRunner;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method private pruneHistory()V
    .locals 4

    .prologue
    .line 168
    const-string v2, "maxhistory"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljunit/swingui/TestRunner;->getPreference(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "historyLength":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 171
    :cond_0
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    .line 172
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v2, v1}, Ljavax/swing/JComboBox;->removeItemAt(I)V

    .line 171
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method private rerun()V
    .locals 4

    .prologue
    .line 611
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    iget-object v3, p0, Ljunit/swingui/TestRunner;->fTestViewTab:Ljavax/swing/JTabbedPane;

    invoke-virtual {v3}, Ljavax/swing/JTabbedPane;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/swingui/TestRunView;

    .line 612
    .local v1, "view":Ljunit/swingui/TestRunView;
    invoke-interface {v1}, Ljunit/swingui/TestRunView;->getSelectedTest()Ljunit/framework/Test;

    move-result-object v0

    .line 613
    .local v0, "rerunTest":Ljunit/framework/Test;
    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0, v0}, Ljunit/swingui/TestRunner;->rerunTest(Ljunit/framework/Test;)V

    .line 615
    :cond_0
    return-void
.end method

.method private rerunTest(Ljunit/framework/Test;)V
    .locals 8
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 618
    instance-of v6, p1, Ljunit/framework/TestCase;

    if-nez v6, :cond_0

    .line 619
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not reload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/swingui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 622
    :cond_0
    const/4 v2, 0x0

    .local v2, "reloadedTest":Ljunit/framework/Test;
    move-object v4, p1

    .line 623
    check-cast v4, Ljunit/framework/TestCase;

    .line 626
    .local v4, "rerunTest":Ljunit/framework/TestCase;
    :try_start_0
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->getLoader()Ljunit/runner/TestSuiteLoader;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljunit/runner/TestSuiteLoader;->reload(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 627
    .local v3, "reloadedTestClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 632
    new-instance v5, Ljunit/framework/TestResult;

    invoke-direct {v5}, Ljunit/framework/TestResult;-><init>()V

    .line 633
    .local v5, "result":Ljunit/framework/TestResult;
    invoke-interface {v2, v5}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 635
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v5}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 637
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " was successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/swingui/TestRunner;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "reloadedTestClass":Ljava/lang/Class;
    .end local v5    # "result":Ljunit/framework/TestResult;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not reload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/swingui/TestRunner;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v3    # "reloadedTestClass":Ljava/lang/Class;
    .restart local v5    # "result":Ljunit/framework/TestResult;
    :cond_1
    invoke-virtual {v5}, Ljunit/framework/TestResult;->errorCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 639
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " had an error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/swingui/TestRunner;->showStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " had a failure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/swingui/TestRunner;->showStatus(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private revealFailure(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 182
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/swingui/TestRunView;

    .line 184
    .local v1, "v":Ljunit/swingui/TestRunView;
    invoke-interface {v1, p1}, Ljunit/swingui/TestRunView;->revealFailure(Ljunit/framework/Test;)V

    goto :goto_0

    .line 186
    .end local v1    # "v":Ljunit/swingui/TestRunView;
    :cond_0
    return-void
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 3
    .param p0, "test"    # Ljava/lang/Class;

    .prologue
    .line 108
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    .local v0, "args":[Ljava/lang/String;
    invoke-static {v0}, Ljunit/swingui/TestRunner;->main([Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private saveHistory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {p0}, Ljunit/swingui/TestRunner;->getSettingsFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 725
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v3}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 726
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v3, v1}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "testsuite":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 728
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "testsuite":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 733
    return-void

    .line 731
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v3
.end method

.method private setButtonLabel(Ljavax/swing/JButton;Ljava/lang/String;)V
    .locals 1
    .param p1, "button"    # Ljavax/swing/JButton;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 736
    new-instance v0, Ljunit/swingui/TestRunner$17;

    invoke-direct {v0, p0, p1, p2}, Ljunit/swingui/TestRunner$17;-><init>(Ljunit/swingui/TestRunner;Ljavax/swing/JButton;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method private shouldReload()Z
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Ljunit/swingui/TestRunner;->inVAJava()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljunit/swingui/TestRunner;->fUseLoadingRunner:Ljavax/swing/JCheckBox;

    invoke-virtual {v0}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFailureDetail(Ljunit/framework/Test;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 751
    if-eqz p1, :cond_1

    .line 752
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->getFailures()Ljavax/swing/ListModel;

    move-result-object v1

    .line 753
    .local v1, "failures":Ljavax/swing/ListModel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljavax/swing/ListModel;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 754
    invoke-interface {v1, v2}, Ljavax/swing/ListModel;->getElementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestFailure;

    .line 755
    .local v0, "failure":Ljunit/framework/TestFailure;
    invoke-virtual {v0}, Ljunit/framework/TestFailure;->failedTest()Ljunit/framework/Test;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 756
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFailureView:Ljunit/runner/FailureDetailView;

    invoke-interface {v3, v0}, Ljunit/runner/FailureDetailView;->showFailure(Ljunit/framework/TestFailure;)V

    .line 762
    .end local v0    # "failure":Ljunit/framework/TestFailure;
    .end local v1    # "failures":Ljavax/swing/ListModel;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 753
    .restart local v0    # "failure":Ljunit/framework/TestFailure;
    .restart local v1    # "failures":Ljavax/swing/ListModel;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v0    # "failure":Ljunit/framework/TestFailure;
    .end local v1    # "failures":Ljavax/swing/ListModel;
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFailureView:Ljunit/runner/FailureDetailView;

    invoke-interface {v3}, Ljunit/runner/FailureDetailView;->clear()V

    goto :goto_1
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 765
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    invoke-virtual {v0, p1}, Ljunit/swingui/StatusLine;->showInfo(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private showStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 769
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    invoke-virtual {v0, p1}, Ljunit/swingui/StatusLine;->showError(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method private start(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 788
    new-instance v0, Ljunit/swingui/TestRunner$18;

    invoke-direct {v0, p0, p1}, Ljunit/swingui/TestRunner$18;-><init>(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method private synchUI()V
    .locals 1

    .prologue
    .line 804
    :try_start_0
    new-instance v0, Ljunit/swingui/TestRunner$19;

    invoke-direct {v0, p0}, Ljunit/swingui/TestRunner$19;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected aboutToStart(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 189
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/swingui/TestRunView;

    .line 191
    .local v1, "v":Ljunit/swingui/TestRunView;
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-interface {v1, p1, v2}, Ljunit/swingui/TestRunView;->aboutToStart(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    goto :goto_0

    .line 193
    .end local v1    # "v":Ljunit/swingui/TestRunView;
    :cond_0
    return-void
.end method

.method public browseTestClasses()V
    .locals 5

    .prologue
    .line 531
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->createTestCollector()Ljunit/runner/TestCollector;

    move-result-object v1

    .line 532
    .local v1, "collector":Ljunit/runner/TestCollector;
    new-instance v2, Ljunit/swingui/TestSelector;

    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    invoke-direct {v2, v3, v1}, Ljunit/swingui/TestSelector;-><init>(Ljava/awt/Frame;Ljunit/runner/TestCollector;)V

    .line 533
    .local v2, "selector":Ljunit/swingui/TestSelector;
    invoke-virtual {v2}, Ljunit/swingui/TestSelector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    const-string v4, "No Test Cases found.\nCheck that the configured \'TestCollector\' is supported on this platform."

    invoke-static {v3, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {v2}, Ljunit/swingui/TestSelector;->show()V

    .line 538
    invoke-virtual {v2}, Ljunit/swingui/TestSelector;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Ljunit/swingui/TestRunner;->setSuite(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected clearStatus()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    invoke-virtual {v0}, Ljunit/swingui/StatusLine;->clear()V

    .line 834
    return-void
.end method

.method protected createBrowseButton()Ljava/awt/Component;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "..."

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "browse":Ljavax/swing/JButton;
    const-string v1, "Select a Test class"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    .line 345
    new-instance v1, Ljunit/swingui/TestRunner$10;

    invoke-direct {v1, p0}, Ljunit/swingui/TestRunner$10;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 352
    return-object v0
.end method

.method protected createCounterPanel()Ljunit/swingui/CounterPanel;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Ljunit/swingui/CounterPanel;

    invoke-direct {v0}, Ljunit/swingui/CounterPanel;-><init>()V

    return-object v0
.end method

.method protected createFailedPanel()Ljavax/swing/JPanel;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/GridLayout;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v1, v4, v2, v4, v3}, Ljava/awt/GridLayout;-><init>(IIII)V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 214
    .local v0, "failedPanel":Ljavax/swing/JPanel;
    new-instance v1, Ljavax/swing/JButton;

    const-string v2, "Run"

    invoke-direct {v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    .line 215
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    new-instance v2, Ljunit/swingui/TestRunner$4;

    invoke-direct {v2, p0}, Ljunit/swingui/TestRunner$4;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 223
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 224
    return-object v0
.end method

.method protected createFailureDetailView()Ljunit/runner/FailureDetailView;
    .locals 5

    .prologue
    .line 228
    const-string v3, "FailureViewClass"

    invoke-static {v3}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "viewClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/runner/FailureDetailView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v2    # "viewClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 234
    .restart local v2    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    const-string v4, "Could not create Failure DetailView - using default view"

    invoke-static {v3, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "viewClass":Ljava/lang/Class;
    :cond_0
    new-instance v3, Ljunit/swingui/DefaultFailureDetailView;

    invoke-direct {v3}, Ljunit/swingui/DefaultFailureDetailView;-><init>()V

    goto :goto_0
.end method

.method protected createFrame()Ljavax/swing/JFrame;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    new-instance v0, Ljavax/swing/JFrame;

    const-string v2, "JUnit"

    invoke-direct {v0, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "frame":Ljavax/swing/JFrame;
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->loadFrameIcon()Ljava/awt/Image;

    move-result-object v1

    .line 277
    .local v1, "icon":Ljava/awt/Image;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setIconImage(Ljava/awt/Image;)V

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    new-instance v3, Ljava/awt/BorderLayout;

    invoke-direct {v3, v4, v4}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 281
    new-instance v2, Ljunit/swingui/TestRunner$7;

    invoke-direct {v2, p0}, Ljunit/swingui/TestRunner$7;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 288
    return-object v0
.end method

.method protected createJUnitMenu()Ljavax/swing/JMenu;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Ljavax/swing/JMenu;

    const-string v3, "JUnit"

    invoke-direct {v0, v3}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "menu":Ljavax/swing/JMenu;
    const/16 v3, 0x4a

    invoke-virtual {v0, v3}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 248
    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v3, "About..."

    invoke-direct {v1, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "mi1":Ljavax/swing/JMenuItem;
    new-instance v3, Ljunit/swingui/TestRunner$5;

    invoke-direct {v3, p0}, Ljunit/swingui/TestRunner$5;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 256
    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 257
    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 259
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 260
    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, " Exit "

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, "mi2":Ljavax/swing/JMenuItem;
    new-instance v3, Ljunit/swingui/TestRunner$6;

    invoke-direct {v3, p0}, Ljunit/swingui/TestRunner$6;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 268
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 269
    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 271
    return-object v0
.end method

.method protected createLogo()Ljavax/swing/JLabel;
    .locals 4

    .prologue
    .line 293
    sget-object v2, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "junit.runner.BaseTestRunner"

    invoke-static {v2}, Ljunit/swingui/TestRunner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    :goto_0
    const-string v3, "logo.gif"

    invoke-static {v2, v3}, Ljunit/swingui/TestRunner;->getIconResource(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v0

    .line 294
    .local v0, "icon":Ljavax/swing/Icon;
    if-eqz v0, :cond_1

    .line 295
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1, v0}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    .line 298
    .local v1, "label":Ljavax/swing/JLabel;
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JUnit Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setToolTipText(Ljava/lang/String;)V

    .line 299
    return-object v1

    .line 293
    .end local v0    # "icon":Ljavax/swing/Icon;
    .end local v1    # "label":Ljavax/swing/JLabel;
    :cond_0
    sget-object v2, Ljunit/swingui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    goto :goto_0

    .line 297
    .restart local v0    # "icon":Ljavax/swing/Icon;
    :cond_1
    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "JV"

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .restart local v1    # "label":Ljavax/swing/JLabel;
    goto :goto_1
.end method

.method protected createMenus(Ljavax/swing/JMenuBar;)V
    .locals 1
    .param p1, "mb"    # Ljavax/swing/JMenuBar;

    .prologue
    .line 303
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->createJUnitMenu()Ljavax/swing/JMenu;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 304
    return-void
.end method

.method protected createQuitButton()Ljavax/swing/JButton;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, " Exit "

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "quit":Ljavax/swing/JButton;
    new-instance v1, Ljunit/swingui/TestRunner$8;

    invoke-direct {v1, p0}, Ljunit/swingui/TestRunner$8;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 326
    return-object v0
.end method

.method protected createRunButton()Ljavax/swing/JButton;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Run"

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "run":Ljavax/swing/JButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 332
    new-instance v1, Ljunit/swingui/TestRunner$9;

    invoke-direct {v1, p0}, Ljunit/swingui/TestRunner$9;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 339
    return-object v0
.end method

.method protected createStatusLine()Ljunit/swingui/StatusLine;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljunit/swingui/StatusLine;

    const/16 v1, 0x17c

    invoke-direct {v0, v1}, Ljunit/swingui/StatusLine;-><init>(I)V

    return-object v0
.end method

.method protected createSuiteCombo()Ljavax/swing/JComboBox;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    .line 361
    .local v0, "combo":Ljavax/swing/JComboBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setLightWeightPopupEnabled(Z)V

    .line 364
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getEditor()Ljavax/swing/ComboBoxEditor;

    move-result-object v1

    invoke-interface {v1}, Ljavax/swing/ComboBoxEditor;->getEditorComponent()Ljava/awt/Component;

    move-result-object v1

    new-instance v2, Ljunit/swingui/TestRunner$11;

    invoke-direct {v2, p0}, Ljunit/swingui/TestRunner$11;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v1, v2}, Ljava/awt/Component;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 374
    :try_start_0
    invoke-direct {p0, v0}, Ljunit/swingui/TestRunner;->loadHistory(Ljavax/swing/JComboBox;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    new-instance v1, Ljunit/swingui/TestRunner$12;

    invoke-direct {v1, p0}, Ljunit/swingui/TestRunner$12;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItemListener(Ljava/awt/event/ItemListener;)V

    .line 387
    return-object v0

    .line 375
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method createTestCollector()Ljunit/runner/TestCollector;
    .locals 5

    .prologue
    .line 544
    const-string v3, "TestCollectorClass"

    invoke-static {v3}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "collectorClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/runner/TestCollector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v1    # "collectorClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 550
    .restart local v1    # "collectorClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    const-string v4, "Could not create TestCollector - using default collector"

    invoke-static {v3, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 554
    .end local v1    # "collectorClass":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljunit/runner/SimpleTestCollector;

    invoke-direct {v3}, Ljunit/runner/SimpleTestCollector;-><init>()V

    goto :goto_0
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method protected createTestRunViews()Ljavax/swing/JTabbedPane;
    .locals 4

    .prologue
    .line 391
    new-instance v1, Ljavax/swing/JTabbedPane;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljavax/swing/JTabbedPane;-><init>(I)V

    .line 393
    .local v1, "pane":Ljavax/swing/JTabbedPane;
    new-instance v0, Ljunit/swingui/FailureRunView;

    invoke-direct {v0, p0}, Ljunit/swingui/FailureRunView;-><init>(Ljunit/swingui/TestRunContext;)V

    .line 394
    .local v0, "lv":Ljunit/swingui/FailureRunView;
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v0, v1}, Ljunit/swingui/FailureRunView;->addTab(Ljavax/swing/JTabbedPane;)V

    .line 397
    new-instance v2, Ljunit/swingui/TestHierarchyRunView;

    invoke-direct {v2, p0}, Ljunit/swingui/TestHierarchyRunView;-><init>(Ljunit/swingui/TestRunContext;)V

    .line 398
    .local v2, "tv":Ljunit/swingui/TestHierarchyRunView;
    iget-object v3, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v2, v1}, Ljunit/swingui/TestHierarchyRunView;->addTab(Ljavax/swing/JTabbedPane;)V

    .line 401
    new-instance v3, Ljunit/swingui/TestRunner$13;

    invoke-direct {v3, p0}, Ljunit/swingui/TestRunner$13;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JTabbedPane;->addChangeListener(Ljavax/swing/event/ChangeListener;)V

    .line 408
    return-object v1
.end method

.method protected createUI(Ljava/lang/String;)Ljavax/swing/JFrame;
    .locals 25
    .param p1, "suiteName"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createFrame()Ljavax/swing/JFrame;

    move-result-object v22

    .line 422
    .local v22, "frame":Ljavax/swing/JFrame;
    new-instance v23, Ljavax/swing/JMenuBar;

    invoke-direct/range {v23 .. v23}, Ljavax/swing/JMenuBar;-><init>()V

    .line 423
    .local v23, "mb":Ljavax/swing/JMenuBar;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljunit/swingui/TestRunner;->createMenus(Ljavax/swing/JMenuBar;)V

    .line 424
    invoke-virtual/range {v22 .. v23}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 426
    new-instance v5, Ljavax/swing/JLabel;

    const-string v3, "Test class name:"

    invoke-direct {v5, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, "suiteLabel":Ljavax/swing/JLabel;
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createSuiteCombo()Ljavax/swing/JComboBox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    .line 428
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createRunButton()Ljavax/swing/JButton;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    .line 429
    invoke-virtual/range {v22 .. v22}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    invoke-virtual {v3, v6}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createBrowseButton()Ljava/awt/Component;

    move-result-object v2

    .line 432
    .local v2, "browseButton":Ljava/awt/Component;
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createUseLoaderCheckBox()Ljavax/swing/JCheckBox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fUseLoadingRunner:Ljavax/swing/JCheckBox;

    .line 434
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createStatusLine()Ljunit/swingui/StatusLine;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    .line 435
    invoke-static {}, Ljunit/swingui/TestRunner;->inMac()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    new-instance v3, Ljunit/swingui/MacProgressBar;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    invoke-direct {v3, v6}, Ljunit/swingui/MacProgressBar;-><init>(Ljavax/swing/JTextField;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fProgressIndicator:Ljunit/swingui/ProgressBar;

    .line 439
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createCounterPanel()Ljunit/swingui/CounterPanel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fCounterPanel:Ljunit/swingui/CounterPanel;

    .line 441
    new-instance v3, Ljavax/swing/DefaultListModel;

    invoke-direct {v3}, Ljavax/swing/DefaultListModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fFailures:Ljavax/swing/DefaultListModel;

    .line 443
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createTestRunViews()Ljavax/swing/JTabbedPane;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fTestViewTab:Ljavax/swing/JTabbedPane;

    .line 444
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createFailedPanel()Ljavax/swing/JPanel;

    move-result-object v21

    .line 446
    .local v21, "failedPanel":Ljavax/swing/JPanel;
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createFailureDetailView()Ljunit/runner/FailureDetailView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fFailureView:Ljunit/runner/FailureDetailView;

    .line 447
    new-instance v24, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/swingui/TestRunner;->fFailureView:Ljunit/runner/FailureDetailView;

    invoke-interface {v3}, Ljunit/runner/FailureDetailView;->getComponent()Ljava/awt/Component;

    move-result-object v3

    const/16 v6, 0x16

    const/16 v7, 0x20

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v6, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    .line 451
    .local v24, "tracePane":Ljavax/swing/JScrollPane;
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createQuitButton()Ljavax/swing/JButton;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fQuitButton:Ljavax/swing/JButton;

    .line 452
    invoke-virtual/range {p0 .. p0}, Ljunit/swingui/TestRunner;->createLogo()Ljavax/swing/JLabel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fLogo:Ljavax/swing/JLabel;

    .line 454
    new-instance v4, Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-direct {v4, v3}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 456
    .local v4, "panel":Ljavax/swing/JPanel;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/16 v12, 0x11

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 457
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 458
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v2

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 459
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 461
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fUseLoadingRunner:Ljavax/swing/JCheckBox;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 465
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fProgressIndicator:Ljunit/swingui/ProgressBar;

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 466
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fLogo:Ljavax/swing/JLabel;

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xb

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 468
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/swingui/TestRunner;->fCounterPanel:Ljunit/swingui/CounterPanel;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 469
    new-instance v9, Ljavax/swing/JSeparator;

    invoke-direct {v9}, Ljavax/swing/JSeparator;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 470
    new-instance v9, Ljavax/swing/JLabel;

    const-string v3, "Results:"

    invoke-direct {v9, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 472
    new-instance v9, Ljavax/swing/JSplitPane;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljunit/swingui/TestRunner;->fTestViewTab:Ljavax/swing/JTabbedPane;

    move-object/from16 v0, v24

    invoke-direct {v9, v3, v6, v0}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    .line 473
    .local v9, "splitter":Ljavax/swing/JSplitPane;
    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v16}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 475
    const/4 v14, 0x2

    const/4 v15, 0x7

    const/16 v16, 0x1

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    const/16 v20, 0xb

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, v21

    invoke-direct/range {v11 .. v20}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Ljunit/swingui/TestRunner;->fStatusLine:Ljunit/swingui/StatusLine;

    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v16, 0x2

    const/16 v17, 0x2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0xa

    move-object/from16 v11, p0

    move-object v12, v4

    invoke-direct/range {v11 .. v20}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Ljunit/swingui/TestRunner;->fQuitButton:Ljavax/swing/JButton;

    const/4 v14, 0x2

    const/16 v15, 0x9

    const/16 v16, 0x1

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    const/16 v20, 0xa

    move-object/from16 v11, p0

    move-object v12, v4

    invoke-direct/range {v11 .. v20}, Ljunit/swingui/TestRunner;->addGrid(Ljavax/swing/JPanel;Ljava/awt/Component;IIIIDI)V

    .line 480
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljavax/swing/JFrame;->setContentPane(Ljava/awt/Container;)V

    .line 481
    invoke-virtual/range {v22 .. v22}, Ljavax/swing/JFrame;->pack()V

    .line 482
    const/16 v3, 0xc8

    const/16 v6, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Ljavax/swing/JFrame;->setLocation(II)V

    .line 483
    return-object v22

    .line 438
    .end local v4    # "panel":Ljavax/swing/JPanel;
    .end local v9    # "splitter":Ljavax/swing/JSplitPane;
    .end local v21    # "failedPanel":Ljavax/swing/JPanel;
    .end local v24    # "tracePane":Ljavax/swing/JScrollPane;
    :cond_0
    new-instance v3, Ljunit/swingui/ProgressBar;

    invoke-direct {v3}, Ljunit/swingui/ProgressBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/swingui/TestRunner;->fProgressIndicator:Ljunit/swingui/ProgressBar;

    goto/16 :goto_0
.end method

.method protected createUseLoaderCheckBox()Ljavax/swing/JCheckBox;
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->useReloadingTestSuiteLoader()Z

    move-result v1

    .line 308
    .local v1, "useLoader":Z
    new-instance v0, Ljavax/swing/JCheckBox;

    const-string v2, "Reload classes every run"

    invoke-direct {v0, v2, v1}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;Z)V

    .line 309
    .local v0, "box":Ljavax/swing/JCheckBox;
    const-string v2, "Use a custom class loader to reload the classes for every run"

    invoke-virtual {v0, v2}, Ljavax/swing/JCheckBox;->setToolTipText(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Ljunit/swingui/TestRunner;->inVAJava()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/swing/JCheckBox;->setVisible(Z)V

    .line 312
    :cond_0
    return-object v0
.end method

.method public getFailures()Ljavax/swing/ListModel;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fFailures:Ljavax/swing/DefaultListModel;

    return-object v0
.end method

.method protected getSuiteText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    .line 501
    const-string v0, ""

    .line 502
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getEditor()Ljavax/swing/ComboBoxEditor;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/ComboBoxEditor;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public handleTestSelected(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 746
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljunit/framework/TestCase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 747
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->showFailureDetail(Ljunit/framework/Test;)V

    .line 748
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 510
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->textChanged()V

    .line 511
    return-void
.end method

.method protected instanciateClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "fullClassName"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 515
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 516
    .local v0, "clazz":Ljava/lang/Class;
    if-nez p2, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 527
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_0
    return-object v5

    .line 519
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    .line 520
    .local v2, "clazzParam":[Ljava/lang/Class;
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 521
    .local v1, "clazzConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 522
    .local v4, "objectParam":[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 524
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "clazzConstructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "clazzParam":[Ljava/lang/Class;
    .end local v4    # "objectParam":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 525
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 607
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->textChanged()V

    .line 608
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fCounterPanel:Ljunit/swingui/CounterPanel;

    invoke-virtual {v0}, Ljunit/swingui/CounterPanel;->reset()V

    .line 646
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fProgressIndicator:Ljunit/swingui/ProgressBar;

    invoke-virtual {v0}, Ljunit/swingui/ProgressBar;->reset()V

    .line 647
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRerunButton:Ljavax/swing/JButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fFailureView:Ljunit/runner/FailureDetailView;

    invoke-interface {v0}, Ljunit/runner/FailureDetailView;->clear()V

    .line 649
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fFailures:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0}, Ljavax/swing/DefaultListModel;->clear()V

    .line 650
    return-void
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 653
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->showStatus(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    const-string v1, "Run"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    .line 656
    return-void
.end method

.method protected runFinished(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 196
    new-instance v0, Ljunit/swingui/TestRunner$3;

    invoke-direct {v0, p0, p1}, Ljunit/swingui/TestRunner$3;-><init>(Ljunit/swingui/TestRunner;Ljunit/framework/Test;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public declared-synchronized runSuite()V
    .locals 3

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 660
    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v2}, Ljunit/framework/TestResult;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 662
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->shouldReload()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljunit/swingui/TestRunner;->setLoading(Z)V

    .line 663
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->reset()V

    .line 664
    const-string v2, "Load Test Case..."

    invoke-direct {p0, v2}, Ljunit/swingui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->getSuiteText()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "suiteName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/swingui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    .line 667
    .local v1, "testSuite":Ljunit/framework/Test;
    if-eqz v1, :cond_0

    .line 668
    invoke-direct {p0, v0}, Ljunit/swingui/TestRunner;->addToHistory(Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, v1}, Ljunit/swingui/TestRunner;->doRunTest(Ljunit/framework/Test;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    .end local v0    # "suiteName":Ljava/lang/String;
    .end local v1    # "testSuite":Ljunit/framework/Test;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized runTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "testSuite"    # Ljunit/framework/Test;

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 683
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->reset()V

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-direct {p0, p1}, Ljunit/swingui/TestRunner;->doRunTest(Ljunit/framework/Test;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuite(Ljava/lang/String;)V
    .locals 1
    .param p1, "suiteName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Ljunit/swingui/TestRunner;->fSuiteCombo:Ljavax/swing/JComboBox;

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getEditor()Ljavax/swing/ComboBoxEditor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/swing/ComboBoxEditor;->setItem(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public start([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 776
    invoke-virtual {p0, p1}, Ljunit/swingui/TestRunner;->processArguments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "suiteName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/swingui/TestRunner;->createUI(Ljava/lang/String;)Ljavax/swing/JFrame;

    move-result-object v1

    iput-object v1, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    .line 778
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    .line 779
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JFrame;->setVisible(Z)V

    .line 781
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0, v0}, Ljunit/swingui/TestRunner;->setSuite(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->runSuite()V

    .line 785
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fFrame:Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljavax/swing/JFrame;->dispose()V

    .line 820
    :try_start_0
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->saveHistory()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 825
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Couldn\'t save test run history"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljunit/swingui/TestRunner;->synchUI()V

    .line 137
    new-instance v0, Ljunit/swingui/TestRunner$2;

    invoke-direct {v0, p0}, Ljunit/swingui/TestRunner$2;-><init>(Ljunit/swingui/TestRunner;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    new-instance v0, Ljunit/swingui/TestRunner$1;

    invoke-direct {v0, p0, p1, p2, p3}, Ljunit/swingui/TestRunner$1;-><init>(Ljunit/swingui/TestRunner;ILjunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/swingui/TestRunner;->postInfo(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public testViewChanged()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fTestRunViews:Ljava/util/Vector;

    iget-object v2, p0, Ljunit/swingui/TestRunner;->fTestViewTab:Ljavax/swing/JTabbedPane;

    invoke-virtual {v2}, Ljavax/swing/JTabbedPane;->getSelectedIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/swingui/TestRunView;

    .line 413
    .local v0, "view":Ljunit/swingui/TestRunView;
    invoke-interface {v0}, Ljunit/swingui/TestRunView;->activate()V

    .line 414
    return-void
.end method

.method public textChanged()V
    .locals 2

    .prologue
    .line 828
    iget-object v1, p0, Ljunit/swingui/TestRunner;->fRun:Ljavax/swing/JButton;

    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->getSuiteText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 829
    invoke-virtual {p0}, Ljunit/swingui/TestRunner;->clearStatus()V

    .line 830
    return-void

    .line 828
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
