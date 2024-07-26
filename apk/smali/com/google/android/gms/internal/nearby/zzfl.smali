.class public final Lcom/google/android/gms/internal/nearby/zzfl;
.super Ljava/lang/Object;


# direct methods
.method static zza(Lcom/google/android/gms/nearby/connection/Payload;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/nearby/zzfh;",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outgoing Payload %d has unknown type %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v1, "NearbyConnections"

    const-string v2, "Unknown payload type!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzfj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzb(J)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/nearby/zzfj;->zzd(I)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->asBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/nearby/zzfj;->zzb([B)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzfj;->zzr()Lcom/google/android/gms/internal/nearby/zzfh;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->asFile()Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload$File;->asJavaFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/nearby/zzfj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nearby/zzfj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/nearby/zzfj;->zzb(J)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzd(I)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->asFile()Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/nearby/connection/Payload$File;->asParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/nearby/zzfj;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->asFile()Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/nearby/connection/Payload$File;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzc(J)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzfj;->zzr()Lcom/google/android/gms/internal/nearby/zzfh;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->asFile()Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload$File;->asJavaFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzfj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nearby/zzfj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/nearby/zzfj;->zzb(J)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzd(I)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zzfj;->zzd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zzfj;->zzr()Lcom/google/android/gms/internal/nearby/zzfh;

    move-result-object v2

    aget-object v0, v0, v7

    aget-object v1, v1, v7

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnections"

    const-string v2, "Unable to create PFD pipe for streaming payload %d from client to service."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static zza(Lcom/google/android/gms/internal/nearby/zzfh;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "NearbyConnections"

    const-string v1, "Incoming ParcelablePayload %d has unknown type %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzq()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/nearby/connection/Payload$File;->zza(Ljava/io/File;J)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v5, "NearbyConnections"

    const-string v6, "Failed to create Payload from ParcelablePayload: Java file not found at "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v5, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzo()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/Payload$File;->zza(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzo()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
