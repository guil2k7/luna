.class public abstract Lcom/google/android/gms/internal/drive/zzer;
.super Lcom/google/android/gms/internal/drive/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzeq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzff;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzff;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfn;)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfh;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfs;)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfb;)V

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzer;->onSuccess()V

    goto :goto_1

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfp;)V

    goto :goto_1

    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/drive/zzgb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzgb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgb;)V

    goto :goto_1

    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfr;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzim;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/drive/zzil;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfr;Lcom/google/android/gms/internal/drive/zzil;)V

    goto :goto_1

    :pswitch_b
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfx;)V

    goto :goto_1

    :pswitch_c
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfu;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfu;)V

    goto/16 :goto_1

    :pswitch_d
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfd;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zzb(Z)V

    goto/16 :goto_1

    :pswitch_f
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfl;)V

    goto/16 :goto_1

    :pswitch_10
    sget-object v0, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/drive/zza;)V

    goto/16 :goto_1

    :pswitch_11
    sget-object v0, Lcom/google/android/gms/internal/drive/zzez;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzez;)V

    goto/16 :goto_1

    :pswitch_12
    sget-object v0, Lcom/google/android/gms/internal/drive/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzem;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzem;)V

    goto/16 :goto_1

    :pswitch_13
    sget-object v0, Lcom/google/android/gms/internal/drive/zzgt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzgt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgt;)V

    goto/16 :goto_1

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfz;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
