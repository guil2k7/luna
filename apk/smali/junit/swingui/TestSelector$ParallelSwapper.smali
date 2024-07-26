.class Ljunit/swingui/TestSelector$ParallelSwapper;
.super Ljava/lang/Object;
.source "TestSelector.java"

# interfaces
.implements Ljunit/runner/Sorter$Swapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/TestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParallelSwapper"
.end annotation


# instance fields
.field fOther:Ljava/util/Vector;

.field private final this$0:Ljunit/swingui/TestSelector;


# direct methods
.method constructor <init>(Ljunit/swingui/TestSelector;Ljava/util/Vector;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestSelector;
    .param p2, "other"    # Ljava/util/Vector;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->this$0:Ljunit/swingui/TestSelector;

    .line 274
    iput-object p2, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->fOther:Ljava/util/Vector;

    .line 275
    return-void
.end method


# virtual methods
.method public swap(Ljava/util/Vector;II)V
    .locals 4
    .param p1, "values"    # Ljava/util/Vector;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 277
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "tmp":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 279
    invoke-virtual {p1, v0, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 280
    iget-object v2, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->fOther:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, "tmp2":Ljava/lang/Object;
    iget-object v2, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->fOther:Ljava/util/Vector;

    iget-object v3, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->fOther:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 282
    iget-object v2, p0, Ljunit/swingui/TestSelector$ParallelSwapper;->fOther:Ljava/util/Vector;

    invoke-virtual {v2, v1, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 283
    return-void
.end method
