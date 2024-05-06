.class Lcom/wardrumstudios/utils/WarHttp$MyVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "WarHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyVerifier"
.end annotation


# instance fields
.field private final delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarHttp;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarHttp;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarHttp;
    .param p2, "delegate"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->this$0:Lcom/wardrumstudios/utils/WarHttp;

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 209
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "ok":Z
    :try_start_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljavax/net/ssl/SSLException;
    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p2, v3

    .line 219
    .local v0, "cn":Ljava/lang/String;
    const-string v5, "*."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onmodulus.net"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 224
    :cond_1
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 225
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 224
    invoke-interface {v5, p1, v6, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    const/4 v2, 0x1

    .line 218
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "cn":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_0

    throw v1

    .line 227
    .restart local v0    # "cn":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
