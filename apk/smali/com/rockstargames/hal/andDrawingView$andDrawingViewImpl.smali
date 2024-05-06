.class public Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;
.super Landroid/view/View;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDrawingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "andDrawingViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andDrawingView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDrawingView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/rockstargames/hal/andDrawingView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->this$0:Lcom/rockstargames/hal/andDrawingView;

    .line 179
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->this$0:Lcom/rockstargames/hal/andDrawingView;

    iget-object v1, v1, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    .line 188
    .local v0, "s":Lcom/rockstargames/hal/andDrawingView$Shape;
    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andDrawingView$Shape;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 189
    .end local v0    # "s":Lcom/rockstargames/hal/andDrawingView$Shape;
    :cond_0
    return-void
.end method
