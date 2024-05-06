.class Lcom/wardrumstudios/utils/WarMedia$16;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInWindow(Ljava/lang/String;IIIIFIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->val$length:I

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->val$filename:Ljava/lang/String;

    iput p4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->val$volume:F

    iput p5, p0, Lcom/wardrumstudios/utils/WarMedia$16;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, -0x3

    .line 1660
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v5, v5, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v6, v6, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v7, v7, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/wardrumstudios/utils/WarMedia;->CreateMovieView(IIII)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarMedia;->movieView:Landroid/widget/LinearLayout;

    .line 1662
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    .line 1663
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$16$1;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$16$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$16;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1693
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "movieWindowHolder setType"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1694
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1695
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1696
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v8}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1699
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movieView ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1701
    .local v0, "myParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1702
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1704
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v3, Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    .line 1705
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarMedia;->CreatTextSurface(Landroid/view/SurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    .line 1706
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v8}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1707
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PlayMovieInFile for inwindow"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1715
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    .line 1716
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$16$2;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$16$2;-><init>(Lcom/wardrumstudios/utils/WarMedia$16;)V

    .line 1730
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1731
    return-void
.end method
