.class public Ljunit/awtui/ProgressBar;
.super Ljava/awt/Canvas;
.source "ProgressBar.java"


# instance fields
.field public fError:Z

.field public fProgress:I

.field public fProgressX:I

.field public fTotal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/awt/Canvas;-><init>()V

    .line 10
    iput-boolean v0, p0, Ljunit/awtui/ProgressBar;->fError:Z

    .line 11
    iput v0, p0, Ljunit/awtui/ProgressBar;->fTotal:I

    .line 12
    iput v0, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    .line 13
    iput v0, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    .line 17
    const/16 v0, 0x14

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Ljunit/awtui/ProgressBar;->setSize(II)V

    .line 18
    return-void
.end method

.method private getStatusColor()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Ljunit/awtui/ProgressBar;->fError:Z

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_0
.end method

.method private paintStep(II)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "endX"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    sub-int v1, p2, p1

    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljunit/awtui/ProgressBar;->repaint(IIII)V

    .line 51
    return-void
.end method


# virtual methods
.method public paint(Ljava/awt/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Ljunit/awtui/ProgressBar;->paintBackground(Ljava/awt/Graphics;)V

    .line 28
    invoke-virtual {p0, p1}, Ljunit/awtui/ProgressBar;->paintStatus(Ljava/awt/Graphics;)V

    .line 29
    return-void
.end method

.method public paintBackground(Ljava/awt/Graphics;)V
    .locals 5
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    const/4 v4, 0x0

    .line 32
    sget-object v1, Ljava/awt/SystemColor;->control:Ljava/awt/SystemColor;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 33
    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 34
    .local v0, "r":Ljava/awt/Rectangle;
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p1, v4, v4, v1, v2}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 35
    sget-object v1, Ljava/awt/Color;->darkGray:Ljava/awt/Color;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 36
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v4, v4, v1, v4}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 37
    iget v1, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v4, v4, v4, v1}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 38
    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 39
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v1, v4, v2, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 40
    iget v1, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4, v1, v2, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 41
    return-void
.end method

.method public paintStatus(Ljava/awt/Graphics;)V
    .locals 5
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljunit/awtui/ProgressBar;->getStatusColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 45
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 46
    .local v0, "r":Ljava/awt/Rectangle;
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v4, v4, v1, v2}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 47
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    .line 55
    iput v1, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    .line 56
    iput-boolean v1, p0, Ljunit/awtui/ProgressBar;->fError:Z

    .line 57
    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/awtui/ProgressBar;->paint(Ljava/awt/Graphics;)V

    .line 58
    return-void
.end method

.method public scale(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 61
    iget v0, p0, Ljunit/awtui/ProgressBar;->fTotal:I

    if-lez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    iget v1, v1, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p1

    iget v2, p0, Ljunit/awtui/ProgressBar;->fTotal:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 63
    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Ljava/awt/Canvas;->setBounds(IIII)V

    .line 68
    iget v0, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    invoke-virtual {p0, v0}, Ljunit/awtui/ProgressBar;->scale(I)I

    move-result v0

    iput v0, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    .line 69
    return-void
.end method

.method public start(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 72
    iput p1, p0, Ljunit/awtui/ProgressBar;->fTotal:I

    .line 73
    invoke-virtual {p0}, Ljunit/awtui/ProgressBar;->reset()V

    .line 74
    return-void
.end method

.method public step(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .prologue
    .line 77
    iget v1, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    .line 78
    iget v0, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    .line 80
    .local v0, "x":I
    iget v1, p0, Ljunit/awtui/ProgressBar;->fProgress:I

    invoke-virtual {p0, v1}, Ljunit/awtui/ProgressBar;->scale(I)I

    move-result v1

    iput v1, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    .line 82
    iget-boolean v1, p0, Ljunit/awtui/ProgressBar;->fError:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljunit/awtui/ProgressBar;->fError:Z

    .line 84
    const/4 v0, 0x1

    .line 86
    :cond_0
    iget v1, p0, Ljunit/awtui/ProgressBar;->fProgressX:I

    invoke-direct {p0, v0, v1}, Ljunit/awtui/ProgressBar;->paintStep(II)V

    .line 87
    return-void
.end method
