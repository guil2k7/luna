.class public Ljunit/extensions/RepeatedTest;
.super Ljunit/extensions/TestDecorator;
.source "RepeatedTest.java"


# instance fields
.field private fTimesRepeat:I


# direct methods
.method public constructor <init>(Ljunit/framework/Test;I)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "repeat"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    .line 15
    if-gez p2, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repetition count must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput p2, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    .line 18
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Ljunit/extensions/TestDecorator;->countTestCases()I

    move-result v0

    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljunit/extensions/RepeatedTest;->fTimesRepeat:I

    if-ge v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-super {p0, p1}, Ljunit/extensions/TestDecorator;->run(Ljunit/framework/TestResult;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljunit/extensions/TestDecorator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "(repeated)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
