.class Ljunit/swingui/TestHierarchyRunView$1;
.super Ljava/lang/Object;
.source "TestHierarchyRunView.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# instance fields
.field private final this$0:Ljunit/swingui/TestHierarchyRunView;


# direct methods
.method constructor <init>(Ljunit/swingui/TestHierarchyRunView;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestHierarchyRunView;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestHierarchyRunView$1;->this$0:Ljunit/swingui/TestHierarchyRunView;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/TreeSelectionEvent;

    .prologue
    .line 30
    iget-object v0, p0, Ljunit/swingui/TestHierarchyRunView$1;->this$0:Ljunit/swingui/TestHierarchyRunView;

    invoke-virtual {v0}, Ljunit/swingui/TestHierarchyRunView;->testSelected()V

    .line 31
    return-void
.end method
