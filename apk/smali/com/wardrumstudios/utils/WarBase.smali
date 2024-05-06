.class public Lcom/wardrumstudios/utils/WarBase;
.super Lcom/nvidia/devtech/NvEventQueueActivity;
.source "WarBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarBase"


# instance fields
.field public FinalRelease:Z

.field public GameServiceLog:Z

.field public MultiplayerVersion:I

.field private mLifecycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsbManager:Landroid/hardware/usb/UsbManager;

.field protected mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarBase;->FinalRelease:Z

    .line 22
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarBase;->GameServiceLog:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarBase;->MultiplayerVersion:I

    return-void
.end method


# virtual methods
.method public AddLifecycleListener(Lcom/wardrumstudios/utils/WarActivityLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method CreateUSBReceiver()V
    .locals 3

    .prologue
    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v1, "WarBase"

    const-string v2, "Creating USB intent receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Lcom/wardrumstudios/utils/WarBase$1;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarBase$1;-><init>(Lcom/wardrumstudios/utils/WarBase;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wardrumstudios/utils/WarBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const-string v1, "WarBase"

    const-string v2, "Receiver set up"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DestroyUSBReceiver()V
    .locals 2

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public GetLeaderboardId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 217
    return-object p1
.end method

.method public SetGamepad(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamepadString"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    return-void
.end method

.method public USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method

.method public isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 130
    .local v0, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 133
    .end local v0    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/nvidia/devtech/NvEventQueueActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 45
    invoke-super {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 49
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 50
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->CreateUSBReceiver()V

    .line 52
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->DestroyUSBReceiver()V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 119
    .local v0, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v0}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onDestroy()V

    goto :goto_0

    .line 122
    .end local v0    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_1
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onDestroy()V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 70
    .local v0, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v0}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onPause()V

    goto :goto_0

    .line 73
    .end local v0    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v4, "WarBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnResume -> Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 94
    const-string v4, "device"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 95
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const-string v4, "WarBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnResume -> ACTION_USB_DEVICE_ATTACHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/wardrumstudios/utils/WarBase;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 105
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 106
    .local v3, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v3}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onResume()V

    goto :goto_1

    .line 98
    .end local v3    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    .restart local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "WarBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnResume -> ACTION_USB_DEVICE_DETACHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/wardrumstudios/utils/WarBase;->USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_2
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onResume()V

    .line 110
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 59
    .local v0, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v0}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onStart()V

    goto :goto_0

    .line 62
    .end local v0    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onStart()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 81
    .local v0, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v0}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onStop()V

    goto :goto_0

    .line 84
    .end local v0    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onStop()V

    .line 85
    return-void
.end method
