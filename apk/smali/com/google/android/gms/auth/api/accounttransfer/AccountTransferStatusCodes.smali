.class public final Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final CHALLENGE_NOT_ALLOWED:I = 0x5017

.field public static final INVALID_REQUEST:I = 0x5016

.field public static final NOT_ALLOWED_SECURITY:I = 0x5014

.field public static final NO_DATA_AVAILABLE:I = 0x5015

.field public static final SESSION_INACTIVE:I = 0x5018


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    .line 9
    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    packed-switch p0, :pswitch_data_0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2
    :pswitch_0
    const-string v0, "NOT_ALLOWED_SECURITY"

    goto :goto_0

    .line 3
    :pswitch_1
    const-string v0, "NO_DATA_AVAILABLE"

    goto :goto_0

    .line 4
    :pswitch_2
    const-string v0, "INVALID_REQUEST"

    goto :goto_0

    .line 5
    :pswitch_3
    const-string v0, "CHALLENGE_NOT_ALLOWED"

    goto :goto_0

    .line 6
    :pswitch_4
    const-string v0, "SESSION_INACTIVE"

    goto :goto_0

    .line 1
    nop

    :pswitch_data_0
    .packed-switch 0x5014
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
