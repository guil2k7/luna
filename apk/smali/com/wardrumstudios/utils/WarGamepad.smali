.class public Lcom/wardrumstudios/utils/WarGamepad;
.super Lcom/wardrumstudios/utils/WarBilling;
.source "WarGamepad.java"

# interfaces
.implements Lcom/bda/controller/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    }
.end annotation


# static fields
.field private static final COMMAND_DOWN:I = 0x2

.field private static final COMMAND_FIRE:I = 0x10

.field private static final COMMAND_LEFT:I = 0x8

.field private static final COMMAND_RIGHT:I = 0x4

.field private static final COMMAND_STATUS:I = 0x40

.field private static final COMMAND_STOP:I = 0x20

.field private static final COMMAND_UP:I = 0x1

.field static MAX_GAME_PADS:I = 0x0

.field private static final OSGT_60beat:I = 0x2

.field private static final OSGT_AmazonGamepad:I = 0xc

.field private static final OSGT_AmazonRemote:I = 0xb

.field private static final OSGT_AndroidTV:I = 0xd

.field private static final OSGT_Gamestop:I = 0x3

.field private static final OSGT_Generic:I = 0x5

.field private static final OSGT_IOSExtended:I = 0x9

.field private static final OSGT_IOSSimple:I = 0xa

.field private static final OSGT_Moga:I = 0x4

.field private static final OSGT_MogaPro:I = 0x7

.field private static final OSGT_Nyko:I = 0x6

.field private static final OSGT_PS3:I = 0x8

.field private static final OSGT_Xbox360:I = 0x0

.field private static final OSGT_XperiaPlay:I = 0x1

.field private static final OSX360_A:I = 0x1

.field private static final OSX360_AXIS_L2:I = 0x4

.field private static final OSX360_AXIS_R2:I = 0x5

.field private static final OSX360_AXIS_X1:I = 0x0

.field private static final OSX360_AXIS_X2:I = 0x2

.field private static final OSX360_AXIS_Y1:I = 0x1

.field private static final OSX360_AXIS_Y2:I = 0x3

.field private static final OSX360_B:I = 0x2

.field private static final OSX360_BACK:I = 0x20

.field private static final OSX360_DPADDOWN:I = 0x200

.field private static final OSX360_DPADLEFT:I = 0x400

.field private static final OSX360_DPADRIGHT:I = 0x800

.field private static final OSX360_DPADUP:I = 0x100

.field private static final OSX360_L1:I = 0x40

.field private static final OSX360_L3:I = 0x1000

.field private static final OSX360_R1:I = 0x80

.field private static final OSX360_R3:I = 0x2000

.field private static final OSX360_START:I = 0x10

.field private static final OSX360_X:I = 0x4

.field private static final OSX360_Y:I = 0x8

.field private static final OSXP_BACK:I = 0x4000

.field private static final OSXP_GP_MENU:I = 0x8000

.field private static final OSXP_MENU:I = 0x1000

.field private static final OSXP_SEARCH:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "WarGamepad"


# instance fields
.field public GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

.field protected IsAndroidTV:Z

.field mogaController:Lcom/bda/controller/Controller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x4

    sput v0, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarBilling;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->IsAndroidTV:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    return-void
.end method

.method private ClearBadJoystickAxis(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)V
    .locals 7
    .param p1, "myGamepad"    # Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 527
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Clearing Bad Joystick Axis"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v3, v0, v4

    .line 532
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v3, v0, v5

    .line 533
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v3, v0, v6

    .line 534
    iget-object v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 535
    const/4 v0, -0x1

    iput v0, p1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 537
    :cond_0
    return-void
.end method

