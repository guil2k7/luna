.class public Lcom/wardrumstudios/utils/WarDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "WarDownloaderService.java"


# static fields
.field public static BASE64_PUBLIC_KEY:Ljava/lang/String;

.field public static SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/wardrumstudios/utils/WarDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 20
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wardrumstudios/utils/WarDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2at
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6bt
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/wardrumstudios/utils/WarAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wardrumstudios/utils/WarDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wardrumstudios/utils/WarDownloaderService;->SALT:[B

    return-object v0
.end method
