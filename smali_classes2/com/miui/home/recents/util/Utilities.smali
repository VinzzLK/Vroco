.class public Lcom/miui/home/recents/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAWABLE_RECT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field private static final SUPPORT_ONE_HANDED_MODE:Ljava/lang/String; = "ro.support_one_handed_mode"

.field private static final TAG:Ljava/lang/String; = "Recents.Utilities"

.field private static sTaskViewPaddingRatio:F

.field private static sTaskViewScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/miui/home/recents/util/Utilities$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/Utilities$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 82
    new-instance v0, Lcom/miui/home/recents/util/Utilities$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "drawableBounds"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/util/Utilities$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    .line 95
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    const/high16 v0, -0x40800000    # -1.0f

    .line 302
    sput v0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    .line 329
    sput v0, Lcom/miui/home/recents/util/Utilities;->sTaskViewPaddingRatio:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 186
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 101
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 108
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static clamp01(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 453
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 457
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 458
    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 459
    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 460
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 461
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public static dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "N:0,0-0,0"

    return-object p0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpRect(Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "N:0,0-0,0"

    return-object p0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimResource(Z)I
    .locals 1

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0x7f0f0005

    goto :goto_0

    :cond_0
    const p0, 0x7f0f0002

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const p0, 0x7f0f0007

    goto :goto_0

    :cond_2
    const p0, 0x7f0f0004

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const p0, 0x7f0f0006

    goto :goto_0

    :cond_4
    const p0, 0x7f0f0003

    :goto_0
    return p0
.end method

.method public static getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 0

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static getColorWithOverlay(IIF)I
    .locals 4

    .line 171
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 173
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    .line 174
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 175
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    .line 176
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    add-float/2addr p2, v1

    float-to-int p0, p2

    .line 170
    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static getDefaultGestureAnimMagicSpeed()F
    .locals 3

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const v0, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_0
    move v0, v1

    .line 427
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_2
    const v1, 0x3f5c28f6    # 0.86f

    :goto_1
    mul-float/2addr v0, v1

    return v0
.end method

.method public static getGestureAnimMagicSpeed()F
    .locals 3

    .line 438
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->getDefaultGestureAnimMagicSpeed()F

    move-result v0

    const-string v1, "persist.sys.gesture_anim_magic_speed"

    .line 439
    invoke-static {v1, v0}, Lcom/miui/home/recents/util/Utilities;->readSystemProperties(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 362
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 363
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 364
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 365
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p0, p1

    div-float/2addr p0, v1

    .line 366
    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr p0, v2

    invoke-direct {p1, v0, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public static getTaskViewPaddingRatio(Landroid/content/Context;)F
    .locals 2

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_2

    .line 336
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewPaddingRatio:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    return v1

    .line 338
    :cond_2
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewPaddingRatio:F

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p0, :cond_4

    .line 339
    :cond_3
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 340
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    sput p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewPaddingRatio:F

    .line 342
    :cond_4
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewPaddingRatio:F

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public static getTaskViewScale(Landroid/content/Context;)F
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    .line 306
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const p0, 0x3ecccccd    # 0.4f

    :cond_0
    return p0

    .line 309
    :cond_1
    sget v1, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_4

    .line 310
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isNeedInnerTaskScale()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070618

    goto :goto_0

    :cond_3
    const v0, 0x7f070624

    .line 313
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 315
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    sput p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    .line 317
    :cond_4
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    return p0
.end method

.method public static handleClipRect(Landroid/graphics/RectF;FFZZF)V
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 524
    iget p2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p1, p5

    .line 525
    iget p2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    div-float p1, p2, p5

    .line 527
    iget p3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 528
    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 532
    iget p2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->left:F

    .line 533
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p5, p1

    sub-float/2addr p2, p5

    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 535
    :cond_2
    iget p1, p0, Landroid/graphics/RectF;->right:F

    div-float p3, p2, p5

    sub-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 536
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->top:F

    :goto_0
    return-void
.end method

.method public static isAddToLauncher(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 374
    instance-of v1, p0, Lcom/miui/home/launcher/Launcher;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    .line 375
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isAndroidNorNewer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAndroidPorNewer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDescendentAccessibilityFocused(Landroid/view/View;)Z
    .locals 5

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 229
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 230
    check-cast p0, Landroid/view/ViewGroup;

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 233
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isForceFSGNavBar(Landroid/content/Context;)Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHideGestureLine(Landroid/content/Context;)Z
    .locals 2

    .line 353
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isHorizontalClip(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/home/recents/util/Utilities;->isVerticalClip(FFFF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInArea(IILandroid/view/View;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 281
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 282
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMultiWindowInLargeScreen()Z
    .locals 1

    .line 393
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNeedInnerTaskScale()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    return v0
.end method

.method public static isNeedRotate(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 399
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isMultiWindowInLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOneHandedModeSupported()Z
    .locals 2

    .line 380
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.support_one_handed_mode"

    .line 381
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isSlideCoverDevice()Z
    .locals 2

    .line 289
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTaskStackViewIgnoreInset()Z
    .locals 1

    .line 488
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUseRemberWindows()Z
    .locals 1

    .line 389
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    return v0
.end method

.method public static isVerticalClip(FFFF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_2

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p0, p1

    div-float/2addr p2, p3

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public static mapRange(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static matchTaskListSize(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 213
    new-instance v1, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    .line 217
    invoke-interface {p1, p0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public static postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 447
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 449
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static readSystemProperties(Ljava/lang/String;F)F
    .locals 1

    .line 415
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 417
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static removeAnimationListenersRecursive(Landroid/animation/Animator;)V
    .locals 3

    .line 194
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 158
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 159
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 160
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 161
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 162
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v2, v0

    neg-float v3, v1

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 145
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 146
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 147
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 148
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method public static setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 7

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setFitInsetsTypes"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static specialCropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 467
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 473
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 479
    :goto_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 480
    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 481
    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 482
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 483
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static transformSurfaceRotationToViewRotation(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/high16 p0, -0x3d4c0000    # -90.0f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static unmapRange(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method
