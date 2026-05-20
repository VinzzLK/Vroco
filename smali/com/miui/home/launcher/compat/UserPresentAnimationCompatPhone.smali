.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;
.source "UserPresentAnimationCompatPhone.java"


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mLoggedFirstUpdateInfo:Z


# direct methods
.method public static synthetic $r8$lambda$kVB7vgOf9fsjvf9A2PdoJQrZmV4(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;IILandroid/view/View;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->lambda$showUserPresentAnimation$0(IILandroid/view/View;ZFF)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    const v0, -0x3b448000    # -1500.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x41a00000    # 20.0f

    .line 49
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;-><init>(Lcom/miui/home/launcher/Launcher;FFF)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mLoggedFirstUpdateInfo:Z

    .line 267
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mLoggedFirstUpdateInfo:Z

    return p1
.end method

.method private calculateBlurRadius(FF)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    float-to-int p0, p0

    const/4 p1, 0x3

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method private endAnimation(Landroid/view/View;I)V
    .locals 2

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 62
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->isBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_1
    return-void
.end method

.method private getDampingResponse()[F
    .locals 1

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v0, [F

    .line 73
    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, v0, [F

    .line 75
    fill-array-data p0, :array_1

    return-object p0

    .line 79
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v0, [F

    .line 80
    fill-array-data p0, :array_2

    return-object p0

    :cond_2
    new-array p0, v0, [F

    .line 82
    fill-array-data p0, :array_3

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3ee66666    # 0.45f
    .end array-data
.end method

.method private isBlurSupported()Z
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->needItemBlur()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$showUserPresentAnimation$0(IILandroid/view/View;ZFF)V
    .locals 8

    .line 168
    invoke-virtual {p0, p1, p2, p6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->conversionValueFrom3DTo2D(IIF)[F

    move-result-object p1

    const/4 p2, 0x2

    .line 179
    aget v0, p1, p2

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_8

    aget v0, p1, p2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mLoggedFirstUpdateInfo:Z

    const/4 v2, 0x1

    const-string v3, "Launcher.UserPresentAnimation"

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showUserPresentAnimation first update: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mLoggedFirstUpdateInfo:Z

    .line 190
    :cond_1
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreTranslation(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 191
    aget v0, p1, v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 193
    :cond_2
    aget v0, p1, v2

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    aget v0, p1, p2

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 195
    aget p1, p1, p2

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    .line 197
    invoke-static {p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p0, "showUserPresentAnimation: return, because value is NaN"

    .line 198
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_3
    invoke-virtual {p3, p6}, Landroid/view/View;->setTranslationZ(F)V

    .line 203
    sget p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->camDis:F

    neg-float v4, p1

    neg-float p1, p1

    const p2, 0x3e19999a    # 0.15f

    mul-float v5, p1, p2

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    move v3, p6

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->map(FFFFF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 205
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_7

    const/4 p2, -0x1

    const p4, 0x7f0a03fc

    .line 209
    invoke-virtual {p3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p6

    instance-of p6, p6, Ljava/lang/Integer;

    if-eqz p6, :cond_4

    .line 210
    invoke-virtual {p3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 213
    :cond_4
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->calculateBlurRadius(FF)I

    move-result p0

    if-ne p0, p2, :cond_5

    return-void

    .line 215
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-lez p0, :cond_6

    int-to-float p0, p0

    .line 217
    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    .line 218
    invoke-virtual {p3, p0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_7
    :goto_0
    return-void

    .line 180
    :cond_8
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 181
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private map(FFFFF)F
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->perFromVal(FFF)F

    move-result p1

    invoke-direct {p0, p1, p4, p5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->valFromPer(FFF)F

    move-result p0

    return p0
.end method

.method private needItemBlur()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private perFromVal(FFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    return p1
.end method

.method private processViewLayerType(Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->needDealWithLayerType()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const p0, 0x7f0a0401

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private valFromPer(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public endAnimation(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0408

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a040d

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->endAnimation(Landroid/view/View;I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetView(Landroid/view/View;)V

    return-void
.end method

.method public showAnimation()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showAnimation()V

    .line 122
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->needDealWithLayerType()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAnimation mHardwareLayerScreenId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mHardwareLayerScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.UserPresentAnimation"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;IZ)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->processViewLayerType(Landroid/view/View;)V

    .line 142
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->getDampingResponse()[F

    move-result-object p2

    .line 144
    iget p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    const p3, 0x7f0a03fd

    const/4 v1, 0x0

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getTagAndClear(Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const p3, 0x7f0a03fe

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getTagAndClear(Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const p3, 0x7f0a03ff

    const/4 v2, 0x0

    .line 148
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, p1, p3, v3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->getTagAndClear(Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 156
    sget v3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->minDis:F

    add-float/2addr p3, v3

    const v3, 0x7f0a03fb

    .line 158
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->isBlurSupported()Z

    move-result v7

    const/high16 v3, 0x41200000    # 10.0f

    .line 164
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v3

    int-to-float v8, v3

    .line 166
    new-instance v9, Lcom/miui/home/launcher/animate/SpringAnimator;

    aget v1, p2, v1

    aget p2, p2, v0

    invoke-direct {v9, v1, p2, p3, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 167
    new-instance p2, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;

    move-object v2, p2

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;IILandroid/view/View;ZF)V

    invoke-virtual {v9, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 240
    invoke-virtual {v9}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    const p0, 0x7f0a040d

    .line 252
    invoke-virtual {p1, p0, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
