.class Ljunit/awtui/AboutDialog$1;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Ljunit/awtui/AboutDialog;


# direct methods
.method constructor <init>(Ljunit/awtui/AboutDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/AboutDialog;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/AboutDialog$1;->this$0:Ljunit/awtui/AboutDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 31
    iget-object v0, p0, Ljunit/awtui/AboutDialog$1;->this$0:Ljunit/awtui/AboutDialog;

    invoke-virtual {v0}, Ljunit/awtui/AboutDialog;->dispose()V

    .line 32
    return-void
.end method
