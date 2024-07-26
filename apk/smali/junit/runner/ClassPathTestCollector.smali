.class public abstract Ljunit/runner/ClassPathTestCollector;
.super Ljava/lang/Object;
.source "ClassPathTestCollector.java"

# interfaces
.implements Ljunit/runner/TestCollector;


# static fields
.field static final SUFFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ".class"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected classNameFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "classFileName"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "s":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "s2":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v1    # "s2":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljunit/runner/ClassPathTestCollector;->splitClassPath(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/runner/ClassPathTestCollector;->collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/util/Hashtable;
    return-object v0
.end method

.method collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "roots"    # Ljava/util/Vector;

    .prologue
    .line 36
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 37
    .local v1, "result":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 38
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v3, v2, v1}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.method public collectTests()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 25
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "classPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/runner/ClassPathTestCollector;->collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 27
    .local v1, "result":Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "classRoot"    # Ljava/io/File;
    .param p2, "classFileName"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/util/Hashtable;

    .prologue
    .line 44
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v3, "thisRoot":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->isTestClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p3, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "contents":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 54
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 55
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "classFileName"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "Test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method splitClassPath(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 61
    .local v0, "result":Ljava/util/Vector;
    const-string v3, "path.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "separator":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method
