.class public Lcom/google/android/gms/internal/measurement/zzjt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzjt$zza;
    }
.end annotation


# static fields
.field private static volatile zzarr:Lcom/google/android/gms/internal/measurement/zzjt;


# instance fields
.field private final zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

.field private zzars:Lcom/google/android/gms/internal/measurement/zzgh;

.field private zzart:Lcom/google/android/gms/internal/measurement/zzfm;

.field private zzaru:Lcom/google/android/gms/internal/measurement/zzek;

.field private zzarv:Lcom/google/android/gms/internal/measurement/zzfr;

.field private zzarw:Lcom/google/android/gms/internal/measurement/zzjp;

.field private zzarx:Lcom/google/android/gms/internal/measurement/zzed;

.field private final zzary:Lcom/google/android/gms/internal/measurement/zzjz;

.field private zzarz:Z

.field private zzasa:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzasb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzasc:I

.field private zzasd:I

.field private zzase:Z

.field private zzasf:Z

.field private zzasg:Z

.field private zzash:Ljava/nio/channels/FileLock;

.field private zzasi:Ljava/nio/channels/FileChannel;

.field private zzasj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzasl:J

.field private zzvn:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzjy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzgn;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzgn;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzvn:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;->zzqx:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzary:Lcom/google/android/gms/internal/measurement/zzjz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfm;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzart:Lcom/google/android/gms/internal/measurement/zzfm;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzars:Lcom/google/android/gms/internal/measurement/zzgh;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;Lcom/google/android/gms/internal/measurement/zzjy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Bad channel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzjt;Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJ)Lcom/google/android/gms/internal/measurement/zzeb;
    .locals 27

    const-string v9, "Unknown"

    const-string v6, "Unknown"

    const/high16 v2, -0x80000000

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "PackageManager is null, can not log app install information"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    if-nez v9, :cond_4

    const-string v9, "manual_install"

    :cond_1
    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_3
    :try_start_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-wide/from16 v20, p7

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzeb;

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v17, ""

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v15, p4

    move/from16 v23, p5

    move/from16 v24, p6

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v9, ""

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move-object v2, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto/16 :goto_3
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzjs;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Upload Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzjt;Lcom/google/android/gms/internal/measurement/zzjy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjy;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzjy;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzek;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzek;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzaru:Lcom/google/android/gms/internal/measurement/zzek;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzars:Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zza(Lcom/google/android/gms/internal/measurement/zzej;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzed;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarx:Lcom/google/android/gms/internal/measurement/zzed;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjp;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarw:Lcom/google/android/gms/internal/measurement/zzjp;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfr;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarv:Lcom/google/android/gms/internal/measurement/zzfr;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasd:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Not all upload components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzvn:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v2, "Bad channel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v8, 0x0

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ecommerce_purchase"

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzbk(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, v6

    :cond_0
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v0, v4

    if-gtz v3, :cond_3

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v3, v0, v4

    if-ltz v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    move-wide v6, v0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaji:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzez$zza;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v10, 0x1

    aput-object p1, v5, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    const/16 v2, 0x9

    move-object v1, p1

    move-object v3, v12

    move-object v4, v12

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    move v0, v9

    :goto_4
    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v8

    goto :goto_4

    :cond_4
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_0

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkx;[Lcom/google/android/gms/internal/measurement/zzkr;)[Lcom/google/android/gms/internal/measurement/zzkp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjg()Lcom/google/android/gms/internal/measurement/zzed;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/measurement/zzed;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkr;[Lcom/google/android/gms/internal/measurement/zzkx;)[Lcom/google/android/gms/internal/measurement/zzkp;

    move-result-object v0

    return-object v0
.end method

.method private final zzab()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzea;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzaii:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzez;->zzaij:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "app_instance_id"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "platform"

    const-string v4, "android"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "gmp_version"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzgh;->zzby(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v0, "If-Modified-Since"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzjw;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/measurement/zzjw;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq;

    const/4 v4, 0x0

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>(Lcom/google/android/gms/internal/measurement/zzfm;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/measurement/zzfo;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move-object v5, v3

    goto :goto_2
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzea;)Ljava/lang/Boolean;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzd(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgh;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzcb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    move v8, v2

    :goto_1
    if-nez v8, :cond_4

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const/16 v4, 0xb

    const-string v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzha()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzgz()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzajd:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzea;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move v8, v2

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Logging event"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzb(Lcom/google/android/gms/internal/measurement/zzex;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcg(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzld()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/measurement/zzek;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagu:J

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaio:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_b

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagu:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_b
    if-eqz v10, :cond_d

    :try_start_2
    iget-wide v6, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagt:J

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaiq:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_d

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-wide v8, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const/16 v4, 0x10

    const-string v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_d
    if-eqz v12, :cond_f

    :try_start_3
    iget-wide v6, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagw:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzez;->zzaip:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzez$zza;)I

    move-result v2

    const v5, 0xf4240

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_f

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/internal/measurement/zzel;->zzagw:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_f
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeu;->zzin()Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const-string v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const-string v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const-string v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzbg(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v11, Lcom/google/android/gms/internal/measurement/zzes;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    move-object v14, v3

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/measurement/zzes;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/zzes;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzbj(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_12

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzes;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_12
    :try_start_5
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzet;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzes;->name:Ljava/lang/String;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/zzes;->timestamp:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v14, v3

    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v12, v11

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzet;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzth:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzth:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzku;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzku;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavh:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafh:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzafh:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zztg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    const-wide/32 v6, -0x80000000

    cmp-long v2, v2, v6

    if-nez v2, :cond_17

    const/4 v2, 0x0

    :goto_3
    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzawb:Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavt:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzafa:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafj:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_4
    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavx:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzbr(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafm:Z

    if-eqz v2, :cond_13

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavw:Ljava/lang/Boolean;

    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzch()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzch()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzer;->zzik()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavs:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzer;->zzil()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzahd:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavu:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavk:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzawg:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzht()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzawh:Ljava/lang/String;

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v2

    if-nez v2, :cond_15

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzea;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzea;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfd;->zzir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzam(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzap(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzan(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzft;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzao(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzw(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzr(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzs(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->setAppVersion(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzt(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzaq(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafi:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzu(J)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafj:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzv(J)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->setMeasurementEnabled(Z)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafl:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzaf(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzaez:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzafc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzbe(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkx;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1c

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>()V

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    aput-object v6, v2, v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-wide v8, v2, Lcom/google/android/gms/internal/measurement/zzkc;->zzast:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v7, v6, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    iget-wide v4, v2, Lcom/google/android/gms/internal/measurement/zzet;->zzahj:J

    invoke-virtual {v11, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzes;->zza(Lcom/google/android/gms/internal/measurement/zzgn;J)Lcom/google/android/gms/internal/measurement/zzes;

    move-result-object v11

    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/zzes;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzet;->zzah(J)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v13

    move-object v12, v11

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzer;->zzf(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzeb;->zzafn:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "null secure ID. appId"

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    :cond_1a
    :goto_7
    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzawe:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v2

    :cond_1b
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v5, "empty secure ID. appId"

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :cond_1c
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzku;)J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v14

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v13

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v2, :cond_21

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeu;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "_r"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v13, v12, v14, v15, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzes;JZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    :cond_1e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Event recorded"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzes;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v28

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzth:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzes;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgh;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzld()J

    move-result-wide v4

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzth:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/measurement/zzek;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v3

    if-eqz v2, :cond_21

    iget-wide v2, v3, Lcom/google/android/gms/internal/measurement/zzel;->zzagx:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzes;->zzth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeh;->zzas(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_8
.end method

.method private final zzce(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;
    .locals 26
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzea;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgv()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgw()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgx()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->isMeasurementEnabled()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgr()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhk()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhl()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhm()Z

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    goto :goto_0
.end method

.method private final zzd(Ljava/lang/String;J)Z
    .locals 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    new-instance v21, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;Lcom/google/android/gms/internal/measurement/zzju;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    move-wide/from16 v16, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_4

    const-string v5, "rowid <= ? and "

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_56

    const/16 v17, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeh;->zzaw(Ljava/lang/String;)Z

    move-result v18

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_4
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_26

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkr;

    move-object v12, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgh;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Dropping blacklisted raw event. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzcb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_5a

    const-string v2, "_err"

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const/16 v4, 0xb

    const-string v5, "_ev"

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v14

    move v4, v13

    move/from16 v5, v17

    :goto_6
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    move-wide v14, v2

    move v13, v4

    move/from16 v17, v5

    goto/16 :goto_4

    :cond_3
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    const-string v5, ""

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    :goto_7
    :try_start_4
    const-string v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "metadata"

    aput-object v6, v4, v5

    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "2"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Raw event metadata record is missing. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_0

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v2

    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    :try_start_6
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_8
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_8

    const-string v5, " and rowid <= ?"

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-nez v5, :cond_9

    if-eqz v3, :cond_0

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x1

    :try_start_8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v6, v5

    goto :goto_8

    :cond_8
    const-string v5, ""

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_7

    :cond_a
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzaca;->zza([BII)Lcom/google/android/gms/internal/measurement/zzaca;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzku;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzku;-><init>()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzacj;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;)Lcom/google/android/gms/internal/measurement/zzacj;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v5, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(Lcom/google/android/gms/internal/measurement/zzku;)V

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_c

    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    const/4 v3, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :goto_a
    const-string v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v3

    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Raw event data disappeared while in transaction. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v3, :cond_0

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v11, :cond_0

    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :cond_c
    :try_start_10
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    :goto_b
    :try_start_11
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v5

    const-string v6, "Data loss. Error selecting raw event. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v3, :cond_0

    :try_start_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzaca;->zza([BII)Lcom/google/android/gms/internal/measurement/zzaca;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzacj;->zzb(Lcom/google/android/gms/internal/measurement/zzaca;)Lcom/google/android/gms/internal/measurement/zzacj;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const/4 v2, 0x1

    :try_start_15
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzem;->zza(JLcom/google/android/gms/internal/measurement/zzkr;)Z
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    if-eqz v3, :cond_0

    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v2

    :try_start_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Data loss. Failed to merge raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v2

    if-nez v2, :cond_d

    if-eqz v3, :cond_0

    :try_start_18
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgh;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_13
    :goto_d
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_23

    :cond_14
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzks;

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_15
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_f
    if-ge v5, v7, :cond_17

    aget-object v2, v6, v5

    const-string v8, "_c"

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    const/4 v4, 0x1

    move v2, v3

    :goto_10
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_f

    :sswitch_0
    const-string v4, "_in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    goto :goto_d

    :sswitch_1
    const-string v4, "_ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :sswitch_2
    const-string v4, "_ug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x2

    goto :goto_d

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    const-string v8, "_r"

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_10

    :cond_17
    if-nez v4, :cond_18

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v4, "Marking event as conversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzks;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzks;-><init>()V

    const-string v5, "_c"

    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aput-object v4, v2, v5

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_18
    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Marking event as real-time"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzks;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzks;-><init>()V

    const-string v4, "_r"

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_19
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzld()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/measurement/zzek;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/zzel;->zzagx:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzeh;->zzas(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_5d

    const/4 v2, 0x0

    :goto_11
    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    const-string v3, "_r"

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzks;

    if-lez v2, :cond_1a

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    array-length v4, v3

    if-ge v2, v4, :cond_1b

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    iput-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_1c
    :goto_12
    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v19, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzld()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/measurement/zzek;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzel;->zzagv:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzez;->zzair:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzez$zza;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_13
    if-ge v5, v7, :cond_1f

    aget-object v2, v6, v5

    const-string v8, "_c"

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :goto_14
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    goto :goto_13

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    :cond_1e
    const-string v8, "_err"

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v4, 0x1

    move-object v2, v3

    goto :goto_14

    :cond_1f
    if-eqz v4, :cond_21

    if-eqz v3, :cond_21

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzks;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/gms/common/util/ArrayUtils;->removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzks;

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    move/from16 v5, v17

    :goto_15
    if-eqz v18, :cond_5b

    const-string v2, "_e"

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    if-eqz v2, :cond_20

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v2, v2

    if-nez v2, :cond_24

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Engagement event does not contain any parameters. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v2, v14

    :goto_16
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    add-int/lit8 v4, v13, 0x1

    aput-object v12, v6, v13

    goto/16 :goto_6

    :cond_21
    if-eqz v3, :cond_22

    const-string v2, "_err"

    iput-object v2, v3, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    move/from16 v5, v17

    goto :goto_15

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    move/from16 v5, v17

    goto :goto_15

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    const-string v2, "_et"

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Engagement event does not include duration. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v2, v14

    goto :goto_16

    :cond_25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v14, v2

    move-wide v2, v14

    goto :goto_16

    :cond_26
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_27

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    :cond_27
    if-eqz v18, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v4, "_lte"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v8

    if-eqz v8, :cond_28

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    if-nez v2, :cond_30

    :cond_28
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkc;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v4, "auto"

    const-string v5, "_lte"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v2

    :goto_17
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>()V

    const-string v2, "_lte"

    iput-object v2, v5, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    array-length v6, v6

    if-ge v3, v6, :cond_29

    const-string v6, "_lte"

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    aput-object v5, v2, v3

    const/4 v2, 0x1

    :cond_29
    if-nez v2, :cond_2a

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-object v5, v2, v3

    :cond_2a
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkx;[Lcom/google/android/gms/internal/measurement/zzkr;)[Lcom/google/android/gms/internal/measurement/zzkp;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawa:[Lcom/google/android/gms/internal/measurement/zzkp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeh;->zzav(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v24, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzlo()Ljava/security/SecureRandom;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_19
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_45

    aget-object v28, v26, v19

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    const-string v3, "_ep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    const-string v2, "_en"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzet;

    if-nez v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahl:Ljava/lang/Long;

    if-nez v2, :cond_44

    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahm:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const-string v4, "_sr"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahm:Ljava/lang/Long;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjz;->zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_2d
    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahn:Ljava/lang/Boolean;

    if-eqz v2, :cond_2e

    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const-string v3, "_efs"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    :cond_2e
    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    :cond_2f
    :goto_1a
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    move/from16 v18, v2

    goto/16 :goto_19

    :cond_30
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkc;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v4, "auto"

    const-string v5, "_lte"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_17

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :cond_32
    const/4 v2, 0x1

    const-string v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    if-nez v5, :cond_34

    :cond_33
    const/4 v3, 0x0

    :goto_1b
    if-nez v3, :cond_59

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgh;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    :goto_1c
    if-gtz v20, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    goto :goto_1a

    :cond_34
    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    array-length v7, v6

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v7, :cond_3a

    aget-object v8, v6, v3

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    instance-of v3, v5, Ljava/lang/Long;

    if-eqz v3, :cond_35

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzks;->zzave:Ljava/lang/Long;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzks;->zzale:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_36
    instance-of v3, v5, Ljava/lang/Double;

    if-eqz v3, :cond_38

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzks;->zzasw:Ljava/lang/Double;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_37
    const/4 v3, 0x1

    goto :goto_1b

    :cond_38
    const/4 v3, 0x0

    goto :goto_1b

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v3, 0x0

    goto :goto_1b

    :cond_3b
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzet;

    if-nez v2, :cond_58

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    if-nez v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Event being bundled has no eventAggregate. appId, eventName"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzet;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_3c
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    const-string v2, "_eid"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb(Lcom/google/android/gms/internal/measurement/zzkr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3e

    const/4 v4, 0x1

    :goto_1f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_3f

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahl:Ljava/lang/Long;

    if-nez v4, :cond_3d

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahm:Ljava/lang/Long;

    if-nez v4, :cond_3d

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahn:Ljava/lang/Boolean;

    if-eqz v4, :cond_2f

    :cond_3d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzet;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_3e
    const/4 v4, 0x0

    goto :goto_1f

    :cond_3f
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const-string v5, "_sr"

    move/from16 v0, v20

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjz;->zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzet;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    :cond_40
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzai(J)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_41
    iget-wide v6, v3, Lcom/google/android/gms/internal/measurement/zzet;->zzahk:J

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const-string v5, "_efs"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjz;->zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const-string v5, "_sr"

    move/from16 v0, v20

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjz;->zza([Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzet;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    :cond_42
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzai(J)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_43
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzet;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    move/from16 v2, v18

    goto/16 :goto_1a

    :cond_45
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_46

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    :cond_46
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzet;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzet;)V

    goto :goto_20

    :cond_47
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_21
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    array-length v3, v3

    if-ge v2, v3, :cond_4a

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_48

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    :cond_48
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_49

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_4a
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v7

    if-nez v7, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Bundling raw events w/o app info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4b
    :goto_22
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    array-length v2, v2

    if-lez v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    if-nez v3, :cond_53

    :cond_4c
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzafa:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawf:Ljava/lang/Long;

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzku;Z)Z

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasq:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "rowid in ("

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_54

    if-eqz v3, :cond_4e

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_24

    :cond_4f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    array-length v2, v2

    if-lez v2, :cond_4b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzgt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_50

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_25
    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavo:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzgs()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_57

    :goto_26
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_51

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_27
    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavn:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzhb()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzgy()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavy:Ljava/lang/Integer;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzr(J)V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzs(J)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzea;->zzhj()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzafy:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    goto/16 :goto_22

    :cond_50
    const/4 v4, 0x0

    goto :goto_25

    :cond_51
    const/4 v2, 0x0

    goto :goto_27

    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Did not find measurement config or missing version info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzasp:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_53
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzaum:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawf:Ljava/lang/Long;

    goto/16 :goto_23

    :cond_54
    const-string v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "raw_events"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_55

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Deleted fewer rows from raw events table than expected"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v2

    :try_start_19
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :goto_28
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    const/4 v2, 0x1

    :goto_29
    return v2

    :catch_3
    move-exception v2

    :try_start_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    const/4 v2, 0x0

    goto :goto_29

    :catchall_2
    move-exception v2

    move-object v3, v11

    goto/16 :goto_c

    :catch_4
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v4, v12

    goto/16 :goto_b

    :cond_57
    move-wide v2, v4

    goto/16 :goto_26

    :cond_58
    move-object v3, v2

    goto/16 :goto_1e

    :cond_59
    move/from16 v20, v2

    goto/16 :goto_1c

    :cond_5a
    move-wide v2, v14

    move v4, v13

    move/from16 v5, v17

    goto/16 :goto_6

    :cond_5b
    move-wide v2, v14

    goto/16 :goto_16

    :cond_5c
    move-object v2, v3

    goto/16 :goto_14

    :cond_5d
    move/from16 v17, v2

    goto/16 :goto_12

    :cond_5e
    move v2, v3

    goto/16 :goto_10

    :sswitch_data_0
    .sparse-switch
        0x171c4 -> :sswitch_0
        0x17331 -> :sswitch_2
        0x17333 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzea;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/measurement/zzea;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzam(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzao(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzan(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafc:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzap(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafi:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafi:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgw()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafi:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzu(J)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->setAppVersion(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzt(J)V

    move v0, v1

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafh:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafh:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafh:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzaq(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafj:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgx()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafj:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzv(J)V

    move v0, v1

    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->isMeasurementEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->setMeasurementEnabled(Z)V

    move v0, v1

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafy:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafy:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafy:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzar(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafl:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhk()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafl:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzaf(J)V

    move v0, v1

    :cond_a
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafm:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhl()Z

    move-result v4

    if-eq v3, v4, :cond_b

    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafm:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzd(Z)V

    move v0, v1

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafn:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhm()Z

    move-result v4

    if-eq v3, v4, :cond_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafn:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zze(Z)V

    :goto_1
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    :cond_c
    return-object v2

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzao(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzam(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v1, v0

    goto :goto_1
.end method

.method public static zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzjt;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarr:Lcom/google/android/gms/internal/measurement/zzjt;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/zzjt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarr:Lcom/google/android/gms/internal/measurement/zzjt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzjt;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzjy;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzjt;->zzarr:Lcom/google/android/gms/internal/measurement/zzjt;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarr:Lcom/google/android/gms/internal/measurement/zzjt;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzky()Lcom/google/android/gms/internal/measurement/zzgh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzars:Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzars:Lcom/google/android/gms/internal/measurement/zzgh;

    return-object v0
.end method

.method private final zzla()Lcom/google/android/gms/internal/measurement/zzfr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarv:Lcom/google/android/gms/internal/measurement/zzfr;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarv:Lcom/google/android/gms/internal/measurement/zzfr;

    return-object v0
.end method

.method private final zzlb()Lcom/google/android/gms/internal/measurement/zzjp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarw:Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarw:Lcom/google/android/gms/internal/measurement/zzjp;

    return-object v0
.end method

.method private final zzld()J
    .locals 10

    const-wide/16 v8, 0x3c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzch()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzalx:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzlo()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzalx:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_0
    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzlf()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzia()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzhv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzlg()V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlk()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzla()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlb()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjp;->cancel()V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzkg()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlf()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Nothing to upload or uploading impossible"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzla()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlb()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjp;->cancel()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaje:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzib()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzhw()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    const/4 v2, 0x1

    move v6, v2

    :goto_1
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ".none."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaiz:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzft;->zzalu:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzek;->zzhy()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzek;->zzhz()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-nez v7, :cond_a

    const-wide/16 v4, 0x0

    :cond_6
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Next upload time is 0"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzla()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlb()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjp;->cancel()V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    :cond_8
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaiy:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_9
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaix:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto/16 :goto_2

    :cond_a
    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v4, v14

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v4, v10

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v4, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long v4, v14, v8

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_b

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v6

    invoke-virtual {v6, v10, v11, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(JJ)Z

    move-result v6

    if-nez v6, :cond_c

    add-long v4, v10, v2

    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_6

    cmp-long v2, v12, v14

    if-ltz v2, :cond_6

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/16 v6, 0x14

    const/4 v7, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzajg:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v3, v2, :cond_d

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzajf:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v2, v4, v12

    if-gtz v2, :cond_6

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfm;->zzex()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "No network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzla()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzeu()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlb()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjp;->cancel()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzft;->zzalv:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaiv:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(JJ)Z

    move-result v8

    if-nez v8, :cond_11

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzla()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->unregister()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_10

    const-wide/16 v4, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaja:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Upload scheduled in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlb()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjp;->zzh(J)V

    goto/16 :goto_0

    :cond_11
    move-wide v2, v4

    goto :goto_5
.end method

.method private final zzlh()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasf:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private final zzli()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasi:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasi:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzash:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzash:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final zzlk()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final start()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzhx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_6

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalu:Lcom/google/android/gms/internal/measurement/zzfw;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v6, "Deleted fewer rows from queue than expected"

    invoke-direct {v1, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v5

    const-string v6, "Failed to delete a bundle in a queue table"

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v1

    :try_start_6
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzask:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzask:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Disable upload, time"

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    return-void

    :cond_4
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzask:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfm;->zzex()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlf()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzle()V

    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    throw v0

    :cond_5
    const-wide/16 v0, -0x1

    :try_start_b
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :cond_6
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v4, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p2}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalu:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_a

    :cond_7
    move v0, v3

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalv:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/measurement/zzeh;->zzay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzek;->zzc(Ljava/util/List;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzex;Ljava/lang/String;)[B
    .locals 24
    .param p1    # Lcom/google/android/gms/internal/measurement/zzex;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfu()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v19, Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzkt;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->isMeasurementEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v4, "_iap"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzaw(Ljava/lang/String;)Z

    move-result v11

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v11, :cond_5

    const-string v4, "_e"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeu;->size()I

    move-result v4

    if-nez v4, :cond_a

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "The engagement event does not contain any parameters. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    new-instance v23, Lcom/google/android/gms/internal/measurement/zzku;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzku;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzku;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavh:Ljava/lang/Integer;

    const-string v4, "android"

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavp:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgv()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzafh:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zztg:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-nez v6, :cond_c

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawb:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgw()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavt:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzafa:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgx()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavx:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzht()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeh;->zzau(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawh:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzft;->zzbr(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzhl()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavw:Ljava/lang/Boolean;

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzch()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzch()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzer;->zzik()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavs:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzge()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzer;->zzil()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzahd:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzaez:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgr()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzafc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzek;->zzbe(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzek;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    if-nez v5, :cond_d

    :cond_8
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzkc;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v6, "auto"

    const-string v7, "_lte"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v12, v4

    :cond_9
    :goto_3
    const/4 v6, 0x0

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_e

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>()V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    aput-object v5, v4, v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-wide v8, v4, Lcom/google/android/gms/internal/measurement/zzkc;->zzast:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v8, v5, v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    if-eqz v11, :cond_18

    const-string v4, "_lte"

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    move-object v4, v5

    :goto_5
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v6, v4

    goto :goto_4

    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v5, "_et"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "The engagement event does not include duration. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v4

    :cond_b
    :try_start_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v5, "_et"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_1

    :cond_c
    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_19

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzkc;

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    const-string v14, "auto"

    const-string v15, "_lte"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_3

    :cond_e
    if-eqz v11, :cond_f

    if-nez v6, :cond_f

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>()V

    const-string v4, "_lte"

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzaws:Ljava/lang/Long;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzkx;->zzave:Ljava/lang/Long;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aput-object v5, v4, v6

    :cond_f
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    :cond_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeu;->zzin()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "_iap"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v5

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    const-string v5, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    const-string v5, "_o"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    const-string v6, "_dbg"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    const-string v6, "_r"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v5

    if-nez v5, :cond_13

    const-wide/16 v20, 0x0

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzet;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzet;)V

    move-wide/from16 v12, v20

    :goto_6
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzes;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzex;->origin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    move-object/from16 v8, p2

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/measurement/zzes;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzkr;

    const/4 v6, 0x0

    aput-object v8, v4, v6

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    iget-wide v6, v5, Lcom/google/android/gms/internal/measurement/zzes;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/zzes;->name:Ljava/lang/String;

    iput-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->name:Ljava/lang/String;

    iget-wide v6, v5, Lcom/google/android/gms/internal/measurement/zzes;->zzahf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzavc:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/zzes;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeu;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzks;

    iput-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    const/4 v4, 0x0

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzes;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzeu;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/zzks;-><init>()V

    iget-object v11, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzava:[Lcom/google/android/gms/internal/measurement/zzks;

    add-int/lit8 v7, v6, 0x1

    aput-object v10, v11, v6

    iput-object v4, v10, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzes;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzeu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzks;Ljava/lang/Object;)V

    move v6, v7

    goto :goto_7

    :cond_13
    iget-wide v12, v5, Lcom/google/android/gms/internal/measurement/zzet;->zzahj:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzah(J)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzet;->zzim()Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzet;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavj:[Lcom/google/android/gms/internal/measurement/zzkx;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavi:[Lcom/google/android/gms/internal/measurement/zzkr;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkx;[Lcom/google/android/gms/internal/measurement/zzkr;)[Lcom/google/android/gms/internal/measurement/zzkp;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzawa:[Lcom/google/android/gms/internal/measurement/zzkp;

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzavb:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_8
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavo:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgs()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_17

    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_a
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavn:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzhb()V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzea;->zzgy()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavy:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavu:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavk:Ljava/lang/Long;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavz:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavl:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzr(J)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzku;->zzavm:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzea;->zzs(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzacj;->zzwb()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzacb;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzacj;->zza(Lcom/google/android/gms/internal/measurement/zzacb;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacb;->zzvt()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb([B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto/16 :goto_0

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v5

    const-string v6, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    move-wide v4, v6

    goto/16 :goto_9

    :cond_18
    move-object v4, v6

    goto/16 :goto_5

    :cond_19
    move-object v12, v4

    goto/16 :goto_3
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/measurement/zzef;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    iput-boolean v6, v8, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v5, :cond_4

    iget-boolean v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-wide v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->creationTimestamp:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->creationTimestamp:J

    iget-wide v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->triggerTimeout:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->triggerTimeout:J

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->triggerEventName:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->triggerEventName:Ljava/lang/String;

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    iput-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    iget-boolean v0, v5, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    iput-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->zzast:J

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzka;->origin:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    move v7, v6

    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    if-eqz v0, :cond_3

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/measurement/zzka;->zzast:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_3

    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    iget-wide v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->creationTimestamp:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Lcom/google/android/gms/internal/measurement/zzex;J)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzef;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->triggerEventName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->creationTimestamp:J

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzka;->origin:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzef;->active:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_7
    move v7, v6

    goto/16 :goto_1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzd(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Invalid time querying timed out conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzef;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzagf:Lcom/google/android/gms/internal/measurement/zzex;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzex;

    iget-object v8, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzagf:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-direct {v4, v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Lcom/google/android/gms/internal/measurement/zzex;J)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v2

    :cond_4
    :try_start_1
    const-string v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Invalid time querying expired conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzef;

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/measurement/zzek;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzj(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v8, :cond_a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzex;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzex;

    invoke-direct {v9, v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Lcom/google/android/gms/internal/measurement/zzex;J)V

    invoke-direct {p0, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v8, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzef;

    move-object v9, v0

    if-eqz v9, :cond_b

    iget-object v8, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v3, v9, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v3, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    if-eqz v3, :cond_c

    iget-object v3, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzagg:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzef;)Z

    goto :goto_7

    :cond_d
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v3, v8, v5

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/measurement/zzek;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v5, :cond_10

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzex;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzex;

    invoke-direct {v8, v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Lcom/google/android/gms/internal/measurement/zzex;J)V

    invoke-direct {p0, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzjs;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasc:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzka;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v4, 0x18

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzcj(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const-string v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const-string v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzka;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzka;->zzast:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Setting user property"

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "User property set"

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v7, 0x130

    const/4 v0, 0x1

    const/16 v6, 0x194

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-array p4, v3, [B

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "onConfigFetched. Response size"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v7, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v2, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    :goto_2
    return-void

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v6, :cond_c

    :cond_4
    if-eqz p5, :cond_6

    :try_start_3
    const-string v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    if-eq p2, v6, :cond_5

    if-ne p2, v7, :cond_8

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zza(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->zza(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_2

    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzx(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    if-ne p2, v6, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziz()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v2, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfm;->zzex()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlf()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzase:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    throw v0

    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v2, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzy(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbz(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzft;->zzalu:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_f

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzft;->zzalv:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method public final zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzj(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->active:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzex;->zzahg:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzin()Landroid/os/Bundle;

    move-result-object v4

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->origin:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzagh:Lcom/google/android/gms/internal/measurement/zzex;

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/zzex;->zzahr:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzage:Lcom/google/android/gms/internal/measurement/zzka;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzex;Ljava/lang/String;)V
    .locals 26
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzea;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzex;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgv()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgw()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgx()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->isMeasurementEnabled()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzgr()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhk()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhl()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzea;->zzhm()Z

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzka;Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "Removing user property"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "User property removed"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzka;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0
.end method

.method final zzd(Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzask:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzask:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "apps"

    const-string v5, "app_id=?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    const-string v5, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v4, "Reset analytics data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafm:Z

    iget-boolean v7, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafn:Z

    iget-wide v8, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzaga:J

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJ)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzf(Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zze(Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzce(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_0
    return-void
.end method

.method final zzf(Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzea;->zzx(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Lcom/google/android/gms/internal/measurement/zzea;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzky()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzca(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafk:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzaga:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzagb:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-string v7, "events"

    const-string v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    const-string v8, "user_attributes"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "conditional_properties"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "apps"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events_metadata"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "event_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "property_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "audience_filter_values"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v3

    const-string v7, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v2

    const-wide/32 v8, -0x80000000

    cmp-long v1, v2, v8

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzgu()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafg:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzg(Lcom/google/android/gms/internal/measurement/zzeb;)Lcom/google/android/gms/internal/measurement/zzea;

    const/4 v0, 0x0

    if-nez v6, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const-string v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;

    move-result-object v0

    :cond_7
    :goto_4
    if-nez v0, :cond_16

    const-wide/16 v0, 0x1

    const-wide/32 v2, 0x36ee80

    div-long v2, v4, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    if-nez v6, :cond_14

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzka;

    const-string v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzka;Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzagc:Z

    if-eqz v0, :cond_8

    const-string v0, "_dac"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    const-string v2, "first_open_count"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzm(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_a

    const-string v2, "_pfo"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_b
    :goto_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_et"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v3, "Error deleting application data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->endTransaction()V

    throw v0

    :cond_d
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zztg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzea;->zzag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    goto/16 :goto_3

    :cond_e
    const/4 v1, 0x1

    if-ne v6, v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const-string v2, "_v"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_8
    if-eqz v1, :cond_10

    :try_start_6
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_12

    const-string v1, "_uwa"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_9
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzka;

    const-string v3, "_fi"

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x1

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzka;Lcom/google/android/gms/internal/measurement/zzeb;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_10
    const/4 v1, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_9

    :try_start_8
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    const-string v1, "_sys"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const-string v0, "_sysu"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x1

    goto :goto_9

    :cond_13
    const-wide/16 v0, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_b

    :cond_14
    const/4 v2, 0x1

    if-ne v6, v2, :cond_b

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzka;

    const-string v3, "_fvt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzka;Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzbc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzagc:Z

    if-eqz v0, :cond_15

    const-string v0, "_dac"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_v"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V

    goto/16 :goto_6

    :cond_16
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzeb;->zzafz:Z

    if-eqz v0, :cond_c

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    const-string v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/internal/measurement/zzeb;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    :cond_17
    move v6, v0

    goto/16 :goto_1
.end method

.method final zzf(Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzce(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_0
    return-void
.end method

.method final zzg(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzgf()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgf()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final zzgg()Lcom/google/android/gms/internal/measurement/zzkd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgg()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    return-object v0
.end method

.method public final zzgh()Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    return-object v0
.end method

.method public final zzgi()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    return-object v0
.end method

.method public final zzgk()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    return-object v0
.end method

.method public final zzgl()Lcom/google/android/gms/internal/measurement/zzee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/internal/measurement/zzeb;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzeb;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final zzjf()Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzary:Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzary:Lcom/google/android/gms/internal/measurement/zzjz;

    return-object v0
.end method

.method public final zzjg()Lcom/google/android/gms/internal/measurement/zzed;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarx:Lcom/google/android/gms/internal/measurement/zzed;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarx:Lcom/google/android/gms/internal/measurement/zzed;

    return-object v0
.end method

.method public final zzjh()Lcom/google/android/gms/internal/measurement/zzek;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzaru:Lcom/google/android/gms/internal/measurement/zzek;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzaru:Lcom/google/android/gms/internal/measurement/zzek;

    return-object v0
.end method

.method public final zzkz()Lcom/google/android/gms/internal/measurement/zzfm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzart:Lcom/google/android/gms/internal/measurement/zzfm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzart:Lcom/google/android/gms/internal/measurement/zzfm;

    return-object v0
.end method

.method final zzlc()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzvn:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method final zzle()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzga()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzik;->zzkr()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziy()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasa:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfm;->zzex()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhr()J

    move-result-wide v2

    sub-long v2, v10, v2

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzd(Ljava/lang/String;J)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzft;->zzalt:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjb()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzhv()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzic()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzez;->zzaik:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzez$zza;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzez;->zzail:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzez$zza;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzek;->zzb(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_13

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_13

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavv:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :goto_4
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzkt;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzku;

    iput-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzht()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzeh;->zzau(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    const/4 v2, 0x0

    move v5, v2

    :goto_6
    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    array-length v2, v2

    if-ge v5, v2, :cond_c

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzku;

    aput-object v2, v9, v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    aget-object v2, v2, v5

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavu:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    aget-object v2, v2, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavk:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    aget-object v2, v2, v5

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzavz:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    aget-object v2, v2, v5

    const/4 v9, 0x0

    iput-object v9, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzawh:Ljava/lang/String;

    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb(Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjf()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzjz;->zza(Lcom/google/android/gms/internal/measurement/zzkt;)[B

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzez;->zzaiu:Lcom/google/android/gms/internal/measurement/zzez$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v8, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzft;->zzalu:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfw;->set(J)V

    const-string v2, "?"

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    array-length v8, v8

    if-lez v8, :cond_d

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkt;->zzavf:[Lcom/google/android/gms/internal/measurement/zzku;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzku;->zzth:Ljava/lang/String;

    :cond_d
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v7

    const-string v8, "Uploading data. app, uncompressed size, data"

    array-length v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v2, v10, v3}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzkz()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-direct {v8, p0, v4}, Lcom/google/android/gms/internal/measurement/zzjv;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzab()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjs;->zzch()V

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgh()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfq;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>(Lcom/google/android/gms/internal/measurement/zzfm;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/measurement/zzfo;)V

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasj:Ljava/util/List;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v2

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlh()V

    throw v2

    :cond_11
    const-wide/16 v2, -0x1

    :try_start_9
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasl:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhr()J

    move-result-wide v4

    sub-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzek;->zzag(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzjh()Lcom/google/android/gms/internal/measurement/zzek;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzek;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzea;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb(Lcom/google/android/gms/internal/measurement/zzea;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    :cond_12
    move-object v3, v2

    goto/16 :goto_7

    :cond_13
    move-object v6, v3

    goto/16 :goto_4

    :cond_14
    move-object v6, v5

    goto/16 :goto_2
.end method

.method final zzlj()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarz:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzja()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzli()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasi:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzfz()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfd;->zzis()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzab()V

    if-le v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzarz:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    :cond_1
    return-void

    :cond_2
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasi:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzjc()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgi()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zziv()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zzll()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzasd:I

    return-void
.end method

.method final zzlm()Lcom/google/android/gms/internal/measurement/zzgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    return-object v0
.end method

.method final zzm(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzlg()V

    return-void
.end method
