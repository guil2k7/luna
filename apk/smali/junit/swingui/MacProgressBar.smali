.class public Ljunit/swingui/MacProgressBar;
.super Ljunit/swingui/ProgressBar;
.source "MacProgressBar.java"


# instance fields
.field private component:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>(Ljavax/swing/JTextField;)V
    .locals 0
    .param p1, "component"    # Ljavax/swing/JTextField;

    .prologue
    .line 13
    invoke-direct {p0}, Ljunit/swingui/ProgressBar;-><init>()V

    .line 14
    iput-object p1, p0, Ljunit/swingui/MacProgressBar;->component:Ljavax/swing/JTextField;

    .line 15
    return-void
.end method


# virtual methods
.method protected updateBarColor()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Ljunit/swingui/MacProgressBar;->component:Ljavax/swing/JTextField;

    invoke-virtual {p0}, Ljunit/swingui/MacProgressBar;->getStatusColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setBackground(Ljava/awt/Color;)V

    .line 19
    return-void
.end method
