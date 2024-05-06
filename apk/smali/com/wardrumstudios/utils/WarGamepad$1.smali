.class Lcom/wardrumstudios/utils/WarGamepad$1;
.super Ljava/lang/Object;
.source "WarGamepad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGamepad;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGamepad;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGamepad;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGamepad;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->this$0:Lcom/wardrumstudios/utils/WarGamepad;

    iput p2, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->this$0:Lcom/wardrumstudios/utils/WarGamepad;

    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGamepad;->USBDeviceRun(I)V

    .line 326
    return-void
.end method
