.class final Lcom/google/android/gms/internal/measurement/zzfj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzakw:I

.field private final synthetic zzakx:Ljava/lang/String;

.field private final synthetic zzaky:Ljava/lang/Object;

.field private final synthetic zzakz:Ljava/lang/Object;

.field private final synthetic zzala:Ljava/lang/Object;

.field private final synthetic zzalb:Lcom/google/android/gms/internal/measurement/zzfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfi;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakw:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaky:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakz:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzala:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/16 v10, 0x400

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfi;->zzacv:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zzgj()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfi;)C

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzds()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    const/16 v2, 0x43

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfi;C)C

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzb(Lcom/google/android/gms/internal/measurement/zzfi;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgk()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzgw()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfi;J)J

    :cond_2
    const-string v0, "01VDIWEA?"

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakw:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfi;)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzb(Lcom/google/android/gms/internal/measurement/zzfi;)J

    move-result-wide v4

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakx:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaky:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakz:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzala:Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzakx:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzft;->zzals:Lcom/google/android/gms/internal/measurement/zzfx;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzalb:Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzgl()Lcom/google/android/gms/internal/measurement/zzee;

    const/16 v2, 0x63

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfi;C)C

    goto/16 :goto_1
.end method
