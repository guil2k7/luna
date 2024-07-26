.class Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;
.super Ljavax/swing/AbstractListModel;
.source "DefaultFailureDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljunit/swingui/DefaultFailureDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackTraceListModel"
.end annotation


# instance fields
.field private fLines:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/swing/AbstractListModel;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    return-void
.end method

.method private scan(Ljava/lang/String;)V
    .locals 3
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 49
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\n\r"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 44
    const/4 v0, 0x0

    iget-object v1, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fireContentsChanged(Ljava/lang/Object;II)V

    .line 45
    return-void
.end method

.method public getElementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 30
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public setTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->scan(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iget-object v1, p0, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljunit/swingui/DefaultFailureDetailView$StackTraceListModel;->fireContentsChanged(Ljava/lang/Object;II)V

    .line 40
    return-void
.end method
