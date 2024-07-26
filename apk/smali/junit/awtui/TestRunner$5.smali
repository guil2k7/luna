.class Ljunit/awtui/TestRunner$5;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/TextListener;


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$5;->this$0:Ljunit/awtui/TestRunner;

    return-void
.end method


# virtual methods
.method public textValueChanged(Ljava/awt/event/TextEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/TextEvent;

    .prologue
    .line 214
    iget-object v0, p0, Ljunit/awtui/TestRunner$5;->this$0:Ljunit/awtui/TestRunner;

    iget-object v1, v0, Ljunit/awtui/TestRunner;->fRun:Ljava/awt/Button;

    iget-object v0, p0, Ljunit/awtui/TestRunner$5;->this$0:Ljunit/awtui/TestRunner;

    iget-object v0, v0, Ljunit/awtui/TestRunner;->fSuiteField:Ljava/awt/TextField;

    invoke-virtual {v0}, Ljava/awt/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/awt/Button;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Ljunit/awtui/TestRunner$5;->this$0:Ljunit/awtui/TestRunner;

    iget-object v0, v0, Ljunit/awtui/TestRunner;->fStatusLine:Ljava/awt/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 216
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
