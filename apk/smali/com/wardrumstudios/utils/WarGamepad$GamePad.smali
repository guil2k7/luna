.class public Lcom/wardrumstudios/utils/WarGamepad$GamePad;
.super Ljava/lang/Object;
.source "WarGamepad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarGamepad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GamePad"
.end annotation


# instance fields
.field DpadIsAxis:Z

.field public GamepadAxes:[F

.field public GamepadButtonMask:I

.field public GamepadDpadHack:I

.field public GamepadTouchReversed:Z

.field public GamepadTouches:[I

.field public GamepadType:I

.field NykoCheckHacks:I

.field active:Z

.field deviceId:I

.field is360:Z

.field private isXperia:Z

.field public lastConnect:J

.field public lastDisconnect:J

.field private mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mGamepadDevice:Landroid/hardware/usb/UsbDevice;

.field private mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

.field private mGamepadThread:Ljava/lang/Thread;

.field private mLastGamepadInputDevice:Landroid/view/InputDevice;

.field mightBeNyko:Z

.field mobiX:F

.field mobiY:F

.field mogaController:Lcom/bda/controller/Controller;

.field public numGamepadTouchSamples:I

.field public reportPS3as360:Z

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGamepad;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarGamepad;)V
    .locals 5
    .param p1, "this$0"    # Lcom/wardrumstudios/utils/WarGamepad;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->this$0:Lcom/wardrumstudios/utils/WarGamepad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    .line 101
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 110
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 111
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 113
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 114
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->DpadIsAxis:Z

    .line 124
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->reportPS3as360:Z

    .line 126
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    .line 127
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiX:F

    .line 128
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiY:F

    .line 134
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 137
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    .line 138
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    .line 140
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    .line 141
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 142
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 143
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 145
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 146
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->DpadIsAxis:Z

    .line 147
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->reportPS3as360:Z

    .line 149
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    .line 150
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiX:F

    .line 151
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiY:F

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->isXperia:Z

    return v0
.end method

.method static synthetic access$002(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->isXperia:Z

    return p1
.end method

.method static synthetic access$102(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadDevice:Landroid/hardware/usb/UsbDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbEndpoint;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbEndpoint;)Landroid/hardware/usb/UsbEndpoint;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Landroid/hardware/usb/UsbEndpoint;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

    return-object p1
.end method

.method static synthetic access$300(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mGamepadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/view/InputDevice;)Landroid/view/InputDevice;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    .param p1, "x1"    # Landroid/view/InputDevice;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    return-object p1
.end method
