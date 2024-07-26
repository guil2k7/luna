.class public Ljunit/awtui/Logo;
.super Ljava/awt/Canvas;
.source "Logo.java"


# static fields
.field static class$junit$runner$BaseTestRunner:Ljava/lang/Class;


# instance fields
.field private fHeight:I

.field private fImage:Ljava/awt/Image;

.field private fWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 19
    invoke-direct {p0}, Ljava/awt/Canvas;-><init>()V

    .line 20
    const-string v1, "logo.gif"

    invoke-virtual {p0, v1}, Ljunit/awtui/Logo;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v1

    iput-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    .line 21
    new-instance v0, Ljava/awt/MediaTracker;

    invoke-direct {v0, p0}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    .line 22
    .local v0, "tracker":Ljava/awt/MediaTracker;
    iget-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    .line 24
    :try_start_0
    invoke-virtual {v0}, Ljava/awt/MediaTracker;->waitForAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    iget-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    invoke-virtual {v1, p0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    iput v1, p0, Ljunit/awtui/Logo;->fWidth:I

    .line 30
    iget-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    invoke-virtual {v1, p0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    iput v1, p0, Ljunit/awtui/Logo;->fHeight:I

    .line 35
    :goto_1
    iget v1, p0, Ljunit/awtui/Logo;->fWidth:I

    iget v2, p0, Ljunit/awtui/Logo;->fHeight:I

    invoke-virtual {p0, v1, v2}, Ljunit/awtui/Logo;->setSize(II)V

    .line 36
    return-void

    .line 32
    :cond_0
    iput v3, p0, Ljunit/awtui/Logo;->fWidth:I

    .line 33
    iput v3, p0, Ljunit/awtui/Logo;->fHeight:I

    goto :goto_1

    .line 25
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
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
.method public loadImage(Ljava/lang/String;)Ljava/awt/Image;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    .line 41
    .local v0, "toolkit":Ljava/awt/Toolkit;
    :try_start_0
    sget-object v2, Ljunit/awtui/Logo;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "junit.runner.BaseTestRunner"

    invoke-static {v2}, Ljunit/awtui/Logo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ljunit/awtui/Logo;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 42
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/image/ImageProducer;

    invoke-virtual {v0, v2}, Ljava/awt/Toolkit;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v2

    .line 45
    .end local v1    # "url":Ljava/net/URL;
    :goto_1
    return-object v2

    .line 41
    :cond_0
    sget-object v2, Ljunit/awtui/Logo;->class$junit$runner$BaseTestRunner:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 45
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 7
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, p1}, Ljunit/awtui/Logo;->paintBackground(Ljava/awt/Graphics;)V

    .line 50
    iget-object v0, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Ljunit/awtui/Logo;->fImage:Ljava/awt/Image;

    iget v4, p0, Ljunit/awtui/Logo;->fWidth:I

    iget v5, p0, Ljunit/awtui/Logo;->fHeight:I

    move-object v0, p1

    move v3, v2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public paintBackground(Ljava/awt/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 55
    sget-object v0, Ljava/awt/SystemColor;->control:Ljava/awt/SystemColor;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 56
    invoke-virtual {p0}, Ljunit/awtui/Logo;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    invoke-virtual {p0}, Ljunit/awtui/Logo;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 57
    return-void
.end method