.method private static IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 624
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 629
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 631
    .local v0, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 634
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 638
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_1
    return v2

    .line 632
    .restart local v0    # "flat":F
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    goto :goto_0

    .line 638
    .end local v0    # "flat":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v2

    .line 541
    .local v2, "index":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    .line 543
    .local v4, "source":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {p0, v7, v4}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v2

    .line 544
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    .line 546
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "********************ERROR********* cannot assign controller"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 620
    .end local v4    # "source":I
    :cond_0
    :goto_1
    return-void

    .line 542
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 551
    :cond_2
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v3, v7, v2

    .line 557
    .local v3, "myGamePad":Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v9

    aput v9, v7, v8

    .line 558
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x1

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v9

    aput v9, v7, v8

    .line 559
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x2

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/16 v10, 0xb

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v9

    aput v9, v7, v8

    .line 560
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x3

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/16 v10, 0xe

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v9

    aput v9, v7, v8

    .line 562
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x11

    invoke-static {p1, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x17

    invoke-static {p1, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 563
    :cond_3
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x11

    invoke-static {p1, v7, v8, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    .line 564
    .local v5, "valL2":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_4

    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x4

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/16 v10, 0x17

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    .end local v5    # "valL2":F
    aput v5, v7, v8

    .line 565
    .restart local v5    # "valL2":F
    :cond_4
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x4

    aput v5, v7, v8

    .line 567
    .end local v5    # "valL2":F
    :cond_5
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x12

    invoke-static {p1, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x16

    invoke-static {p1, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 568
    :cond_6
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x12

    invoke-static {p1, v7, v8, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    .line 569
    .local v6, "valR2":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-nez v7, :cond_7

    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x5

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v9

    const/16 v10, 0x16

    invoke-static {p1, v9, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    .end local v6    # "valR2":F
    aput v6, v7, v8

    .line 570
    .restart local v6    # "valR2":F
    :cond_7
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x5

    aput v6, v7, v8

    .line 575
    .end local v6    # "valR2":F
    :cond_8
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 576
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0xf

    invoke-static {p1, v7, v8, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 577
    .local v0, "DPAD_X":F
    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {p1, v7, v8, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 579
    .local v1, "DPAD_Y":F
    iget-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    if-eqz v7, :cond_11

    .line 580
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    const/high16 v7, 0x3f400000    # 0.75f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_9

    .line 581
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 582
    :cond_9
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, -0x40c00000    # -0.75f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    const/high16 v7, -0x40c00000    # -0.75f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_a

    .line 583
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 584
    :cond_a
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    const/high16 v7, 0x3f400000    # 0.75f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_b

    .line 585
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 586
    :cond_b
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, -0x40cccccd    # -0.7f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    const/high16 v7, 0x3f400000    # 0.75f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_c

    .line 587
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    .line 589
    :cond_c
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_d

    .line 590
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 591
    :cond_d
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, -0x40c00000    # -0.75f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_e

    .line 592
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 593
    :cond_e
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-nez v7, :cond_f

    .line 594
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 595
    :cond_f
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, -0x40c00000    # -0.75f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-nez v7, :cond_10

    .line 596
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 598
    :cond_10
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    const/16 v8, 0xf

    if-ne v7, v8, :cond_11

    .line 599
    const/4 v7, 0x6

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 600
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "detecting NYKO controller"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    :cond_11
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    .line 605
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_12

    const/high16 v7, -0x41000000    # -0.5f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_12

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v1, v7

    if-gtz v7, :cond_12

    const/high16 v7, -0x41000000    # -0.5f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_0

    .line 606
    :cond_12
    const/4 v7, 0x0

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    .line 611
    :cond_13
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_14

    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 613
    :goto_2
    const/high16 v7, -0x41000000    # -0.5f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_15

    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 615
    :goto_3
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_16

    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 617
    :goto_4
    const/high16 v7, -0x41000000    # -0.5f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_17

    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto/16 :goto_1

    .line 612
    :cond_14
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    and-int/lit16 v7, v7, -0x801

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto :goto_2

    .line 614
    :cond_15
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    and-int/lit16 v7, v7, -0x401

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto :goto_3

    .line 616
    :cond_16
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    and-int/lit16 v7, v7, -0x201

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto :goto_4

    .line 618
    :cond_17
    iget v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    and-int/lit16 v7, v7, -0x101

    iput v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto/16 :goto_1
.end method

.method private sendCommand(II)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "control"    # I

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    const/16 v0, 0x40

    if-eq p2, v0, :cond_0

    .line 404
    :try_start_0
    const-string v0, "WarGamepad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$300(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 408
    .local v5, "message":[B
    const/4 v0, 0x0

    int-to-byte v1, p2

    aput-byte v1, v5, v0

    .line 410
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$300(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    const/16 v1, 0x21

    const/16 v2, 0x9

    const/16 v3, 0x200

    const/4 v4, 0x0

    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 413
    .end local v5    # "message":[B
    :cond_1
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setProcessTouchpadAsPointer(Z)V
    .locals 6
    .param p1, "processAsPointer"    # Z

    .prologue
    .line 913
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0xd

    if-gt v3, v4, :cond_0

    .line 915
    :try_start_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 916
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 918
    .local v2, "viewRoot":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 919
    invoke-virtual {p0, v2, p1}, Lcom/wardrumstudios/utils/WarGamepad;->processTouchpadAsPointer(Landroid/view/ViewParent;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 921
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Processing touchpad as pointer succeeded"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 924
    .restart local v1    # "root":Landroid/view/View;
    .restart local v2    # "viewRoot":Landroid/view/ViewParent;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Processing touchpad as pointer failed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 928
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 930
    :catch_1
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set processTouchpadAsPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CheckNavigation(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "withConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 891
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v0, v3, :cond_1

    .line 893
    const-string v0, "WarGamepad"

    const-string v1, "Attached xPeria play gamepad."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 895
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iput-boolean v4, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 896
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 897
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-eq v0, v3, :cond_0

    .line 900
    const-string v0, "WarGamepad"

    const-string v1, "Detaching xPeria play gamepad."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iput v3, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 902
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 903
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastDisconnect:J

    goto :goto_0
.end method

.method public GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 938
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Processing touchpad as pointer..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->setProcessTouchpadAsPointer(Z)V

    .line 940
    return-void
.end method

.method GetDeviceIndex(II)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "source"    # I

    .prologue
    .line 161
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    if-ne v1, p1, :cond_0

    .line 169
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 162
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method GetDeviceIndexByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "gamepadString"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, -0x1

    return v0
.end method

.method GetFreeIndex(II)I
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "source"    # I

    .prologue
    const/4 v1, -0x1

    .line 183
    and-int/lit8 v2, p2, 0x10

    if-nez v2, :cond_1

    move v0, v1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v0, v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    if-eq v2, p1, :cond_0

    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget v2, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v0, v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    if-nez v2, :cond_4

    .line 193
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->deviceId:I

    .line 194
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    goto :goto_0

    .line 191
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public GetGamepadAxis(II)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "axisId"    # I

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aget v0, v0, p2

    return v0
.end method

.method public GetGamepadButtons(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    return v0
.end method

.method public GetGamepadTrack(III)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "trackId"    # I
    .param p3, "coord"    # I

    .prologue
    const/4 v5, 0x4

    .line 1055
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->numGamepadTouchSamples:I

    if-ge v2, v5, :cond_0

    const/4 v2, 0x0

    .line 1062
    :goto_0
    return v2

    .line 1057
    :cond_0
    const/4 v0, 0x0

    .line 1058
    .local v0, "average":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1059
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    mul-int/lit8 v3, p2, 0x8

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1062
    :cond_1
    div-int/lit8 v2, v0, 0x4

    goto :goto_0
.end method

.method public GetGamepadType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    return v0
.end method

.method GetMogaControllerType(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x4

    .line 1068
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v3, v1}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    .line 1069
    .local v0, "mogaType":I
    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return v1

    .line 1070
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 1071
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moga controller type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 1072
    goto :goto_0
.end method

.method GetWithDeadZone(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 1161
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 1163
    .end local p1    # "x":F
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "x":F
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public InitMogaController(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, p1

    invoke-static {p0}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v2

    iput-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    .line 205
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->init()Z

    .line 206
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V

    .line 207
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    .line 208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "*****Set Moga as index 0"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local p1    # "index":I
    :goto_0
    return p1

    .line 209
    .restart local p1    # "index":I
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    .line 211
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public SetGamepad(Ljava/lang/String;)V
    .locals 3
    .param p1, "gamepadString"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 264
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndexByName(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "index":I
    if-ne v0, v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v1, "GS controller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    goto :goto_0
.end method

.method public SetReportPS3As360(Z)V
    .locals 2
    .param p1, "reportPS3as360"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput-boolean p1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->reportPS3as360:Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public TouchpadEvent(IIIIII)V
    .locals 5
    .param p1, "touchAction"    # I
    .param p2, "count"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 995
    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_1

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v3

    iput v3, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->numGamepadTouchSamples:I

    .line 998
    if-ne p1, v4, :cond_2

    .line 999
    invoke-virtual {p0, v3, v3, v3, v4}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 1000
    invoke-virtual {p0, v4, v3, v3, v4}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 1023
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v3

    iget v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->numGamepadTouchSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->numGamepadTouchSamples:I

    .line 1007
    :cond_2
    const/4 v0, 0x0

    .line 1008
    .local v0, "fullChange":Z
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 1009
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v3

    iput-boolean v4, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouchReversed:Z

    .line 1010
    const/4 v0, 0x1

    .line 1016
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouchReversed:Z

    if-eqz v1, :cond_6

    .line 1017
    invoke-virtual {p0, v4, p3, p4, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 1018
    invoke-virtual {p0, v3, p5, p6, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    goto :goto_0

    .line 1011
    :cond_4
    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    .line 1012
    :cond_5
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v3

    iput-boolean v3, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouchReversed:Z

    .line 1013
    const/4 v0, 0x1

    goto :goto_1

    .line 1020
    :cond_6
    invoke-virtual {p0, v3, p3, p4, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 1021
    invoke-virtual {p0, v4, p5, p6, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    goto :goto_0
.end method

.method public USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device Attached : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez p1, :cond_1

    .line 279
    const-string v4, "WarGamepad"

    const-string v5, "Given null device?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 289
    const-string v4, "WarGamepad"

    const-string v5, "could not find interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p1, v7}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 295
    .local v3, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 296
    const-string v4, "WarGamepad"

    const-string v5, "could not find endpoint"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v3, v7}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 301
    .local v1, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 302
    const-string v4, "WarGamepad"

    const-string v5, "endpoint is not interrupt type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v2

    .line 308
    .local v2, "index":I
    if-eq v2, v9, :cond_0

    .line 311
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iput-boolean v8, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 312
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 313
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3, v8}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 314
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success, I have a USB gamepad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 316
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PLAYSTATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 317
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iput-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 318
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->reportPS3as360:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    const/16 v5, 0x8

    iput v5, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 320
    :cond_5
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$102(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    .line 321
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4, v1}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$202(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbEndpoint;)Landroid/hardware/usb/UsbEndpoint;

    .line 322
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4, v0}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$302(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 323
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wardrumstudios/utils/WarGamepad$1;

    invoke-direct {v6, p0, v2}, Lcom/wardrumstudios/utils/WarGamepad$1;-><init>(Lcom/wardrumstudios/utils/WarGamepad;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v4, v5}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$402(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 328
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$400(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 330
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    .line 339
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_6
    const-string v4, "WarGamepad"

    const-string v5, "Failed to open USB gamepad"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iput v9, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 334
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4, v10}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$102(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    .line 335
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    invoke-static {v4, v10}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$302(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 336
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, v2

    iput-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    goto :goto_1
.end method

.method public USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 344
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v0

    .line 345
    .local v0, "index":I
    if-ne v0, v3, :cond_0

    .line 346
    const-string v1, "WarGamepad"

    const-string v2, "Disconnected gamepad, device not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-eq v1, v3, :cond_2

    .line 350
    const-string v1, "WarGamepad"

    const-string v2, "Disconnected gamepad, stopping usb thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 353
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$102(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    .line 354
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 356
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$400(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$400(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastDisconnect:J

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    .line 362
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public USBDeviceRun(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    .line 369
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 370
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 371
    .local v2, "request":Landroid/hardware/usb/UsbRequest;
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$300(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$200(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 372
    const/4 v3, -0x1

    .line 375
    .local v3, "status":B
    :goto_0
    invoke-virtual {v2, v0, v7}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 377
    const/16 v4, 0x40

    invoke-direct {p0, p1, v4}, Lcom/wardrumstudios/utils/WarGamepad;->sendCommand(II)V

    .line 379
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$300(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 380
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 381
    .local v1, "newStatus":B
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****got status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eq v1, v3, :cond_0

    .line 383
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move v3, v1

    .line 385
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_0

    .line 387
    const/16 v4, 0x20

    invoke-direct {p0, p1, v4}, Lcom/wardrumstudios/utils/WarGamepad;->sendCommand(II)V

    .line 391
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v4

    goto :goto_0

    .line 395
    .end local v1    # "newStatus":B
    :cond_1
    const-string v4, "WarGamepad"

    const-string v5, "requestWait failed, exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public UpdateTrack(IIIZ)V
    .locals 5
    .param p1, "trackNo"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "fullChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1026
    if-eqz p4, :cond_0

    .line 1027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 1028
    mul-int/lit8 v2, p1, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int v1, v2, v3

    .line 1030
    .local v1, "index":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    aput p2, v2, v1

    .line 1031
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_0
    mul-int/lit8 v2, p1, 0x8

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->numGamepadTouchSamples:I

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1036
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    aput p2, v2, v1

    .line 1037
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadTouches:[I

    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 1039
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->CheckNavigation(Landroid/content/res/Configuration;)V

    .line 887
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 888
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onCreate(Landroid/os/Bundle;)V

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    .line 224
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v2}, Lcom/bda/controller/Controller;->init()Z

    .line 225
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, p0, v3}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    sget v2, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    new-array v2, v2, [Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    .line 232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v2, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v1, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    new-instance v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;-><init>(Lcom/wardrumstudios/utils/WarGamepad;)V

    aput-object v3, v2, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    goto :goto_0

    .line 237
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_0
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "R800"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string v2, "WarGamepad"

    const-string v3, "Xperia Play detected."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$002(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Z)Z

    .line 240
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGamepad;->CheckNavigation(Landroid/content/res/Configuration;)V

    .line 246
    :goto_2
    return-void

    .line 242
    :cond_1
    const-string v2, "WarGamepad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v2, "WarGamepad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->exit()V

    .line 254
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/wardrumstudios/utils/WarGamepad;->MAX_GAME_PADS:I

    if-ge v0, v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->exit()V

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarBilling;->onDestroy()V

    .line 260
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v4

    .line 422
    .local v4, "index":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    .line 424
    .local v7, "source":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p0, v8, v7}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v4

    .line 425
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_0

    .line 427
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "********************ERROR********* cannot assign controller MotionEvent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 523
    .end local v7    # "source":I
    :goto_1
    return v8

    .line 423
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 432
    :cond_2
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 433
    const/4 v8, 0x0

    goto :goto_1

    .line 440
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_12

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 446
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    if-eq v8, v9, :cond_6

    .line 447
    :cond_4
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$502(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/view/InputDevice;)Landroid/view/InputDevice;

    .line 450
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    if-nez v8, :cond_5

    .line 451
    const/4 v8, 0x0

    goto :goto_1

    .line 455
    :cond_5
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, -0x1

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 456
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 457
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NYKO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 458
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x6

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 475
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v9, 0xb

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 476
    :cond_7
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$502(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/view/InputDevice;)Landroid/view/InputDevice;

    .line 477
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "name":Ljava/lang/String;
    const-string v8, "Thunder"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Amazon Fire Game Controller"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 479
    :cond_8
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/16 v9, 0xc

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 480
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 481
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    .line 482
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Setting GamepadType to Amazon Controller"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 487
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v10, v10, v4

    iget-wide v10, v10, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastDisconnect:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    .line 489
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 461
    :cond_b
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Broadcom Bluetooth HID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 462
    .local v5, "isBroadcom":Z
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 463
    .local v1, "gas":Landroid/view/InputDevice$MotionRange;
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    const/16 v9, 0x17

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 465
    .local v0, "brake":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 466
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mightBeNyko:Z

    .line 467
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->NykoCheckHacks:I

    goto/16 :goto_2

    .line 492
    .end local v0    # "brake":Landroid/view/InputDevice$MotionRange;
    .end local v1    # "gas":Landroid/view/InputDevice$MotionRange;
    .end local v5    # "isBroadcom":Z
    :cond_c
    :try_start_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$502(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/view/InputDevice;)Landroid/view/InputDevice;

    .line 493
    const-string v8, "WarGamepad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FIXME! Received joystick event without a valid joystick. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v10, v10, v4

    invoke-static {v10}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 496
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->IsAndroidTV:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/16 v9, 0xd

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 498
    :cond_d
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 499
    const-string v8, "WarGamepad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mLastGamepadInputDevice.getName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v10, v10, v4

    invoke-static {v10}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PLAYSTATION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 501
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    .line 502
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    iget-boolean v8, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->reportPS3as360:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/16 v9, 0x8

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 506
    :cond_e
    :goto_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 507
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_f
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 514
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_11

    .line 515
    invoke-direct {p0, p1, v3}, Lcom/wardrumstudios/utils/WarGamepad;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 503
    .end local v2    # "historySize":I
    .end local v3    # "i":I
    :cond_10
    :try_start_1
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v8, v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 508
    :catch_0
    move-exception v8

    goto :goto_4

    .line 519
    .restart local v2    # "historySize":I
    .restart local v3    # "i":I
    :cond_11
    const/4 v8, -0x1

    invoke-direct {p0, p1, v8}, Lcom/wardrumstudios/utils/WarGamepad;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 520
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 523
    .end local v2    # "historySize":I
    .end local v3    # "i":I
    :cond_12
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 737
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v2

    .line 738
    .local v2, "index":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 739
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    .line 740
    .local v6, "source":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v2

    .line 741
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 742
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    .line 743
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "********************ERROR********* cannot assign controller keyEvent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 873
    .end local v6    # "source":I
    :goto_1
    return v7

    .line 739
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 748
    :cond_2
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v4, v7, v2

    .line 750
    .local v4, "myGamePad":Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    const/4 v1, 0x0

    .line 756
    .local v1, "buttonMask":I
    :try_start_0
    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    if-lez v7, :cond_8

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v8, 0xb

    if-eq v7, v8, :cond_8

    .line 758
    const/4 v7, 0x7

    if-lt p1, v7, :cond_3

    const/16 v7, 0x10

    if-le p1, v7, :cond_6

    :cond_3
    const/16 v7, 0x14

    if-lt p1, v7, :cond_4

    const/16 v7, 0x16

    if-le p1, v7, :cond_6

    :cond_4
    const/16 v7, 0x25

    if-lt p1, v7, :cond_5

    const/16 v7, 0x28

    if-le p1, v7, :cond_6

    :cond_5
    const/16 v7, 0x2f

    if-eq p1, v7, :cond_6

    const/16 v7, 0x1d

    if-eq p1, v7, :cond_6

    const/16 v7, 0x20

    if-eq p1, v7, :cond_6

    const/16 v7, 0x33

    if-ne p1, v7, :cond_10

    :cond_6
    const/4 v3, 0x1

    .line 762
    .local v3, "mightBeGamestop":Z
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_11

    .line 763
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    :cond_7
    const/4 v7, 0x5

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 774
    .end local v3    # "mightBeGamestop":Z
    :cond_8
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 776
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v8, 0xc

    if-eq v7, v8, :cond_9

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v8, 0xb

    if-eq v7, v8, :cond_9

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    .line 778
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$502(Lcom/wardrumstudios/utils/WarGamepad$GamePad;Landroid/view/InputDevice;)Landroid/view/InputDevice;

    .line 779
    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 780
    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 781
    .local v5, "name":Ljava/lang/String;
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v8, 0xc

    if-eq v7, v8, :cond_14

    const-string v7, "Thunder"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "Amazon Fire Game Controller"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 782
    :cond_a
    const/16 v7, 0xc

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    .line 784
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Setting GamepadType to Amazon Controller onKeyDown"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    .end local v5    # "name":Ljava/lang/String;
    :cond_b
    :goto_4
    const/4 v0, 0x1

    .line 799
    .local v0, "bPS3Flipped":Z
    packed-switch p1, :pswitch_data_0

    .line 818
    :goto_5
    :pswitch_0
    if-nez v1, :cond_c

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 819
    packed-switch p1, :pswitch_data_1

    .line 828
    :goto_6
    if-eqz v1, :cond_c

    const/4 v7, 0x1

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    .line 831
    :cond_c
    if-nez v1, :cond_d

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    .line 832
    sparse-switch p1, :sswitch_data_0

    .line 853
    :cond_d
    :goto_7
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    .line 854
    const/16 v7, 0x6f

    if-ne p1, v7, :cond_1d

    .line 855
    or-int/lit8 v1, v1, 0x20

    .line 856
    const/16 p1, 0x6d

    .line 869
    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_f

    .line 870
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/2addr v7, v1

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 873
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto/16 :goto_1

    .line 758
    .end local v0    # "bPS3Flipped":Z
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 765
    .restart local v3    # "mightBeGamestop":Z
    :cond_11
    if-eqz v3, :cond_12

    .line 766
    const/4 v7, 0x3

    :try_start_1
    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    goto/16 :goto_3

    .line 771
    .end local v3    # "mightBeGamestop":Z
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 767
    .restart local v3    # "mightBeGamestop":Z
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GS controller"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Broadcom Bluetooth HID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 768
    :cond_13
    const/4 v7, 0x3

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 772
    .end local v3    # "mightBeGamestop":Z
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 786
    .restart local v5    # "name":Ljava/lang/String;
    :cond_14
    iget v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/16 v8, 0xb

    if-eq v7, v8, :cond_b

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$500(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Amazon"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 787
    const/16 v7, 0xb

    iput v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->lastConnect:J

    .line 789
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Setting GamepadType to Amazon Remote"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 801
    .end local v5    # "name":Ljava/lang/String;
    .restart local v0    # "bPS3Flipped":Z
    :pswitch_1
    iget-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_15

    const/4 v1, 0x1

    :goto_9
    goto/16 :goto_5

    :cond_15
    if-eqz v0, :cond_16

    const/4 v1, 0x4

    goto :goto_9

    :cond_16
    const/4 v1, 0x1

    goto :goto_9

    .line 802
    :pswitch_2
    iget-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_17

    const/4 v1, 0x4

    :goto_a
    goto/16 :goto_5

    :cond_17
    if-eqz v0, :cond_18

    const/4 v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v1, 0x4

    goto :goto_a

    .line 803
    :pswitch_3
    iget-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_19

    const/16 v1, 0x8

    :goto_b
    goto/16 :goto_5

    :cond_19
    if-eqz v0, :cond_1a

    const/4 v1, 0x2

    goto :goto_b

    :cond_1a
    const/16 v1, 0x8

    goto :goto_b

    .line 804
    :pswitch_4
    iget-boolean v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_1b

    const/4 v1, 0x2

    :goto_c
    goto/16 :goto_5

    :cond_1b
    if-eqz v0, :cond_1c

    const/16 v1, 0x8

    goto :goto_c

    :cond_1c
    const/4 v1, 0x2

    goto :goto_c

    .line 806
    :pswitch_5
    const/16 v1, 0x10

    goto/16 :goto_5

    .line 807
    :pswitch_6
    const/16 v1, 0x20

    goto/16 :goto_5

    .line 808
    :pswitch_7
    const/16 v1, 0x80

    goto/16 :goto_5

    .line 809
    :pswitch_8
    const/16 v1, 0x40

    goto/16 :goto_5

    .line 810
    :pswitch_9
    const/16 v1, 0x1000

    goto/16 :goto_5

    .line 811
    :pswitch_a
    const/16 v1, 0x2000

    goto/16 :goto_5

    .line 814
    :pswitch_b
    iget-object v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    goto/16 :goto_5

    .line 815
    :pswitch_c
    iget-object v7, v4, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x5

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    goto/16 :goto_5

    .line 820
    :pswitch_d
    const/16 v1, 0x400

    goto/16 :goto_6

    .line 821
    :pswitch_e
    const/16 v1, 0x800

    goto/16 :goto_6

    .line 822
    :pswitch_f
    const/16 v1, 0x100

    goto/16 :goto_6

    .line 823
    :pswitch_10
    const/16 v1, 0x200

    goto/16 :goto_6

    .line 824
    :pswitch_11
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 833
    :sswitch_0
    const/16 v1, 0x400

    goto/16 :goto_7

    .line 834
    :sswitch_1
    const/16 v1, 0x800

    goto/16 :goto_7

    .line 835
    :sswitch_2
    const/16 v1, 0x100

    goto/16 :goto_7

    .line 836
    :sswitch_3
    const/16 v1, 0x200

    goto/16 :goto_7

    .line 837
    :sswitch_4
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 839
    :sswitch_5
    const/4 v1, 0x2

    .line 840
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    const/16 v8, 0x9e

    if-ne v7, v8, :cond_d

    or-int/lit16 v1, v1, 0x4000

    goto/16 :goto_7

    .line 844
    :sswitch_6
    const/16 v1, 0x1000

    .line 845
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    const/16 v8, 0xe2

    if-ne v7, v8, :cond_d

    const v7, 0x8000

    or-int/2addr v1, v7

    goto/16 :goto_7

    .line 847
    :sswitch_7
    const/16 v1, 0x2000

    goto/16 :goto_7

    .line 857
    :cond_1d
    const/16 v7, 0x42

    if-ne p1, v7, :cond_e

    .line 858
    or-int/lit8 v1, v1, 0x10

    .line 859
    const/16 p1, 0x6c

    goto/16 :goto_8

    .line 799
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 819
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/bda/controller/KeyEvent;

    .prologue
    const/4 v9, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x7

    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "buttonMask":I
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getControllerId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v1

    .line 1079
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v2, v3, v1

    .line 1083
    .local v2, "myGamePad":Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-eq v3, v6, :cond_2

    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-eq v3, v5, :cond_2

    .line 1084
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType(I)I

    move-result v3

    iput v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 1090
    :cond_2
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 1091
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1116
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    :cond_3
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1120
    if-eqz v0, :cond_0

    .line 1121
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    or-int/2addr v3, v0

    iput v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto :goto_0

    .line 1094
    :sswitch_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1095
    :sswitch_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1096
    :sswitch_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 1097
    :sswitch_3
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1098
    :sswitch_4
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 1099
    :sswitch_5
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 1100
    :sswitch_6
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 1101
    :sswitch_7
    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    .line 1102
    :sswitch_8
    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    .line 1103
    :sswitch_9
    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    .line 1106
    :sswitch_a
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_3

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    .line 1107
    :sswitch_b
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_3

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    .line 1108
    :sswitch_c
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_1

    .line 1109
    :sswitch_d
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_3

    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 1112
    :sswitch_e
    iget-object v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v8, v3, v6

    goto :goto_1

    .line 1113
    :sswitch_f
    iget-object v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v8, v3, v9

    goto :goto_1

    .line 1123
    :cond_4
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 1148
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 1153
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    goto/16 :goto_0

    .line 1126
    :sswitch_10
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1127
    :sswitch_11
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 1128
    :sswitch_12
    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 1129
    :sswitch_13
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1130
    :sswitch_14
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 1131
    :sswitch_15
    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    .line 1132
    :sswitch_16
    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    .line 1133
    :sswitch_17
    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    .line 1134
    :sswitch_18
    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    .line 1135
    :sswitch_19
    or-int/lit16 v0, v0, 0x2000

    goto :goto_2

    .line 1138
    :sswitch_1a
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_5

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    .line 1139
    :sswitch_1b
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_5

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    .line 1140
    :sswitch_1c
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_5

    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    .line 1141
    :sswitch_1d
    iget v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-ne v3, v5, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_2

    .line 1144
    :sswitch_1e
    iget-object v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v7, v3, v6

    goto :goto_2

    .line 1145
    :sswitch_1f
    iget-object v3, v2, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    aput v7, v3, v9

    goto :goto_2

    .line 1091
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x60 -> :sswitch_0
        0x61 -> :sswitch_3
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
        0x66 -> :sswitch_7
        0x67 -> :sswitch_6
        0x68 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
    .end sparse-switch

    .line 1123
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1d
        0x60 -> :sswitch_10
        0x61 -> :sswitch_13
        0x63 -> :sswitch_11
        0x64 -> :sswitch_12
        0x66 -> :sswitch_17
        0x67 -> :sswitch_16
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1f
        0x6a -> :sswitch_18
        0x6b -> :sswitch_19
        0x6c -> :sswitch_14
        0x6d -> :sswitch_15
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 644
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v2

    .line 645
    .local v2, "index":I
    if-ne v2, v11, :cond_2

    .line 646
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    .line 647
    .local v4, "source":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p0, v9, v4}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v2

    .line 648
    if-ne v2, v11, :cond_2

    .line 649
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_0

    .line 650
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "********************ERROR********* cannot assign controller keyEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 731
    .end local v4    # "source":I
    :goto_1
    return v5

    .line 646
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 655
    :cond_2
    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v3, v9, v2

    .line 657
    .local v3, "myGamePad":Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    const/4 v1, 0x0

    .line 659
    .local v1, "buttonMask":I
    const/4 v0, 0x1

    .line 661
    .local v0, "bPS3Flipped":Z
    packed-switch p1, :pswitch_data_0

    .line 679
    :goto_2
    :pswitch_0
    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 680
    packed-switch p1, :pswitch_data_1

    .line 687
    :goto_3
    if-eqz v1, :cond_3

    iput v5, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadDpadHack:I

    .line 689
    :cond_3
    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->access$000(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    if-eq v5, v11, :cond_4

    .line 690
    sparse-switch p1, :sswitch_data_0

    .line 711
    :cond_4
    :goto_4
    iget v5, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 712
    const/16 v5, 0x6f

    if-ne p1, v5, :cond_f

    .line 713
    or-int/lit8 v1, v1, 0x20

    .line 714
    const/16 p1, 0x6d

    .line 727
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 728
    iget v5, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v5, v6

    iput v5, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadButtonMask:I

    .line 731
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 663
    :pswitch_1
    iget-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_7

    move v1, v5

    :goto_6
    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    move v1, v6

    goto :goto_6

    :cond_8
    move v1, v5

    goto :goto_6

    .line 664
    :pswitch_2
    iget-boolean v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v7, :cond_9

    move v1, v6

    :goto_7
    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    move v1, v5

    goto :goto_7

    :cond_a
    move v1, v6

    goto :goto_7

    .line 665
    :pswitch_3
    iget-boolean v6, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v6, :cond_b

    move v1, v7

    :goto_8
    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    move v1, v8

    goto :goto_8

    :cond_c
    move v1, v7

    goto :goto_8

    .line 666
    :pswitch_4
    iget-boolean v6, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->is360:Z

    if-eqz v6, :cond_d

    move v1, v8

    :goto_9
    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    move v1, v7

    goto :goto_9

    :cond_e
    move v1, v8

    goto :goto_9

    .line 668
    :pswitch_5
    const/16 v1, 0x10

    goto :goto_2

    .line 669
    :pswitch_6
    const/16 v1, 0x20

    goto :goto_2

    .line 670
    :pswitch_7
    const/16 v1, 0x80

    goto :goto_2

    .line 671
    :pswitch_8
    const/16 v1, 0x40

    goto :goto_2

    .line 672
    :pswitch_9
    const/16 v1, 0x1000

    goto :goto_2

    .line 673
    :pswitch_a
    const/16 v1, 0x2000

    goto :goto_2

    .line 676
    :pswitch_b
    iget-object v7, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v8, 0x0

    aput v8, v7, v6

    goto :goto_2

    .line 677
    :pswitch_c
    iget-object v6, v3, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    goto/16 :goto_2

    .line 681
    :pswitch_d
    const/16 v1, 0x400

    goto :goto_3

    .line 682
    :pswitch_e
    const/16 v1, 0x800

    goto/16 :goto_3

    .line 683
    :pswitch_f
    const/16 v1, 0x100

    goto/16 :goto_3

    .line 684
    :pswitch_10
    const/16 v1, 0x200

    goto/16 :goto_3

    .line 685
    :pswitch_11
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 691
    :sswitch_0
    const/16 v1, 0x400

    goto :goto_4

    .line 692
    :sswitch_1
    const/16 v1, 0x800

    goto/16 :goto_4

    .line 693
    :sswitch_2
    const/16 v1, 0x100

    goto/16 :goto_4

    .line 694
    :sswitch_3
    const/16 v1, 0x200

    goto/16 :goto_4

    .line 695
    :sswitch_4
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 697
    :sswitch_5
    const/4 v1, 0x2

    .line 698
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    const/16 v6, 0x9e

    if-ne v5, v6, :cond_4

    or-int/lit16 v1, v1, 0x4000

    goto/16 :goto_4

    .line 701
    :sswitch_6
    const/16 v1, 0x1000

    .line 702
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    const/16 v6, 0xe2

    if-ne v5, v6, :cond_4

    const v5, 0x8000

    or-int/2addr v1, v5

    goto/16 :goto_4

    .line 704
    :sswitch_7
    const/16 v1, 0x2000

    goto/16 :goto_4

    .line 715
    :cond_f
    const/16 v5, 0x42

    if-ne p1, v5, :cond_5

    .line 716
    or-int/lit8 v1, v1, 0x10

    .line 717
    const/16 p1, 0x6c

    goto/16 :goto_5

    .line 661
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 680
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 690
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/bda/controller/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1169
    invoke-virtual {p1}, Lcom/bda/controller/MotionEvent;->getControllerId()I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v0

    .line 1170
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v2, v0

    .line 1173
    .local v1, "myGamePad":Lcom/wardrumstudios/utils/WarGamepad$GamePad;
    iget v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 1174
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType(I)I

    move-result v2

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 1176
    :cond_1
    invoke-virtual {p1, v4}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v2

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiX:F

    .line 1177
    invoke-virtual {p1, v5}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v2

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiY:F

    .line 1178
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    iget v3, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiX:F

    aput v3, v2, v4

    .line 1179
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    iget v3, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->mobiY:F

    aput v3, v2, v5

    .line 1180
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v3, 0x2

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v4

    aput v4, v2, v3

    .line 1181
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadAxes:[F

    const/4 v3, 0x3

    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/bda/controller/StateEvent;

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x1

    .line 1186
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v0

    .line 1189
    .local v0, "index":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1192
    :pswitch_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1194
    :pswitch_1
    if-le v0, v4, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    .line 1196
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->active:Z

    goto :goto_0

    .line 1201
    :pswitch_2
    if-ne v0, v4, :cond_0

    .line 1202
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getControllerId()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v0

    .line 1203
    if-le v0, v4, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType(I)I

    move-result v2

    iput v2, v1, Lcom/wardrumstudios/utils/WarGamepad$GamePad;->GamepadType:I

    goto :goto_0

    .line 1215
    :pswitch_3
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1192
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v13, -0x1

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarGamepad;->GetDeviceIndex(II)I

    move-result v7

    .line 947
    .local v7, "gIndex":I
    if-ne v7, v13, :cond_2

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    .line 949
    .local v11, "source":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0, v11}, Lcom/wardrumstudios/utils/WarGamepad;->GetFreeIndex(II)I

    move-result v7

    .line 950
    if-ne v7, v13, :cond_2

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "********************ERROR********* cannot assign controller - onTouchEvent "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 991
    .end local v11    # "source":I
    :goto_1
    return v0

    .line 948
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamePads:[Lcom/wardrumstudios/utils/WarGamepad$GamePad;

    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->ClearBadJoystickAxis(Lcom/wardrumstudios/utils/WarGamepad$GamePad;)V

    .line 959
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x100008

    if-ne v0, v1, :cond_6

    .line 960
    const/4 v2, 0x0

    .line 961
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "x1":I
    const/4 v4, 0x0

    .local v4, "y1":I
    const/4 v5, 0x0

    .local v5, "x2":I
    const/4 v6, 0x0

    .line 963
    .local v6, "y2":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 964
    .local v10, "numEvents":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_5

    .line 967
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 971
    .local v9, "index":I
    if-nez v2, :cond_4

    .line 973
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v3, v0

    .line 974
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 975
    add-int/lit8 v2, v2, 0x1

    .line 964
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 977
    :cond_4
    if-ne v2, v12, :cond_3

    .line 979
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v5, v0

    .line 980
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 986
    .end local v9    # "index":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wardrumstudios/utils/WarGamepad;->TouchpadEvent(IIIIII)V

    move v0, v12

    .line 988
    goto :goto_1

    .line 991
    .end local v2    # "count":I
    .end local v3    # "x1":I
    .end local v4    # "y1":I
    .end local v5    # "x2":I
    .end local v6    # "y2":I
    .end local v8    # "i":I
    .end local v10    # "numEvents":I
    :cond_6
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public native processTouchpadAsPointer(Landroid/view/ViewParent;Z)Z
.end method
