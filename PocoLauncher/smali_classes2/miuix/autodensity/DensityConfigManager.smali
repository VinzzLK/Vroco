.class public Lmiuix/autodensity/DensityConfigManager;
.super Ljava/lang/Object;
.source "DensityConfigManager.java"


# static fields
.field private static final ACCESSIBILITY_ZOOM_SMALL:F

.field private static sInstance:Lmiuix/autodensity/DensityConfigManager;


# instance fields
.field private mAutoDensityEnable:Z

.field private mCurrentAccessibilityDpi:I

.field private mCurrentAccessibilityDpiDelta:F

.field private mCurrentDefaultDpi:I

.field private mCurrentForcedDpi:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDeviceScale:D

.field private mMaxSizeInch:F

.field private mMinSizeInch:F

.field private mOriginConfig:Lmiuix/autodensity/DensityConfig;

.field private mPPI:D

.field private final mPhysicalScreenSize:Landroid/graphics/Point;

.field private mScreenInches:F

.field private final mScreenSize:Landroid/graphics/Point;

.field private mTargetConfig:Lmiuix/autodensity/DensityConfig;

.field private mUseDeprecatedDensityLogic:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mUseStableDensityLogic:Z

.field private mUserDeviceScale:D

.field private mUserPPI:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zizhan"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    sput v0, Lmiuix/autodensity/DensityConfigManager;->ACCESSIBILITY_ZOOM_SMALL:F

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUseStableDensityLogic:Z

    .line 38
    iput-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUseDeprecatedDensityLogic:Z

    const/16 v1, 0xa0

    .line 42
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    .line 44
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    .line 47
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    const-wide/16 v2, 0x0

    .line 49
    iput-wide v2, p0, Lmiuix/autodensity/DensityConfigManager;->mDeviceScale:D

    .line 50
    iput-wide v2, p0, Lmiuix/autodensity/DensityConfigManager;->mPPI:D

    .line 51
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenInches:F

    .line 52
    iput-wide v2, p0, Lmiuix/autodensity/DensityConfigManager;->mUserDeviceScale:D

    .line 53
    iput v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUserPPI:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    .line 56
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    return-void
.end method

.method private calcPadScale(F)F
    .locals 0

    const p0, 0x4114cccd    # 9.3f

    div-float/2addr p1, p0

    const p0, 0x3f87ae14    # 1.06f

    mul-float/2addr p1, p0

    const p0, 0x3f933333    # 1.15f

    .line 484
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private calcPhoneScale(F)F
    .locals 0

    const p0, 0x40333333    # 2.8f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 479
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getAccessibilityDelta(Landroid/content/Context;)F
    .locals 3

    .line 449
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 450
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "in flip external screen delta: 1.0f"

    .line 451
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 455
    :cond_1
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    .line 456
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default dpi: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 460
    :cond_2
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "AutoDensity"

    const-string p1, "getAccessibilityDelta failed reason: this process is isolated"

    .line 461
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 468
    iget v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    .line 469
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accessibility dpi: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", delta: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method private getDebugScale()F
    .locals 0

    .line 414
    invoke-static {}, Lmiuix/autodensity/RootUtil;->isDeviceRooted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lmiuix/autodensity/DebugUtil;->getAutoDensityScaleInDebugMode()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDeviceScale(Landroid/content/Context;)D
    .locals 4

    .line 419
    iget-wide v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUserDeviceScale:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 420
    iput-wide v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDeviceScale:D

    return-wide v0

    .line 423
    :cond_0
    invoke-static {}, Lmiuix/autodensity/SkuScale;->hasSkuScale()Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_1

    .line 424
    invoke-static {p1}, Lmiuix/autodensity/SkuScale;->getSkuScale(Landroid/content/Context;)F

    move-result p1

    :goto_0
    float-to-double v1, p1

    goto :goto_1

    .line 425
    :cond_1
    sget-boolean p1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz p1, :cond_3

    .line 427
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 431
    :cond_2
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mMinSizeInch:F

    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(F)F

    move-result p1

    goto :goto_0

    .line 433
    :cond_3
    sget-boolean p1, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_4

    .line 434
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mMaxSizeInch:F

    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPadScale(F)F

    move-result p1

    goto :goto_0

    .line 435
    :cond_4
    sget-boolean p1, Lmiuix/os/Build;->IS_AUTOMOTIVE:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 439
    :cond_5
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mMinSizeInch:F

    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(F)F

    move-result p1

    goto :goto_0

    .line 441
    :goto_1
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceScale "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 444
    :cond_6
    iput-wide v1, p0, Lmiuix/autodensity/DensityConfigManager;->mDeviceScale:D

    return-wide v1
