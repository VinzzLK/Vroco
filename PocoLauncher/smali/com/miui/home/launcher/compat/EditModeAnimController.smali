.class public Lcom/miui/home/launcher/compat/EditModeAnimController;
.super Ljava/lang/Object;
.source "EditModeAnimController.java"

# interfaces
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# static fields
.field private static final mAnimationValue:[F


# instance fields
.field protected final LOCATION:[I

.field protected mAllAnimationViewNum:I

.field protected mPivot:[I


# direct methods
.method public static synthetic $r8$lambda$5hvmnGD500EizyMI5jEBy5Oh3Pc(Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->lambda$showEditModeAnimation$1(Landroid/view/View;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSGaIquWC0PMaGHTEHMEM6ctvrw(Landroid/view/View;IIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/compat/EditModeAnimController;->lambda$showEditModeAnimation$0(Landroid/view/View;IIF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 33
    sput-object v0, Lcom/miui/home/launcher/compat/EditModeAnimController;->mAnimationValue:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController;->LOCATION:[I

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController;->mAllAnimationViewNum:I

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->changePivot()V

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->changeScreenSize()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Z)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->setEndView(Landroid/view/View;Z)V

    return-void
.end method

.method private changePivot()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    iput-object v1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController;->mPivot:[I

    return-void
.end method

.method private changeScreenSize()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/util/CameraLite;->setScreen(FF)V

    return-void
.end method

.method private static clearShowTag(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0171

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearShowTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.EditEnterAnimController"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static conversionValueFrom3DTo2DWithScale(IIFF)[F
    .locals 2

    int-to-float p0, p0

    int-to-float p1, p1

    .line 242
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/util/CameraLite;->to2D(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 243
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p0

    .line 244
    iget p0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    .line 245
    invoke-static {p3, p2}, Lcom/miui/home/launcher/util/CameraLite;->valueTo2D(FF)F

    move-result p1

    .line 246
    sget-object p2, Lcom/miui/home/launcher/compat/EditModeAnimController;->mAnimationValue:[F

    const/4 p3, 0x0

    aput v1, p2, p3

    const/4 p3, 0x1

    .line 247
    aput p0, p2, p3

    const/4 p0, 0x2

    .line 248
    aput p1, p2, p0

    return-object p2
.end method

.method private static endAnimIfShowStateChanged(Landroid/view/View;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x7f0a0171

    .line 307
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 308
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_2

    return v0

    .line 317
    :cond_2
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return v2
.end method

.method public static endAnimIfShowStateChangedAndSetVisibility(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 324
    :goto_0
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimIfShowStateChanged(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 327
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static endAnimation(Landroid/view/View;I)V
    .locals 1

    .line 331
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getAnimator(Landroid/view/View;I)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static endAnimationAndReset(Landroid/view/View;Z)V
    .locals 0

    .line 270
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;Z)V

    .line 271
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->resetView(Landroid/view/View;)V

    return-void
.end method

.method public static endAnimationIfNeeded(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->hasAnimatorsRunning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 279
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->clearShowTag(Landroid/view/View;)V

    const v0, 0x7f0a0170

    .line 280
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a0172

    .line 281
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimation(Landroid/view/View;I)V

    const/4 v0, 0x1

    .line 282
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->resetVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public static endAnimationIfNeeded(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->hasAnimatorsRunning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 290
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->clearShowTag(Landroid/view/View;)V

    const v0, 0x7f0a0170

    .line 291
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a0172

    .line 292
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimation(Landroid/view/View;I)V

    .line 293
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->resetVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method private static getAnimator(Landroid/view/View;I)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 1

    .line 254
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/animate/SpringAnimator;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDefaultZPosition(Landroid/view/View;)F
    .locals 1

    const v0, 0x7f0a0169

    .line 206
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 207
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getZStart(Landroid/view/View;Z)F
    .locals 3

    .line 227
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->isEditModeTumbnail(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/miui/home/launcher/EditModeThumbnailView;->getCurrentZ()F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0173

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 234
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getDefaultZPosition(Landroid/view/View;)F

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static hasAnimatorsRunning(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f0a0172

    .line 266
    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->isAnimatorRunning(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a0170

    invoke-static {p0, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->isAnimatorRunning(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static isAnimatorRunning(Landroid/view/View;I)Z
    .locals 0

    .line 261
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getAnimator(Landroid/view/View;I)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isEditModeTumbnail(Landroid/view/View;)Z
    .locals 0

    .line 214
    instance-of p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;

    return p0
.end method

.method private static synthetic lambda$showEditModeAnimation$0(Landroid/view/View;IIF)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    instance-of v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/miui/home/launcher/SearchBar;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getEditPinchingScale()F

    move-result v0

    .line 152
    :goto_1
    invoke-static {p0, p3}, Lcom/miui/home/launcher/compat/EditModeAnimController;->setCurrentZ(Landroid/view/View;F)V

    .line 153
    invoke-static {p1, p2, p3, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->conversionValueFrom3DTo2DWithScale(IIFF)[F

    move-result-object p1

    const/4 p2, 0x2

    .line 154
    aget p3, p1, p2

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 158
    aget p3, p1, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationX(F)V

    const/4 p3, 0x1

    .line 159
    aget p3, p1, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 160
    aget p3, p1, p2

    invoke-virtual {p0, p3}, Landroid/view/View;->setScaleX(F)V

    .line 161
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$showEditModeAnimation$1(Landroid/view/View;F)V
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static resetView(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 354
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private static resetVisibility(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 347
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShow()Z

    move-result p1

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private static setCurrentZ(Landroid/view/View;F)V
    .locals 1

    .line 218
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->isEditModeTumbnail(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->setCurrentZ(F)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0173

    .line 221
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static setEndView(Landroid/view/View;Z)V
    .locals 9

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    .line 76
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move p1, v3

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v5

    :goto_1
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v1, :cond_5

    :goto_3
    move v1, v5

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v3

    .line 83
    :goto_4
    instance-of v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v2, :cond_9

    if-eqz v6, :cond_7

    move v7, v3

    .line 84
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move v4, v8

    .line 85
    :goto_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 86
    :cond_9
    instance-of v2, p0, Lcom/miui/home/launcher/SearchBar;

    if-eqz v2, :cond_c

    if-eqz v1, :cond_a

    move v7, v3

    .line 87
    :cond_a
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    move v4, v8

    .line 88
    :goto_6
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    move v7, v3

    .line 90
    :cond_d
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    move v4, v8

    .line 91
    :goto_7
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_8
    if-eqz p1, :cond_f

    goto :goto_9

    .line 94
    :cond_f
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getDefaultZPosition(Landroid/view/View;)F

    move-result v8

    :goto_9
    invoke-static {p0, v8}, Lcom/miui/home/launcher/compat/EditModeAnimController;->setCurrentZ(Landroid/view/View;F)V

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v3

    goto :goto_a

    .line 96
    :cond_10
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->needBlurState()Z

    move-result v0

    :goto_a
    if-nez p1, :cond_12

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v5, v3

    .line 98
    :cond_12
    :goto_b
    instance-of v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    if-eqz v1, :cond_13

    .line 99
    move-object v1, p0

    check-cast v1, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->dealWithViewBlur(Z)V

    .line 101
    :cond_13
    instance-of v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;

    if-eqz v1, :cond_14

    if-nez p1, :cond_14

    if-nez v0, :cond_14

    .line 102
    move-object v1, p0

    check-cast v1, Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/UninstallDropTarget;->dealWithViewBlur(Z)V

    .line 104
    :cond_14
    instance-of v1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    if-nez v0, :cond_15

    .line 105
    move-object v1, p0

    check-cast v1, Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setViewBlurs(Z)V

    .line 107
    :cond_15
    instance-of v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    if-eqz v1, :cond_16

    if-nez p1, :cond_16

    if-nez v0, :cond_16

    .line 108
    move-object p1, p0

    check-cast p1, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->clearBlur()V

    :cond_16
    const p1, 0x7f0a0172

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->clearShowTag(Landroid/view/View;)V

    return-void
.end method

.method private static setShowTag(Landroid/view/View;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0171

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.EditEnterAnimController"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showEditModeAnimation(Landroid/view/View;ZFFFF)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFFZ)V

    return-void
.end method

.method public static showEditModeAnimation(Landroid/view/View;ZFFFFZ)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;)V

    .line 122
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->setShowTag(Landroid/view/View;Z)V

    const v0, 0x7f0a0167

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const v1, 0x7f0a0168

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getDefaultZPosition(Landroid/view/View;)F

    move-result v1

    .line 132
    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->getZStart(Landroid/view/View;Z)F

    move-result v3

    const v4, 0x7f0a0172

    .line 135
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 136
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 137
    invoke-virtual {v5, p2, p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz p1, :cond_3

    move v1, v6

    .line 138
    :cond_3
    invoke-virtual {v5, v3, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    goto :goto_1

    .line 140
    :cond_4
    new-instance v5, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz p1, :cond_5

    move v1, v6

    :cond_5
    invoke-direct {v5, p2, p3, v3, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 145
    :goto_1
    new-instance p2, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0, v2}, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;II)V

    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 164
    new-instance p2, Lcom/miui/home/launcher/compat/EditModeAnimController$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController$1;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 175
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f0a0170

    .line 178
    invoke-virtual {p0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_7

    .line 179
    invoke-virtual {p0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 180
    invoke-virtual {p3, p4, p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p4

    if-eqz p1, :cond_6

    move v6, v0

    :cond_6
    invoke-virtual {p3, p4, v6}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    goto :goto_2

    .line 183
    :cond_7
    new-instance p3, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    if-eqz p1, :cond_8

    move v6, v0

    :cond_8
    invoke-direct {p3, p4, p5, v1, v6}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 186
    :goto_2
    new-instance p1, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 189
    invoke-virtual {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p4, Lcom/miui/home/launcher/compat/EditModeAnimController$2;

    invoke-direct {p4, p0}, Lcom/miui/home/launcher/compat/EditModeAnimController$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 195
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    invoke-virtual {v5}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 197
    invoke-virtual {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    if-nez p6, :cond_9

    .line 199
    invoke-virtual {v5}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    .line 200
    invoke-virtual {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_9
    return-void
.end method


# virtual methods
.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->changePivot()V

    return-void
.end method

.method public prepareEditEnterAnimation(Landroid/view/View;F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCenterLocation(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    aget v2, v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController;->mPivot:[I

    aget v1, p0, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 64
    aget v0, v0, v1

    aget p0, p0, v1

    sub-int/2addr v0, p0

    const p0, 0x7f0a0167

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f0a0168

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f0a0169

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p2, v0

    .line 67
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
