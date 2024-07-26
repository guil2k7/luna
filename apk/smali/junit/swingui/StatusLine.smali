.class public Ljunit/swingui/StatusLine;
.super Ljavax/swing/JTextField;
.source "StatusLine.java"


# static fields
.field public static final BOLD_FONT:Ljava/awt/Font;

.field public static final PLAIN_FONT:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 15
    new-instance v0, Ljava/awt/Font;

    const-string v1, "dialog"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljunit/swingui/StatusLine;->PLAIN_FONT:Ljava/awt/Font;

    .line 16
    new-instance v0, Ljava/awt/Font;

    const-string v1, "dialog"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljunit/swingui/StatusLine;->BOLD_FONT:Ljava/awt/Font;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "preferredWidth"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljavax/swing/JTextField;-><init>()V

    .line 20
    sget-object v1, Ljunit/swingui/StatusLine;->BOLD_FONT:Ljava/awt/Font;

    invoke-virtual {p0, v1}, Ljunit/swingui/StatusLine;->setFont(Ljava/awt/Font;)V

    .line 21
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljunit/swingui/StatusLine;->setEditable(Z)V

    .line 22
    const/4 v1, 0x1

    invoke-static {v1}, Ljavax/swing/BorderFactory;->createBevelBorder(I)Ljavax/swing/border/Border;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/swingui/StatusLine;->setBorder(Ljavax/swing/border/Border;)V

    .line 23
    invoke-virtual {p0}, Ljunit/swingui/StatusLine;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 24
    .local v0, "d":Ljava/awt/Dimension;
    iput p1, v0, Ljava/awt/Dimension;->width:I

    .line 25
    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 26
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setText(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setToolTipText(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Ljunit/swingui/StatusLine;->BOLD_FONT:Ljava/awt/Font;

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setFont(Ljava/awt/Font;)V

    .line 36
    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setForeground(Ljava/awt/Color;)V

    .line 37
    invoke-virtual {p0, p1}, Ljunit/swingui/StatusLine;->setText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Ljunit/swingui/StatusLine;->setToolTipText(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Ljunit/swingui/StatusLine;->PLAIN_FONT:Ljava/awt/Font;

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setFont(Ljava/awt/Font;)V

    .line 30
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {p0, v0}, Ljunit/swingui/StatusLine;->setForeground(Ljava/awt/Color;)V

    .line 31
    invoke-virtual {p0, p1}, Ljunit/swingui/StatusLine;->setText(Ljava/lang/String;)V

    .line 32
    return-void
.end method
