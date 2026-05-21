.class public Lcom/miui/home/launcher/common/BlurUtilities;
.super Ljava/lang/Object;
.source "BlurUtilities.java"


# static fields
.field private static IS_BACKGROUND_BLUR_ENABLED:Z

.field private static final IS_BACKGROUND_BLUR_SUPPORTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBackgroundBlurSupported()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_SUPPORTED:Z

    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    return-void
.end method

.method public static calFolderIconRoundRectRadius(Landroid/content/Context;Landroid/widget/ImageView;)I
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701e0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static chooseBackgroundBlurContainer(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 286
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v2, "chooseBackgroundBlurContainer"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v6

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.BlurUtilities"

    const-string v0, "calling setMiBackgroundRenderNode failed."

    .line 288
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static clearAllBlur(Landroid/view/View;)V
    .locals 2

    .line 333
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 335
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 336
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 337
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllBlur: View="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.BlurUtilities"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static clearBackgroundBlendColors(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBackgroundBlendColors(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static clearMaMlBlurIfSupported(Lcom/miui/maml/component/MamlView;Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "Launcher.BlurUtilities"

    const-string/jumbo p1, "setBlurIfSupported: view is null, widget can not clear blur!"

    .line 528
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 533
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearWidgetOrMaMlBlur(Landroid/view/View;)V

    :cond_1
    const-wide/16 v0, 0x0

    const-string p1, "enable_background_blur"

    .line 535
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    return-void
.end method

.method public static clearWidgetBlurIfSupported(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Launcher.BlurUtilities"

    const-string/jumbo v0, "setBlurIfSupported: view is null, widget can not clear blur!"

    .line 514
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearWidgetOrMaMlBlur(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static clearWidgetOrMaMlBlur(Landroid/view/View;)V
    .locals 0

    .line 543
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 544
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearBackgroundBlendColors(Landroid/view/View;)V

    return-void
.end method

.method private static getBaseRadius()I
    .locals 2

    .line 594
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTopCornerRadius()I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I
    .locals 0

    .line 430
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->calFolderIconRoundRectRadius(Landroid/content/Context;Landroid/widget/ImageView;)I

    move-result p0

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static getSoscCornerRadiusRect(Z)Landroid/graphics/Rect;
    .locals 5

    .line 567
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    .line 568
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    .line 569
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->getBaseRadius()I

    move-result v2

    .line 570
    sget v3, Lcom/miui/home/launcher/view/ScrimView;->TOP_RADIUS_IN_SPLIT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    move v2, v4

    .line 574
    :cond_0
    iget p0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, v2

    move v3, p0

    :goto_0
    move v4, v3

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    if-nez p0, :cond_2

    move p0, v2

    move v4, p0

    move v2, v3

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-nez v1, :cond_3

    if-ne p0, v0, :cond_3

    move p0, v3

    move v4, p0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-nez p0, :cond_4

    move p0, v2

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-ne p0, v0, :cond_5

    move v4, v2

    move p0, v3

    move v2, p0

    move v3, v4

    goto :goto_2

    :cond_5
    move p0, v4

    move v2, p0

    :goto_1
    move v3, v2

    .line 590
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v2, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static isBackgroundBlurSupported()Z
    .locals 10

    const/4 v0, 0x0

    .line 316
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "getBoolean"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    const/4 v8, 0x1

    aput-object v6, v7, v8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v9, "persist.sys.background_blur_supported"

    aput-object v9, v2, v0

    .line 318
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v2, v8

    move-object v8, v2

    .line 316
    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isBlurSupported()Z
    .locals 1

    .line 346
    sget-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFolderBlurSupported(Z)Z
    .locals 1

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultFolderIcon(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFolderOpened()Z
    .locals 1

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotSupportBlurDevice()Z
    .locals 2

    .line 381
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "chenfeng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "peridot"

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "thor"

    .line 383
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "unicorn"

    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mayfly"

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "diting"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mondrian"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "zizhan"

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isThreeLayerBlurSupported()Z
    .locals 1

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isBeteOs:Z

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isNotSupportBlurDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWidgetBlurSupported()Z
    .locals 1

    .line 365
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isBeteOs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static multiplyAlphaWithColor(IF)I
    .locals 2

    .line 151
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 154
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static resetBlurColor(Landroid/view/View;)V
    .locals 6

    .line 260
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "clearMiBackgroundBlendColor"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBackgroundBlurEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 327
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "background_blur_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBackgroundBlurEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.BlurUtilities"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setBlurColor(Landroid/view/View;II)V
    .locals 8

    .line 199
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v6

    const-string v2, "addMiBackgroundBlendColor"

    move-object v1, p0

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBlurColor(Landroid/view/View;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 203
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 204
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setBlurColorList(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 210
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string/jumbo v2, "setMiBackgroundBlendColors"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBlurRadius(Landroid/view/View;I)V
    .locals 7

    .line 184
    const-class v0, Landroid/view/View;

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

    const-string/jumbo v2, "setMiBackgroundBlurRadius"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBlurRoundRect(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 305
    new-instance v0, Lcom/miui/home/launcher/common/BlurUtilities$4;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities$4;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static setBlurRoundRect(Landroid/view/View;IIIIIZ)V
    .locals 6

    .line 294
    invoke-virtual {p0, p6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 295
    new-instance p6, Lcom/miui/home/launcher/common/BlurUtilities$3;

    move-object v0, p6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/common/BlurUtilities$3;-><init>(IIIII)V

    invoke-virtual {p0, p6}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static setBlurScaleRatio(Landroid/view/View;F)V
    .locals 7

    .line 271
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v2, "setMiBackgroundBlurScaleRatio"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v6

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.BlurUtilities"

    const-string v0, "calling setMiBackgroundBlurScaleRatioCompat failed."

    .line 273
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setContainerBlur(Landroid/view/View;IZI)V
    .locals 0

    .line 412
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 413
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 415
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 417
    :cond_0
    invoke-static {p0, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    return-void
.end method

.method public static setContainerWidgetBlur(Landroid/view/View;IZI)V
    .locals 1

    .line 422
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    .line 423
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBackgroundBlendColors(Landroid/view/View;)V

    .line 424
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setContainerBlur: Container="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " BlurMode="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " BlurRadius="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.BlurUtilities"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setEditBlurWithRadius(Landroid/view/View;ZFF)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFFZ)V

    return-void
.end method

.method public static setEditBlurWithRadius(Landroid/view/View;ZFFZ)V
    .locals 2

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance p2, Landroid/graphics/Point;

    const v0, 0x618a8a8a

    const/16 v1, 0x13

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance p2, Landroid/graphics/Point;

    const v0, 0x4d5e5e5e    # 2.331704E8f

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColorList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 239
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 240
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColorList(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_1
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    .line 243
    invoke-virtual {p0, p4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 244
    new-instance p1, Lcom/miui/home/launcher/common/BlurUtilities$2;

    invoke-direct {p1, p3}, Lcom/miui/home/launcher/common/BlurUtilities$2;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_4
    return-void
.end method

.method public static setElementBlur(Landroid/view/View;IIZIIIIIIIIIIII)V
    .locals 0

    if-nez p3, :cond_0

    .line 395
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 397
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 398
    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;I)V

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 400
    invoke-static {p0, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 401
    invoke-static {p0, p8, p9}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 402
    invoke-static {p0, p12, p13}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {p0, p6, p7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 405
    invoke-static {p0, p10, p11}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 406
    invoke-static {p0, p14, p15}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 408
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setElementBlur: Element="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " BlurMode="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " BlurRoundRectRadius="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.BlurUtilities"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V
    .locals 1

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 440
    invoke-static {p0, p10}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-static {p0, p2, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 443
    invoke-static {p0, p6, p7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {p0, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 446
    invoke-static {p0, p8, p9}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 448
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int p6, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int p7, p2, p3

    const/4 p8, 0x0

    move-object p2, p0

    move p3, p1

    .line 448
    invoke-static/range {p2 .. p8}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIIIZ)V

    .line 451
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setFolderIconBlur: Folder="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " BlurMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " BlurRoundRectRadius="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " BlurRect="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.BlurUtilities"

    .line 451
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static setMaMlBlurIfSupported(Lcom/miui/maml/component/MamlView;Z)V
    .locals 4

    const-string v0, "Launcher.BlurUtilities"

    if-nez p0, :cond_0

    const-string/jumbo p0, "setBlurIfSupported: view is null, maml can not blur!"

    .line 486
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaMlBlurIfSupported: isWidgetBlurSupported() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  supportBackgroundBlur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    const-string v1, "enable_background_blur"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 491
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetOrMaMlBlur(Landroid/view/View;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 492
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 494
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    :goto_0
    return-void
.end method

.method private static setMiBackgroundBlendColors(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 179
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string/jumbo v2, "setMiBackgroundBlendColors"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setMiBackgroundBlurEnhanceFlag(Landroid/view/View;Z)V
    .locals 8

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 464
    const-class v1, Landroid/view/View;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v3, v5, v0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    const-string/jumbo v3, "setMiBackgroundBlurEnhanceFlag"

    move-object v2, p0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setMiBlurWinExc(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .line 218
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string/jumbo v2, "setMiBlurWinExc"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setMiBlurWinInc(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .line 222
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string/jumbo v2, "setMiBlurWinInc"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setPassWindowBlurEnable(Landroid/view/View;Z)V
    .locals 7

    .line 189
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string/jumbo v2, "setPassWindowBlurEnabled"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewBackgroundBlur(Landroid/view/View;I)V
    .locals 7

    .line 127
    const-class v0, Landroid/view/View;

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

    const-string/jumbo v2, "setMiBackgroundBlurMode"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewBlur(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 132
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;IF)V

    return-void
.end method

.method public static setViewBlur(Landroid/view/View;IF)V
    .locals 7

    .line 136
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string/jumbo v2, "setMiViewBlurMode"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    .line 138
    invoke-virtual {p0, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 139
    new-instance p1, Lcom/miui/home/launcher/common/BlurUtilities$1;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities$1;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method public static setWidgetBackgroundBlendColors(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Point;

    .line 161
    new-instance v2, Landroid/graphics/Point;

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    const v4, 0x7f060635

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Point;

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    const v4, 0x7f060634

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Point;

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    const v4, 0x7f060636

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x2

    aput-object v2, v1, v0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBackgroundBlendColors(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static setWidgetBlurIfSupported(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Launcher.BlurUtilities"

    const-string/jumbo v0, "setBlurIfSupported: view is null,widget can not blur!"

    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetOrMaMlBlur(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static setWidgetOrMaMlBlur(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 503
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 504
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBackgroundBlendColors(Landroid/view/View;)V

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    return-void
.end method

.method public static supportWidgetBackgroundBlur(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Launcher.BlurUtilities"

    const-string/jumbo v1, "setBlurIfSupported: view is null,widget is not support blur!"

    .line 554
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 558
    instance-of v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_1

    .line 559
    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 560
    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    return p0

    :cond_1
    return v0
.end method
