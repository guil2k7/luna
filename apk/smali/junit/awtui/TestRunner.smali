.class public Ljunit/awtui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"


# static fields
.field private static final GAP:I = 0x4

.field protected static final PLAIN_FONT:Ljava/awt/Font;

.field static class$junit$runner$BaseTestRunner:Ljava/lang/Class;


# instance fields
.field protected fExceptions:Ljava/util/Vector;

.field protected fFailedTests:Ljava/util/Vector;

.field protected fFailureList:Ljava/awt/List;

.field protected fFrame:Ljava/awt/Frame;

.field protected fLogo:Ljunit/awtui/Logo;

.field protected fNumberOfErrors:Ljava/awt/Label;

.field protected fNumberOfFailures:Ljava/awt/Label;

.field protected fNumberOfRuns:Ljava/awt/Label;

.field protected fProgressIndicator:Ljunit/awtui/ProgressBar;

.field protected fQuitButton:Ljava/awt/Button;

.field protected fRerunButton:Ljava/awt/Button;

.field protected fRun:Ljava/awt/Button;

.field protected fRunner:Ljava/lang/Thread;

.field protected fStatusLine:Ljava/awt/TextField;

.field protected fSuiteField:Ljava/awt/TextField;

.field protected fTestResult:Ljunit/framework/TestResult;

.field protected fTraceArea:Ljava/awt/TextArea;

.field protected fUseLoadingRunner:Ljava/awt/Checkbox;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/awt/Font;

    const-string v1, "dialog"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 77
    return-void
.end method

.method private about()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x1

    .line 80
    new-instance v0, Ljunit/awtui/AboutDialog;

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFrame:Ljava/awt/Frame;

    invoke-direct {v0, v1}, Ljunit/awtui/AboutDialog;-><init>(Ljava/awt/Frame;)V

    .line 81
    .local v0, "about":Ljunit/awtui/AboutDialog;
    invoke-virtual {v0, v2}, Ljunit/awtui/AboutDialog;->setModal(Z)V

    .line 82
    invoke-virtual {v0, v3, v3}, Ljunit/awtui/AboutDialog;->setLocation(II)V

    .line 83
    invoke-virtual {v0, v2}, Ljunit/awtui/AboutDialog;->setVisible(Z)V

    .line 84
    return-void
.end method

.method static access$000(Ljunit/awtui/TestRunner;)V
    .locals 0
    .param p0, "x0"    # Ljunit/awtui/TestRunner;

    .prologue
    .line 52
    invoke-direct {p0}, Ljunit/awtui/TestRunner;->about()V

    return-void
.end method

