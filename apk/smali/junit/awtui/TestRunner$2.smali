.class Ljunit/awtui/TestRunner$2;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Ljunit/awtui/TestRunner;


# direct methods
.method constructor <init>(Ljunit/awtui/TestRunner;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/awtui/TestRunner;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljunit/awtui/TestRunner$2;->this$0:Ljunit/awtui/TestRunner;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "event"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 159
    return-void
.end method
