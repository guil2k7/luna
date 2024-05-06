.class public Lcom/wardrumstudios/utils/WarHttp;
.super Ljava/lang/Object;
.source "WarHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarHttp$MyVerifier;
    }
.end annotation


# static fields
.field private static AddLineFeeds:Z


# instance fields
.field private timeoutSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wardrumstudios/utils/WarHttp;->AddLineFeeds:Z

    return-void
.end method

.method protected constructor <init>(Lcom/wardrumstudios/utils/WarBase;)V
    .locals 1
    .param p1, "activity"    # Lcom/wardrumstudios/utils/WarBase;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    .line 54
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 180
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 181
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 185
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-boolean v4, Lcom/wardrumstudios/utils/WarHttp;->AddLineFeeds:Z

    if-eqz v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const-string v4, "log_tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertStreamToString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 193
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 194
    :catch_2
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 193
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    :goto_2
    throw v4

    .line 194
    :catch_3
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public AddHttpGetLineFeeds(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 57
    sput-boolean p1, Lcom/wardrumstudios/utils/WarHttp;->AddLineFeeds:Z

    .line 58
    return-void
.end method

.method public HttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarHttp;->getTolerantClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 106
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    iget v9, p0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v8, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 107
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    iget v9, p0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v8, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 110
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 111
    .local v7, "website":Ljava/net/URI;
    invoke-virtual {v4, v7}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 112
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 113
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 115
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 117
    .local v3, "instream":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarHttp;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 119
    const-string v8, "log_tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpGet "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "website":Ljava/net/URI;
    :goto_0
    return-object v6

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "log_tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in http connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v8, "log_tag"

    const-string v9, "return blank string"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v6, ""

    goto :goto_0
.end method

.method public HttpGetData(Ljava/lang/String;)[B
    .locals 18
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarHttp;->getTolerantClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 132
    .local v8, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v15, v15, 0x3e8

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v15, v15, 0x3e8

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 136
    .local v10, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 137
    .local v13, "website":Ljava/net/URI;
    invoke-virtual {v10, v13}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 138
    invoke-interface {v8, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 139
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 142
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v14, "log_tag"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "entity len="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "getContentType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz v7, :cond_0

    .line 146
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 147
    .local v9, "instream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 149
    .local v2, "b":[B
    const/4 v5, 0x0

    .line 150
    .local v5, "bytesRead":I
    :goto_0
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v14, -0x1

    if-eq v5, v14, :cond_1

    .line 151
    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v2    # "b":[B
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "bytesRead":I
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "instream":Ljava/io/InputStream;
    .end local v10    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "website":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 161
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "log_tag"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in http connection "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v14, "log_tag"

    const-string v15, "return blank string"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 153
    .restart local v2    # "b":[B
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bytesRead":I
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "instream":Ljava/io/InputStream;
    .restart local v10    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "website":Ljava/net/URI;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 155
    .local v4, "bytes":[B
    invoke-static {v9}, Lcom/wardrumstudios/utils/WarHttp;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "result":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 157
    const-string v14, "log_tag"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpGet "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public HttpPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarHttp;->getTolerantClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 67
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    iget v10, p0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v10, v10, 0x3e8

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    iget v10, p0, Lcom/wardrumstudios/utils/WarHttp;->timeoutSeconds:I

    mul-int/lit16 v10, v10, 0x3e8

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 72
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v4, "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "username"

    const-string v11, "eeewardrum@gmail.com"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "password"

    const-string v11, "*"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 77
    .local v8, "website":Ljava/net/URI;
    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v9, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_0
    :try_start_2
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 87
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-string v9, "log_tag"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpPost send "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 90
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 92
    .local v3, "instream":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarHttp;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 94
    const-string v9, "log_tag"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpPost "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "website":Ljava/net/URI;
    :goto_1
    return-object v7

    .line 81
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "website":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "website":Ljava/net/URI;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "log_tag"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in http connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v9, "log_tag"

    const-string v10, "return blank string"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v7, ""

    goto :goto_1
.end method

.method public SetHttpTimeout(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 61
    return-void
.end method

.method public getTolerantClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    .prologue
    .line 168
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 170
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 172
    .local v2, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v1

    .line 173
    .local v1, "delegate":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    instance-of v3, v1, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;

    if-nez v3, :cond_0

    .line 174
    new-instance v3, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;

    invoke-direct {v3, p0, v1}, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;-><init>(Lcom/wardrumstudios/utils/WarHttp;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 176
    :cond_0
    return-object v0
.end method