.method static access$100(Ljunit/awtui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/awtui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    return-void
.end method

.method static access$200(Ljunit/awtui/TestRunner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljunit/awtui/TestRunner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljunit/awtui/TestRunner;->showStatus(Ljava/lang/String;)V

    return-void
.end method

.method private addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V
    .locals 1
    .param p1, "counter"    # Ljava/awt/Panel;
    .param p2, "comp"    # Ljava/awt/Component;
    .param p3, "gridx"    # I
    .param p4, "gridy"    # I
    .param p5, "gridwidth"    # I
    .param p6, "gridheight"    # I
    .param p7, "weightx"    # D
    .param p9, "weighty"    # D
    .param p11, "anchor"    # I
    .param p12, "fill"    # I
    .param p13, "insets"    # Ljava/awt/Insets;

    .prologue
    .line 376
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 377
    .local v0, "constraints":Ljava/awt/GridBagConstraints;
    iput p3, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 378
    iput p4, v0, Ljava/awt/GridBagConstraints;->gridy:I

    .line 379
    iput p5, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 380
    iput p6, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 381
    iput-wide p7, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 382
    iput-wide p9, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 383
    iput p11, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 384
    iput p12, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 385
    iput-object p13, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 386
    invoke-virtual {p1, p2, v0}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method private appendFailure(Ljava/lang/String;Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Ljunit/awtui/TestRunner;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_0
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v1, p1}, Ljava/awt/List;->add(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fExceptions:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFailedTests:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v1}, Ljava/awt/List;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/awt/List;->select(I)V

    .line 134
    invoke-virtual {p0}, Ljunit/awtui/TestRunner;->failureSelected()V

    .line 136
    :cond_1
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 402
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

.method private isErrorSelected()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v0}, Ljava/awt/List;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFrameIcon()Ljava/awt/Image;
    .locals 4

    .prologue
    .line 400
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    .line 402
    .local v0, "toolkit":Ljava/awt/Toolkit;
    :try_start_0
    sget-object v2, Ljunit/awtui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "junit.runner.BaseTestRunner"

    invoke-static {v2}, Ljunit/awtui/TestRunner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ljunit/awtui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    :goto_0
    const-string v3, "smalllogo.gif"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 403
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/image/ImageProducer;

    invoke-virtual {v0, v2}, Ljava/awt/Toolkit;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v2

    .line 406
    .end local v1    # "url":Ljava/net/URL;
    :goto_1
    return-object v2

    .line 402
    :cond_0
    sget-object v2, Ljunit/awtui/TestRunner;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    .line 406
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Ljunit/awtui/TestRunner;

    invoke-direct {v0}, Ljunit/awtui/TestRunner;-><init>()V

    invoke-virtual {v0, p0}, Ljunit/awtui/TestRunner;->start([Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private rerunTest(Ljunit/framework/Test;)V
    .locals 8
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 432
    instance-of v6, p1, Ljunit/framework/TestCase;

    if-nez v6, :cond_0

    .line 433
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

    invoke-direct {p0, v6}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v2, 0x0

    .local v2, "reloadedTest":Ljunit/framework/Test;
    move-object v4, p1

    .line 437
    check-cast v4, Ljunit/framework/TestCase;

    .line 439
    .local v4, "rerunTest":Ljunit/framework/TestCase;
    :try_start_0
    invoke-virtual {p0}, Ljunit/awtui/TestRunner;->getLoader()Ljunit/runner/TestSuiteLoader;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljunit/runner/TestSuiteLoader;->reload(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 440
    .local v3, "reloadedTestClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 445
    new-instance v5, Ljunit/framework/TestResult;

    invoke-direct {v5}, Ljunit/framework/TestResult;-><init>()V

    .line 446
    .local v5, "result":Ljunit/framework/TestResult;
    invoke-interface {v2, v5}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 448
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v5}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 450
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " was successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "reloadedTestClass":Ljava/lang/Class;
    .end local v5    # "result":Ljunit/framework/TestResult;
    :catch_0
    move-exception v0

    .line 442
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

    invoke-direct {p0, v6}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v3    # "reloadedTestClass":Ljava/lang/Class;
    .restart local v5    # "result":Ljunit/framework/TestResult;
    :cond_1
    invoke-virtual {v5}, Ljunit/framework/TestResult;->errorCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 452
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " had an error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljunit/awtui/TestRunner;->showStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 454
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

    invoke-direct {p0, v6}, Ljunit/awtui/TestRunner;->showStatus(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 3
    .param p0, "test"    # Ljava/lang/Class;

    .prologue
    .line 418
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 419
    .local v0, "args":[Ljava/lang/String;
    invoke-static {v0}, Ljunit/awtui/TestRunner;->main([Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private setLabelValue(Ljava/awt/Label;I)V
    .locals 1
    .param p1, "label"    # Ljava/awt/Label;
    .param p2, "value"    # I

    .prologue
    .line 522
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Ljava/awt/Label;->invalidate()V

    .line 524
    invoke-virtual {p1}, Ljava/awt/Label;->getParent()Ljava/awt/Container;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Container;->validate()V

    .line 526
    return-void
.end method

.method private shouldReload()Z
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Ljunit/awtui/TestRunner;->inVAJava()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljunit/awtui/TestRunner;->fUseLoadingRunner:Ljava/awt/Checkbox;

    invoke-virtual {v0}, Ljava/awt/Checkbox;->getState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorTrace()V
    .locals 4

    .prologue
    .line 533
    iget-object v2, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v2}, Ljava/awt/List;->getSelectedIndex()I

    move-result v0

    .line 534
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Ljunit/awtui/TestRunner;->fExceptions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 538
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    invoke-static {v1}, Ljunit/awtui/TestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v1, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    .line 544
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v1, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/awt/TextField;->setForeground(Ljava/awt/Color;)V

    .line 545
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    invoke-virtual {v0, p1}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private showStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v1, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    .line 554
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/awt/TextField;->setForeground(Ljava/awt/Color;)V

    .line 555
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    invoke-virtual {v0, p1}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 556
    return-void
.end method


# virtual methods
.method protected addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V
    .locals 9
    .param p1, "p"    # Ljava/awt/Panel;
    .param p2, "co"    # Ljava/awt/Component;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "fill"    # I
    .param p7, "wx"    # D
    .param p9, "anchor"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 111
    new-instance v2, Ljava/awt/GridBagConstraints;

    invoke-direct {v2}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 112
    .local v2, "c":Ljava/awt/GridBagConstraints;
    iput p3, v2, Ljava/awt/GridBagConstraints;->gridx:I

    iput p4, v2, Ljava/awt/GridBagConstraints;->gridy:I

    .line 113
    iput p5, v2, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 114
    move/from16 v0, p9

    iput v0, v2, Ljava/awt/GridBagConstraints;->anchor:I

    .line 115
    move-wide/from16 v0, p7

    iput-wide v0, v2, Ljava/awt/GridBagConstraints;->weightx:D

    .line 116
    iput p6, v2, Ljava/awt/GridBagConstraints;->fill:I

    .line 117
    const/4 v5, 0x1

    if-eq p6, v5, :cond_0

    const/4 v5, 0x3

    if-ne p6, v5, :cond_1

    .line 118
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v2, Ljava/awt/GridBagConstraints;->weighty:D

    .line 119
    :cond_1
    new-instance v6, Ljava/awt/Insets;

    if-nez p4, :cond_3

    move v5, v4

    :goto_0
    if-nez p3, :cond_2

    move v3, v4

    :cond_2
    invoke-direct {v6, v5, v3, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v6, v2, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 120
    invoke-virtual {p1, p2, v2}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 121
    return-void

    :cond_3
    move v5, v3

    .line 119
    goto :goto_0
.end method

.method protected clearStatus()V
    .locals 1

    .prologue
    .line 549
    const-string v0, ""

    invoke-direct {p0, v0}, Ljunit/awtui/TestRunner;->showStatus(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method protected createCounterPanel()Ljava/awt/Panel;
    .locals 21

    .prologue
    .line 324
    new-instance v6, Ljava/awt/Panel;

    new-instance v4, Ljava/awt/GridBagLayout;

    invoke-direct {v4}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-direct {v6, v4}, Ljava/awt/Panel;-><init>(Ljava/awt/LayoutManager;)V

    .line 325
    .local v6, "numbersPanel":Ljava/awt/Panel;
    new-instance v7, Ljava/awt/Label;

    const-string v4, "Runs:"

    invoke-direct {v7, v4}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v7, v0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide v12, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x2

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x28

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 339
    new-instance v7, Ljava/awt/Label;

    const-string v4, "Errors:"

    invoke-direct {v7, v4}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v7, v0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide v12, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x2

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x28

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 353
    new-instance v7, Ljava/awt/Label;

    const-string v4, "Failures:"

    invoke-direct {v7, v4}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v7, v0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide v12, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x2

    new-instance v18, Ljava/awt/Insets;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v18}, Ljunit/awtui/TestRunner;->addToCounterPanel(Ljava/awt/Panel;Ljava/awt/Component;IIIIDDIILjava/awt/Insets;)V

    .line 367
    return-object v6
.end method

.method protected createJUnitMenu()Ljava/awt/Menu;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/awt/Menu;

    const-string v2, "JUnit"

    invoke-direct {v0, v2}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "menu":Ljava/awt/Menu;
    new-instance v1, Ljava/awt/MenuItem;

    const-string v2, "About..."

    invoke-direct {v1, v2}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "mi":Ljava/awt/MenuItem;
    new-instance v2, Ljunit/awtui/TestRunner$1;

    invoke-direct {v2, p0}, Ljunit/awtui/TestRunner$1;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v1, v2}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 151
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 153
    invoke-virtual {v0}, Ljava/awt/Menu;->addSeparator()V

    .line 154
    new-instance v1, Ljava/awt/MenuItem;

    .end local v1    # "mi":Ljava/awt/MenuItem;
    const-string v2, "Exit"

    invoke-direct {v1, v2}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v1    # "mi":Ljava/awt/MenuItem;
    new-instance v2, Ljunit/awtui/TestRunner$2;

    invoke-direct {v2, p0}, Ljunit/awtui/TestRunner$2;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v1, v2}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 163
    return-object v0
.end method

.method protected createMenus(Ljava/awt/MenuBar;)V
    .locals 1
    .param p1, "mb"    # Ljava/awt/MenuBar;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljunit/awtui/TestRunner;->createJUnitMenu()Ljava/awt/Menu;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    .line 168
    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method protected createUI(Ljava/lang/String;)Ljava/awt/Frame;
    .locals 24
    .param p1, "suiteName"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v19, Ljava/awt/Frame;

    const-string v3, "JUnit"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    .line 175
    .local v19, "frame":Ljava/awt/Frame;
    invoke-direct/range {p0 .. p0}, Ljunit/awtui/TestRunner;->loadFrameIcon()Ljava/awt/Image;

    move-result-object v20

    .line 176
    .local v20, "icon":Ljava/awt/Image;
    if-eqz v20, :cond_0

    .line 177
    invoke-virtual/range {v19 .. v20}, Ljava/awt/Frame;->setIconImage(Ljava/awt/Image;)V

    .line 179
    :cond_0
    new-instance v3, Ljava/awt/BorderLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/awt/BorderLayout;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/awt/Frame;->setLayout(Ljava/awt/LayoutManager;)V

    .line 180
    sget-object v3, Ljava/awt/SystemColor;->control:Ljava/awt/SystemColor;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/awt/Frame;->setBackground(Ljava/awt/Color;)V

    .line 181
    move-object/from16 v18, v19

    .line 183
    .local v18, "finalFrame":Ljava/awt/Frame;
    new-instance v3, Ljunit/awtui/TestRunner$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljunit/awtui/TestRunner$3;-><init>(Ljunit/awtui/TestRunner;Ljava/awt/Frame;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 192
    new-instance v21, Ljava/awt/MenuBar;

    invoke-direct/range {v21 .. v21}, Ljava/awt/MenuBar;-><init>()V

    .line 193
    .local v21, "mb":Ljava/awt/MenuBar;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljunit/awtui/TestRunner;->createMenus(Ljava/awt/MenuBar;)V

    .line 194
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setMenuBar(Ljava/awt/MenuBar;)V

    .line 197
    new-instance v5, Ljava/awt/Label;

    const-string v3, "Test class name:"

    invoke-direct {v5, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "suiteLabel":Ljava/awt/Label;
    new-instance v3, Ljava/awt/TextField;

    if-eqz p1, :cond_2

    .end local p1    # "suiteName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/awt/TextField;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    invoke-virtual {v3}, Ljava/awt/TextField;->selectAll()V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    invoke-virtual {v3}, Ljava/awt/TextField;->requestFocus()V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    sget-object v6, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    const/16 v6, 0x28

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->setColumns(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    new-instance v6, Ljunit/awtui/TestRunner$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$4;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    new-instance v6, Ljunit/awtui/TestRunner$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$5;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->addTextListener(Ljava/awt/event/TextListener;)V

    .line 219
    new-instance v3, Ljava/awt/Button;

    const-string v6, "Run"

    invoke-direct {v3, v6}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/awt/Button;->setEnabled(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    new-instance v6, Ljunit/awtui/TestRunner$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$6;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Ljunit/awtui/TestRunner;->useReloadingTestSuiteLoader()Z

    move-result v23

    .line 229
    .local v23, "useLoader":Z
    new-instance v3, Ljava/awt/Checkbox;

    const-string v6, "Reload classes every run"

    move/from16 v0, v23

    invoke-direct {v3, v6, v0}, Ljava/awt/Checkbox;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fUseLoadingRunner:Ljava/awt/Checkbox;

    .line 230
    invoke-static {}, Ljunit/awtui/TestRunner;->inVAJava()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fUseLoadingRunner:Ljava/awt/Checkbox;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/awt/Checkbox;->setVisible(Z)V

    .line 234
    :cond_1
    new-instance v3, Ljunit/awtui/ProgressBar;

    invoke-direct {v3}, Ljunit/awtui/ProgressBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fProgressIndicator:Ljunit/awtui/ProgressBar;

    .line 237
    new-instance v3, Ljava/awt/Label;

    const-string v6, "0000"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    sget-object v6, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 241
    new-instance v3, Ljava/awt/Label;

    const-string v6, "0000"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    sget-object v6, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 245
    new-instance v3, Ljava/awt/Label;

    const-string v6, "0000"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    sget-object v6, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v3, v6}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Ljunit/awtui/TestRunner;->createCounterPanel()Ljava/awt/Panel;

    move-result-object v22

    .line 252
    .local v22, "numbersPanel":Ljava/awt/Panel;
    new-instance v17, Ljava/awt/Label;

    const-string v3, "Errors and Failures:"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 254
    .local v17, "failureLabel":Ljava/awt/Label;
    new-instance v3, Ljava/awt/List;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Ljava/awt/List;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    new-instance v6, Ljunit/awtui/TestRunner$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$7;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/List;->addItemListener(Ljava/awt/event/ItemListener;)V

    .line 262
    new-instance v3, Ljava/awt/Button;

    const-string v6, "Run"

    invoke-direct {v3, v6}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/awt/Button;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    new-instance v6, Ljunit/awtui/TestRunner$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$8;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 272
    new-instance v2, Ljava/awt/Panel;

    new-instance v3, Ljava/awt/GridLayout;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-direct {v3, v6, v7, v8, v9}, Ljava/awt/GridLayout;-><init>(IIII)V

    invoke-direct {v2, v3}, Ljava/awt/Panel;-><init>(Ljava/awt/LayoutManager;)V

    .line 273
    .local v2, "failedPanel":Ljava/awt/Panel;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    invoke-virtual {v2, v3}, Ljava/awt/Panel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 275
    new-instance v3, Ljava/awt/TextArea;

    invoke-direct {v3}, Ljava/awt/TextArea;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/awt/TextArea;->setRows(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    const/16 v6, 0x3c

    invoke-virtual {v3, v6}, Ljava/awt/TextArea;->setColumns(I)V

    .line 280
    new-instance v3, Ljava/awt/TextField;

    invoke-direct {v3}, Ljava/awt/TextField;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v6, Ljunit/awtui/TestRunner;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->setEditable(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    sget-object v6, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v3, v6}, Ljava/awt/TextField;->setForeground(Ljava/awt/Color;)V

    .line 285
    new-instance v3, Ljava/awt/Button;

    const-string v6, "Exit"

    invoke-direct {v3, v6}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fQuitButton:Ljava/awt/Button;

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Ljunit/awtui/TestRunner;->fQuitButton:Ljava/awt/Button;

    new-instance v6, Ljunit/awtui/TestRunner$9;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljunit/awtui/TestRunner$9;-><init>(Ljunit/awtui/TestRunner;)V

    invoke-virtual {v3, v6}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 295
    new-instance v3, Ljunit/awtui/Logo;

    invoke-direct {v3}, Ljunit/awtui/Logo;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljunit/awtui/TestRunner;->fLogo:Ljunit/awtui/Logo;

    .line 298
    new-instance v4, Ljava/awt/Panel;

    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-direct {v4, v3}, Ljava/awt/Panel;-><init>(Ljava/awt/LayoutManager;)V

    .line 300
    .local v4, "panel":Ljava/awt/Panel;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/16 v12, 0x11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 302
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 303
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 304
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fUseLoadingRunner:Ljava/awt/Checkbox;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 305
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fProgressIndicator:Ljunit/awtui/ProgressBar;

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 306
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fLogo:Ljunit/awtui/Logo;

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xb

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 308
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v9, v22

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 310
    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v9, v17

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 311
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 312
    const/4 v10, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v2

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 313
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x11

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0xa

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 316
    move-object/from16 v0, p0

    iget-object v9, v0, Ljunit/awtui/TestRunner;->fQuitButton:Ljava/awt/Button;

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-wide/16 v14, 0x0

    const/16 v16, 0xa

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v16}, Ljunit/awtui/TestRunner;->addGrid(Ljava/awt/Panel;Ljava/awt/Component;IIIIDI)V

    .line 318
    const-string v3, "Center"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Ljava/awt/Frame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 319
    invoke-virtual/range {v19 .. v19}, Ljava/awt/Frame;->pack()V

    .line 320
    return-object v19

    .line 199
    .end local v2    # "failedPanel":Ljava/awt/Panel;
    .end local v4    # "panel":Ljava/awt/Panel;
    .end local v17    # "failureLabel":Ljava/awt/Label;
    .end local v22    # "numbersPanel":Ljava/awt/Panel;
    .end local v23    # "useLoader":Z
    .restart local p1    # "suiteName":Ljava/lang/String;
    :cond_2
    const-string p1, ""

    goto/16 :goto_0
.end method

.method public failureSelected()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    invoke-direct {p0}, Ljunit/awtui/TestRunner;->isErrorSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/awt/Button;->setEnabled(Z)V

    .line 392
    invoke-direct {p0}, Ljunit/awtui/TestRunner;->showErrorTrace()V

    .line 393
    return-void
.end method

.method public getRunner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    return-object v0
.end method

.method public rerun()V
    .locals 3

    .prologue
    .line 423
    iget-object v2, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v2}, Ljava/awt/List;->getSelectedIndex()I

    move-result v0

    .line 424
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v2, p0, Ljunit/awtui/TestRunner;->fFailedTests:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;

    .line 428
    .local v1, "test":Ljunit/framework/Test;
    invoke-direct {p0, v1}, Ljunit/awtui/TestRunner;->rerunTest(Ljunit/framework/Test;)V

    goto :goto_0
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    invoke-direct {p0, v0, v1}, Ljunit/awtui/TestRunner;->setLabelValue(Ljava/awt/Label;I)V

    .line 459
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    invoke-direct {p0, v0, v1}, Ljunit/awtui/TestRunner;->setLabelValue(Ljava/awt/Label;I)V

    .line 460
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    invoke-direct {p0, v0, v1}, Ljunit/awtui/TestRunner;->setLabelValue(Ljava/awt/Label;I)V

    .line 461
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fProgressIndicator:Ljunit/awtui/ProgressBar;

    invoke-virtual {v0}, Ljunit/awtui/ProgressBar;->reset()V

    .line 462
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fRerunButton:Ljava/awt/Button;

    invoke-virtual {v0, v1}, Ljava/awt/Button;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fFailureList:Ljava/awt/List;

    invoke-virtual {v0}, Ljava/awt/List;->removeAll()V

    .line 464
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/awtui/TestRunner;->fExceptions:Ljava/util/Vector;

    .line 465
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/awtui/TestRunner;->fFailedTests:Ljava/util/Vector;

    .line 466
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fTraceArea:Ljava/awt/TextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Ljunit/awtui/TestRunner;->showStatus(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    const-string v1, "Run"

    invoke-virtual {v0, v1}, Ljava/awt/Button;->setLabel(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    .line 474
    return-void
.end method

.method public declared-synchronized runSuite()V
    .locals 3

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1}, Ljunit/framework/TestResult;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljunit/awtui/TestRunner;->shouldReload()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljunit/awtui/TestRunner;->setLoading(Z)V

    .line 481
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    const-string v2, "Stop"

    invoke-virtual {v1, v2}, Ljava/awt/Button;->setLabel(Ljava/lang/String;)V

    .line 482
    const-string v1, "Initializing..."

    invoke-direct {p0, v1}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Ljunit/awtui/TestRunner;->reset()V

    .line 485
    const-string v1, "Load Test Case..."

    invoke-direct {p0, v1}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    invoke-virtual {v1}, Ljava/awt/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/awtui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    .line 488
    .local v0, "testSuite":Ljunit/framework/Test;
    if-eqz v0, :cond_0

    .line 489
    new-instance v1, Ljunit/awtui/TestRunner$10;

    invoke-direct {v1, p0, v0}, Ljunit/awtui/TestRunner$10;-><init>(Ljunit/awtui/TestRunner;Ljunit/framework/Test;)V

    iput-object v1, p0, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    .line 512
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fRunner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    .end local v0    # "testSuite":Ljunit/framework/Test;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSuiteName(Ljava/lang/String;)V
    .locals 1
    .param p1, "suite"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    invoke-virtual {v0, p1}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public start([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0xc8

    .line 561
    invoke-virtual {p0, p1}, Ljunit/awtui/TestRunner;->processArguments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "suiteName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/awtui/TestRunner;->createUI(Ljava/lang/String;)Ljava/awt/Frame;

    move-result-object v1

    iput-object v1, p0, Ljunit/awtui/TestRunner;->fFrame:Ljava/awt/Frame;

    .line 563
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFrame:Ljava/awt/Frame;

    invoke-virtual {v1, v2, v2}, Ljava/awt/Frame;->setLocation(II)V

    .line 564
    iget-object v1, p0, Ljunit/awtui/TestRunner;->fFrame:Ljava/awt/Frame;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/awt/Frame;->setVisible(Z)V

    .line 566
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0, v0}, Ljunit/awtui/TestRunner;->setSuiteName(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Ljunit/awtui/TestRunner;->runSuite()V

    .line 570
    :cond_0
    return-void
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 2
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfRuns:Ljava/awt/Label;

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1}, Ljunit/framework/TestResult;->runCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Ljunit/awtui/TestRunner;->setLabelValue(Ljava/awt/Label;I)V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fProgressIndicator:Ljunit/awtui/ProgressBar;

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljunit/awtui/ProgressBar;->step(Z)V

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfErrors:Ljava/awt/Label;

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1}, Ljunit/framework/TestResult;->errorCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 101
    const-string v0, "Error"

    invoke-direct {p0, v0, p2, p3}, Ljunit/awtui/TestRunner;->appendFailure(Ljava/lang/String;Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Ljunit/awtui/TestRunner;->fNumberOfFailures:Ljava/awt/Label;

    iget-object v1, p0, Ljunit/awtui/TestRunner;->fTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1}, Ljunit/framework/TestResult;->failureCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Label;->setText(Ljava/lang/String;)V

    .line 105
    const-string v0, "Failure"

    invoke-direct {p0, v0, p2, p3}, Ljunit/awtui/TestRunner;->appendFailure(Ljava/lang/String;Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/awtui/TestRunner;->showInfo(Ljava/lang/String;)V

    .line 88
    return-void
.end method
