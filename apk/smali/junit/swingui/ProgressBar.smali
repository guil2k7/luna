.class Ljunit/swingui/ProgressBar;
.super Ljavax/swing/JProgressBar;
.source "ProgressBar.java"


# instance fields
.field fError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljavax/swing/JProgressBar;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljunit/swingui/ProgressBar;->fError:Z

    .line 15
    invoke-virtual {p0}, Ljunit/swingui/ProgressBar;->getStatusColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/swingui/ProgressBar;->setForeground(Ljava/awt/Color;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getStatusColor()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Ljunit/swingui/ProgressBar;->fError:Z

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ljunit/swingui/ProgressBar;->fError:Z

    .line 26
    invoke-virtual {p0}, Ljunit/swingui/ProgressBar;->updateBarColor()V

    .line 27
    invoke-virtual {p0, v0}, Ljunit/swingui/ProgressBar;->setValue(I)V

    .line 28
    return-void
.end method

.method public start(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljunit/swingui/ProgressBar;->setMaximum(I)V

    .line 32
    invoke-virtual {p0}, Ljunit/swingui/ProgressBar;->reset()V

    .line 33
    return-void
.end method

.method public step(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "successful"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Ljunit/swingui/ProgressBar;->setValue(I)V

    .line 37
    iget-boolean v0, p0, Ljunit/swingui/ProgressBar;->fError:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljunit/swingui/ProgressBar;->fError:Z

    .line 39
    invoke-virtual {p0}, Ljunit/swingui/ProgressBar;->updateBarColor()V

    .line 41
    :cond_0
    return-void
.end method

.method protected updateBarColor()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Ljunit/swingui/ProgressBar;->getStatusColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/swingui/ProgressBar;->setForeground(Ljava/awt/Color;)V

    .line 45
    return-void
.end method
