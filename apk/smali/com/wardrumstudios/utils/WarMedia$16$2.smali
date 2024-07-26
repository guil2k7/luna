.class Lcom/wardrumstudios/utils/WarMedia$16$2;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$16;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wardrumstudios/utils/WarMedia$16;

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1725
    const/4 v6, 0x0

    .line 1726
    .local v6, "count":I
    :goto_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    if-nez v0, :cond_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "count":I
    .local v7, "count":I
    const/16 v0, 0xa

    if-ge v6, v0, :cond_0

    .line 1727
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wait for create"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    move v6, v7

    .end local v7    # "count":I
    .restart local v6    # "count":I
    goto :goto_0

    .end local v6    # "count":I
    .restart local v7    # "count":I
    :cond_0
    move v6, v7

    .line 1730
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    if-nez v0, :cond_2

    .line 1735
    :goto_1
    return-void

    .line 1730
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->val$length:I

    if-lez v0, :cond_3

    .line 1731
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia$16;->val$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia$16;->val$volume:F

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v3, v3, Lcom/wardrumstudios/utils/WarMedia$16;->val$offset:I

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia$16;->val$length:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1733
    :cond_3
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia$16;->val$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia$16;->val$volume:F

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V

    goto :goto_1
.end method
