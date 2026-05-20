.class public Lcom/miui/home/recents/layoutconfig/TaskInnerHorizonalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskInnerHorizonalLayoutConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHorizontalGapInWindowFraction(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x3cdd2f1b    # 0.027f

    goto :goto_0

    :cond_0
    const p0, 0x3cf5c28f    # 0.03f

    :goto_0
    return p0
.end method

.method public getLeftPaddingInWindowFraction(Z)F
    .locals 0

    .line 19
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE2:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x3dc28f5c    # 0.095f

    goto :goto_0

    :cond_0
    const p0, 0x3db645a2    # 0.089f

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x3d8f5c29    # 0.07f

    goto :goto_1

    :cond_2
    const p0, 0x3d50e560    # 0.051f

    :goto_1
    return p0
.end method

.method public getRightPaddingInWindowFraction(Z)F
    .locals 0

    .line 27
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE2:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x3dcac083    # 0.099f

    goto :goto_0

    :cond_0
    const p0, 0x3dc28f5c    # 0.095f

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x3def9db2    # 0.117f

    goto :goto_1

    :cond_2
    const p0, 0x3e09374c    # 0.134f

    :goto_1
    return p0
.end method

.method public getTaskViewCenterYInWindowFraction()F
    .locals 0

    const p0, 0x3eff7cee    # 0.499f

    return p0
.end method

.method public getTaskViewCenterYInWindowFractionForLandscape()F
    .locals 0

    const p0, 0x3ef3b646    # 0.476f

    return p0
.end method

.method public getTaskViewScale()F
    .locals 0

    const p0, 0x3ec624dd    # 0.387f

    return p0
.end method

.method public getTaskViewScaleForLandscape()F
    .locals 0

    const p0, 0x3ec624dd    # 0.387f

    return p0
.end method
