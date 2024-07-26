.class public final Lcom/google/android/gms/common/api/internal/zabh;
.super Ljava/lang/Object;


# static fields
.field private static final zahw:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zam;->zacv()Lcom/google/android/gms/internal/base/zal;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    const-string v3, "GAC_Executor"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/base/zal;->zaa(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabh;->zahw:Ljava/util/concurrent/ExecutorService;

    .line 4
    return-void
.end method

.method public static zabb()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zabh;->zahw:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