.end method

.method public static getInstance()Lmiuix/autodensity/DensityConfigManager;
    .locals 1

    .line 68
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lmiuix/autodensity/DensityConfigManager;

    invoke-direct {v0}, Lmiuix/autodensity/DensityConfigManager;-><init>()V

    sput-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    .line 71
    :cond_0
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    return-object v0
.end method

.method private updateDeviceDisplayInfo(Landroid/content/Context;)V
    .locals 3

    .line 236
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 237
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DensityConfigManager updateDeviceDisplayInfo context.display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "display"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "window"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 253
    :goto_0
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    .line 254
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, p1, v0, v1}, Lmiuix/autodensity/DensityConfigManager;->updateDeviceDisplayInfo(Landroid/content/Context;Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 257
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DensityConfigManager updateDeviceDisplayInfo defaultDisplay-displayMetrics "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " defaultDisplay "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    if-eqz p1, :cond_3

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DensityConfigManager updateDeviceDisplayInfo display "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateDeviceDisplayInfo(Landroid/content/Context;Landroid/view/Display;Landroid/util/DisplayMetrics;)V
    .locals 8

    .line 279
    invoke-direct {p0, p2}, Lmiuix/autodensity/DensityConfigManager;->updatePhysicalSizeFromDisplay(Landroid/view/Display;)V

    .line 280
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tupdateDeviceDisplayInfo context.densityDpi "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-static {p2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getDeviceDefaultDpi()I

    move-result p2

    const-string v0, "AutoDensity"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 286
    iget p2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warning!! can not get default dpi!! use defaultDisplayMetrics.densityDpi instead of it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tupdateDeviceDisplayInfo getDeviceDefaultDpi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 294
    :cond_2
    iput p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 295
    iput v2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    .line 296
    iget-object v3, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget-object v4, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Point;->set(II)V

    .line 297
    invoke-static {}, Lmiuix/autodensity/DensityUtil;->isSupportSwitchResolution()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string v5, "persist.sys.miui_resolution"

    .line 298
    invoke-static {v5, v3}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenResolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 300
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ","

    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 302
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 303
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 304
    iget-object v6, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v6, v5, v3}, Landroid/graphics/Point;->set(II)V

    .line 306
    :cond_3
    iget-object v3, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->y:I

    if-eq v5, v7, :cond_4

    .line 308
    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr p2, v3

    iget v3, v6, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v3

    iput p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    .line 311
    :cond_4
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tupdateDeviceDisplayInfo getDeviceDefaultDisplayDpi "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 316
    :cond_5
    sget-boolean p2, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p2, :cond_6

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 317
    iput v2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    goto :goto_1

    .line 320
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "key_screen_zoom_level"

    invoke-static {p2, p3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-le p2, v4, :cond_7

    const p2, 0x3f866666    # 1.05f

    .line 322
    iput p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    goto :goto_0

    :cond_7
    if-ge p2, v4, :cond_8

    .line 324
    sget p2, Lmiuix/autodensity/DensityConfigManager;->ACCESSIBILITY_ZOOM_SMALL:F

    iput p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    goto :goto_0

    .line 326
    :cond_8
    iput v2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    .line 329
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_density_forced"

    invoke-static {p1, p2}, Lmiuix/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\tgetAccessibilityDpi Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move p1, v1

    :goto_2
    if-ne p1, v1, :cond_9

    .line 335
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    .line 337
    :cond_9
    iput p1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    .line 338
    iget p1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    int-to-float p1, p1

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    .line 339
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\tupdateDisplayInfo currentDefaultDpi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentForcedDpi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentAccessibilityDpi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " delta="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpiDelta:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " logicSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " physicalSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private updateDeviceScale(Landroid/content/Context;)D
    .locals 5

    .line 401
    invoke-direct {p0}, Lmiuix/autodensity/DensityConfigManager;->getDebugScale()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v3, 0x0

    .line 403
    iput-boolean v3, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    const-string v3, "AutoDensity"

    const-string v4, "disable auto density in debug mode"

    .line 404
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 406
    iput-boolean v3, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    :goto_0
    if-gtz v2, :cond_1

    .line 409
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getDeviceScale(Landroid/content/Context;)D

    move-result-wide v0

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getAccessibilityDelta(Landroid/content/Context;)F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private updateOriginConfigByMDefaultMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 515
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 516
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 517
    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 518
    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    div-float/2addr v1, v0

    .line 519
    iput v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 520
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    .line 521
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    :cond_0
    return-void
.end method

.method private updateOriginConfigByNewConfig(Landroid/content/res/Configuration;)V
    .locals 1

    .line 530
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    invoke-direct {v0, p1}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    return-void
.end method

.method private updatePPIOfDevice(Landroid/content/Context;)D
    .locals 13

    .line 350
    iget v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUserPPI:I

    if-lez v0, :cond_0

    int-to-double v1, v0

    .line 351
    iput-wide v1, p0, Lmiuix/autodensity/DensityConfigManager;->mPPI:D

    int-to-double p0, v0

    return-wide p0

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 356
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "physical size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cur size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", display xdpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ydpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 359
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 360
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 361
    iget-object v3, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 362
    iget-object v4, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 363
    iget-object v5, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 364
    iget-object v6, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 367
    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->isEnableLogicMetrics()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v5

    move v4, v6

    :cond_2
    div-float/2addr v3, v1

    div-float/2addr v4, v2

    .line 374
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mMaxSizeInch:F

    .line 375
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mMinSizeInch:F

    float-to-double v1, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 377
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v9, v4

    .line 378
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v1, v9

    .line 379
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 380
    iput v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenInches:F

    float-to-double v9, v5

    .line 381
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    float-to-double v11, v6

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    float-to-double v8, v1

    div-double/2addr v6, v8

    .line 382
    sget-boolean v2, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v2, :cond_3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v0

    const/high16 v0, 0x44200000    # 640.0f

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_3

    .line 384
    invoke-static {}, Lmiuix/autodensity/SkuScale;->hasSkuPPI()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 385
    invoke-static {p1, v0}, Lmiuix/autodensity/SkuScale;->getSkuPPI(Landroid/content/Context;Z)I

    move-result p1

    int-to-double v6, p1

    .line 389
    :cond_3
    iput-wide v6, p0, Lmiuix/autodensity/DensityConfigManager;->mPPI:D

    .line 390
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen inches : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ppi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", physicalX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " physicalY:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", logicalX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " logicalY:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",min size inches: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x40333333    # 2.8f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_4
    return-wide v6
.end method

.method private updatePhysicalSizeFromDisplay(Landroid/view/Display;)V
    .locals 5

    .line 489
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 490
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    .line 493
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 494
    aget-object v0, p1, v1

    .line 495
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tupdatePhysicalSizeFromDisplay mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iget-object v4, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 499
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget-object v3, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tupdatePhysicalSizeFromDisplay mPhysicalScreenSize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mPhysicalScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateTargetConfig(ID)V
    .locals 3

    .line 534
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    iget v1, v0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    iput v1, p0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    .line 538
    iget v1, v0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    iput v1, p0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    .line 539
    iput p1, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 540
    iput p1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p1, v1

    .line 541
    iput p1, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 542
    iget v1, v0, Lmiuix/view/DisplayConfig;->fontScale:F

    float-to-double v1, v1

    mul-double/2addr v1, p2

    double-to-float p2, v1

    iput p2, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 543
    iget p2, v0, Lmiuix/view/DisplayConfig;->fontScale:F

    mul-float/2addr p1, p2

    iput p1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    return-void
.end method


# virtual methods
.method public getDeviceCurrentAccessibilityDpi()I
    .locals 0

    .line 560
    iget p0, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    return p0
.end method

.method public getDeviceDefaultDpi()I
    .locals 1

    .line 568
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    if-eqz p0, :cond_0

    iget p0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const-string v0, "ro.sf.lcd_density"

    invoke-static {v0, p0}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOriginConfig()Lmiuix/autodensity/DensityConfig;
    .locals 0

    .line 121
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    return-object p0
.end method

.method public getTargetConfig()Lmiuix/autodensity/DensityConfig;
    .locals 0

    .line 117
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 129
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    const-string v0, "DensityConfigManager init"

    .line 130
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public isAutoDensityEnabled()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    return p0
.end method

.method public isEnableLogicMetrics()Z
    .locals 2

    .line 88
    iget-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUseDeprecatedDensityLogic:Z

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lmiuix/autodensity/DensityConfigManager;->mUseStableDensityLogic:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLocalOriginDpi(I)Z
    .locals 1

    .line 275
    iget v0, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    if-eq p1, v0, :cond_1

    iget p0, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setUseDeprecatedDensityLogic(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iput-boolean p1, p0, Lmiuix/autodensity/DensityConfigManager;->mUseDeprecatedDensityLogic:Z

    return-void
.end method

.method public setUseStableDensityLogic(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iput-boolean p1, p0, Lmiuix/autodensity/DensityConfigManager;->mUseStableDensityLogic:Z

    return-void
.end method

.method public setUserDeviceScale(F)V
    .locals 2

    float-to-double v0, p1

    .line 97
    iput-wide v0, p0, Lmiuix/autodensity/DensityConfigManager;->mUserDeviceScale:D

    return-void
.end method

.method public setUserPPI(I)V
    .locals 0

    .line 101
    iput p1, p0, Lmiuix/autodensity/DensityConfigManager;->mUserPPI:I

    return-void
.end method

.method public tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 5

    .line 135
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AutoDensity"

    const-string p1, "AutoDensity doesn\'t init, tryUpdateConfig failed"

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryUpdateConfig newConfig "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 144
    iget v3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    if-ne v3, v4, :cond_2

    iget v3, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, v0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    if-ne v3, v4, :cond_2

    iget v3, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-ne v3, v4, :cond_2

    iget v3, p2, Landroid/content/res/Configuration;->fontScale:F

    iget v0, v0, Lmiuix/view/DisplayConfig;->fontScale:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "tryUpdateConfig failed"

    .line 152
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return v1

    .line 149
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return v2

    .line 156
    :cond_3
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return v2
.end method

.method public updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    if-nez v0, :cond_0

    const-string p0, "AutoDensity"

    const-string p1, "AutoDensity doesn\'t init, updateConfig failed"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updateDeviceDisplayInfo(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 168
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 172
    new-instance v1, Lmiuix/autodensity/DensityConfig;

    invoke-direct {v1, v0}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 174
    :cond_1
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v1}, Lmiuix/autodensity/DensityConfigManager;->isLocalOriginDpi(I)Z

    move-result v1

    .line 175
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, " accessibilityDpi="

    if-nez v1, :cond_4

    .line 183
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <- DensityConfigManager updateConfig return: newConfig may has been modified by autodensity newConfig.densityDpi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " forcedDpi="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-eqz v2, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DensityConfigManager warning! Current config may not be of the real display!! defaultDisplayMetrics:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " display.name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 197
    :cond_4
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DensityConfigManager updateConfig "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " context "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 200
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 203
    invoke-direct {p0, v0}, Lmiuix/autodensity/DensityConfigManager;->updateOriginConfigByMDefaultMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DensityConfigManager updateConfig newConfig.densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentDefaultDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " forceDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentForcedDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 210
    invoke-direct {p0, p2}, Lmiuix/autodensity/DensityConfigManager;->updateOriginConfigByNewConfig(Landroid/content/res/Configuration;)V

    .line 212
    :cond_7
    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    invoke-static {p2}, Lmiuix/core/util/EnvStateManager;->updateOriginConfig(Lmiuix/view/DisplayConfig;)V

    if-eqz v2, :cond_a

    .line 215
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updatePPIOfDevice(Landroid/content/Context;)D

    move-result-wide v0

    .line 217
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updateDeviceScale(Landroid/content/Context;)D

    move-result-wide p1

    .line 219
    sget-boolean v2, Lmiuix/os/Build;->IS_AUTOMOTIVE:Z

    if-eqz v2, :cond_8

    const-wide v0, 0x406a600000000000L    # 211.0

    goto :goto_1

    :cond_8
    const-wide v2, 0x3ff23d0400000000L    # 1.1398963928222656

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 220
    :goto_1
    iget v2, p0, Lmiuix/autodensity/DensityConfigManager;->mCurrentAccessibilityDpi:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 221
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    if-eqz v2, :cond_a

    .line 222
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 223
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DensityConfigManager updateConfig deviceScale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " scale:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 227
    :cond_9
    invoke-direct {p0, v2, v0, v1}, Lmiuix/autodensity/DensityConfigManager;->updateTargetConfig(ID)V

    .line 230
    :cond_a
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Config changed. Raw config("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")\n\tTargetConfig("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
