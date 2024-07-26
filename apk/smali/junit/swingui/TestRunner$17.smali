.class Ljunit/swingui/TestRunner$17;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ljunit/swingui/TestRunner;

.field private final val$button:Ljavax/swing/JButton;

.field private final val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljunit/swingui/TestRunner;Ljavax/swing/JButton;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/TestRunner;
    .param p2, "val$button"    # Ljavax/swing/JButton;
    .param p3, "val$label"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/swingui/TestRunner$17;->this$0:Ljunit/swingui/TestRunner;

    iput-object p2, p0, Ljunit/swingui/TestRunner$17;->val$button:Ljavax/swing/JButton;

    iput-object p3, p0, Ljunit/swingui/TestRunner$17;->val$label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Ljunit/swingui/TestRunner$17;->val$button:Ljavax/swing/JButton;

    iget-object v1, p0, Ljunit/swingui/TestRunner$17;->val$label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 740
    return-void
.end method
