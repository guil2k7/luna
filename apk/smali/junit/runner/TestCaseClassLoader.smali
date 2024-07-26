.class public Ljunit/runner/TestCaseClassLoader;
.super Ljava/lang/ClassLoader;
.source "TestCaseClassLoader.java"


# static fields
.field static final EXCLUDED_FILE:Ljava/lang/String; = "excluded.properties"


# instance fields
.field private defaultExclusions:[Ljava/lang/String;

.field private fExcluded:Ljava/util/Vector;

.field private fPathItems:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "junit.framework."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "junit.extensions."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "junit.runner."

    aput-object v2, v0, v1

    iput-object v0, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->scanPath(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljunit/runner/TestCaseClassLoader;->readExcludedPackages()V

    .line 62
    return-void
.end method

.method private getClassData(Ljava/io/File;)[B
    .locals 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x3e8

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 152
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x3e8

    new-array v0, v5, [B

    .line 154
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 160
    .end local v0    # "b":[B
    .end local v1    # "n":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 163
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    :cond_0
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return-object v5

    .line 156
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "n":I
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 157
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 163
    if-eqz v4, :cond_2

    .line 165
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    move-object v3, v4

    .line 158
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 163
    .end local v0    # "b":[B
    .end local v1    # "n":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    .line 165
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 163
    :cond_3
    :goto_6
    throw v5

    .line 166
    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_6

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "n":I
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 163
    .end local v0    # "b":[B
    .end local v1    # "n":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 160
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method private loadFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;->getClassData(Ljava/io/File;)[B

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadJarData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v8, 0x0

    .line 174
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 175
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "archive":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 205
    :goto_0
    return-object v1

    .line 179
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 184
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_1

    .line 185
    const/4 v1, 0x0

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 180
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "io":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 186
    .end local v3    # "io":Ljava/io/IOException;
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    long-to-int v6, v10

    .line 188
    .local v6, "size":I
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 189
    new-array v1, v6, [B

    .line 190
    .local v1, "data":[B
    const/4 v5, 0x0

    .line 191
    .local v5, "pos":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 192
    array-length v10, v1

    sub-int/2addr v10, v5

    invoke-virtual {v7, v1, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 193
    .local v4, "n":I
    add-int/2addr v5, v4

    goto :goto_1

    .line 195
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v7, :cond_3

    .line 201
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_2
    move-object v8, v9

    .line 196
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 199
    .end local v1    # "data":[B
    .end local v5    # "pos":I
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v10

    .line 200
    if-eqz v7, :cond_4

    .line 201
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 199
    :cond_4
    :goto_3
    throw v10

    .line 197
    :catch_1
    move-exception v10

    .line 200
    if-eqz v7, :cond_5

    .line 201
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    :cond_5
    :goto_4
    const/4 v1, 0x0

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 202
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v10

    goto :goto_4

    :catch_3
    move-exception v11

    goto :goto_3

    .restart local v1    # "data":[B
    .restart local v5    # "pos":I
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method private lookupClassData(Ljava/lang/String;)[B
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 122
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljunit/runner/TestCaseClassLoader;->isJar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadJarData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    :goto_1
    if-eqz v0, :cond_1

    .line 130
    return-object v0

    .line 127
    :cond_0
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readExcludedPackages()V
    .locals 8

    .prologue
    .line 209
    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 211
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "excluded.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 214
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_2

    .line 239
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 218
    .local v4, "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    :goto_2
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 230
    .local v3, "key":Ljava/lang/String;
    const-string v6, "excluded."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 231
    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 235
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 236
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 220
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 225
    :catch_1
    move-exception v6

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 224
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 226
    :goto_4
    throw v6

    .line 225
    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method private scanPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v2, "path.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "separator":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    .line 67
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    .line 87
    :goto_1
    return v1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isJar(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathEntry"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 94
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "c":Ljava/lang/Class;
    .local v1, "c":Ljava/lang/Class;
    move-object v2, v0

    .line 116
    .end local v1    # "c":Ljava/lang/Class;
    .local v2, "c":Ljava/lang/Class;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 100
    .end local v2    # "c":Ljava/lang/Class;
    .restart local v0    # "c":Ljava/lang/Class;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    :try_start_2
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    .end local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "c":Ljava/lang/Class;
    move-object v2, v0

    .line 103
    .end local v1    # "c":Ljava/lang/Class;
    .restart local v2    # "c":Ljava/lang/Class;
    goto :goto_0

    .line 104
    .end local v2    # "c":Ljava/lang/Class;
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 108
    :cond_1
    if-nez v0, :cond_3

    .line 109
    :try_start_3
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->lookupClassData(Ljava/lang/String;)[B

    move-result-object v3

    .line 110
    .local v3, "data":[B
    if-nez v3, :cond_2

    .line 111
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "data":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 112
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v3    # "data":[B
    :cond_2
    const/4 v4, 0x0

    :try_start_4
    array-length v5, v3

    invoke-virtual {p0, p1, v3, v4, v5}, Ljunit/runner/TestCaseClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 114
    .end local v3    # "data":[B
    :cond_3
    if-eqz p2, :cond_4

    .line 115
    invoke-virtual {p0, v0}, Ljunit/runner/TestCaseClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object v1, v0

    .end local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "c":Ljava/lang/Class;
    move-object v2, v0

    .line 116
    .end local v1    # "c":Ljava/lang/Class;
    .restart local v2    # "c":Ljava/lang/Class;
    goto :goto_0
.end method
