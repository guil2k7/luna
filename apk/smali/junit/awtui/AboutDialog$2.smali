.class Ljunit/awtui/AboutDialog$2;
.super Ljava/awt/event/WindowAdapter;
.source "AboutDialog.java"


# instance fields
.field private final this$0:Ljunit/awtui/AboutDialog;


# direct methods
.method constructor <init>(Ljunit/awtui/AboutDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/AboutDialog;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ljunit/awtui/AboutDialog$2;->this$0:Ljunit/awtui/AboutDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 72
    iget-object v0, p0, Ljunit/awtui/AboutDialog$2;->this$0:Ljunit/awtui/AboutDialog;

    invoke-virtual {v0}, Ljunit/awtui/AboutDialog;->dispose()V

    .line 73
    return-void
.end method
