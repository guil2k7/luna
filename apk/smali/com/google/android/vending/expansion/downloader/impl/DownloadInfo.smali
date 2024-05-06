.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public mControl:I

.field public mCurrentBytes:J

.field public mETag:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public final mIndex:I

.field mInitialized:Z

.field public mLastMod:J

.field public mNumFailed:I

.field public mRedirectCount:I

.field public mRetryAfter:I

.field public mStatus:I

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFuzz:I

    .line 44
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    .line 46
    return-void
.end method


# virtual methods
.method public resetDownload()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 49
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 51
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    .line 52
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 53
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    .line 54
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 55
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 56
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 57
    return-void
.end method
