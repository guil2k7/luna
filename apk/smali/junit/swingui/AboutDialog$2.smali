.class Ljunit/swingui/AboutDialog$2;
.super Ljava/awt/event/WindowAdapter;
.source "AboutDialog.java"


# instance fields
.field private final this$0:Ljunit/swingui/AboutDialog;


# direct methods
.method constructor <init>(Ljunit/swingui/AboutDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/swingui/AboutDialog;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ljunit/swingui/AboutDialog$2;->this$0:Ljunit/swingui/AboutDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 84
    iget-object v0, p0, Ljunit/swingui/AboutDialog$2;->this$0:Ljunit/swingui/AboutDialog;

    invoke-virtual {v0}, Ljunit/swingui/AboutDialog;->dispose()V

    .line 85
    return-void
.end method
