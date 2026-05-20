.class public Lcom/miui/home/recents/anim/SpringBundle;
.super Ljava/lang/Object;
.source "SpringBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/SpringBundle$Builder;
    }
.end annotation


# static fields
.field public static mCenterXDamping:F = 0.8f


# instance fields
.field private DEFAULT_ALPHA_STIFFNESS:F

.field public DEFAULT_CENTER_X_STIFFNESS:F

.field private DEFAULT_CENTER_Y_STIFFNESS:F

.field private DEFAULT_HEIGHT_STIFFNESS:F

.field private DEFAULT_RADIUS_RATIO_STIFFNESS:F

.field private DEFAULT_RADIUS_STIFFNESS:F

.field private DEFAULT_RATIO_STIFFNESS:F

.field private DEFAULT_WIDTH_STIFFNESS:F

.field private mAlphaDamping:F

.field private mCenterYDamping:F

.field public mCurrentTime:J

.field public mCurrentValue:F

.field private mHeightDamping:F

.field private mImpulse:F

.field private final mKey:Ljava/lang/String;

.field private mLastImpulse:F

.field public mLastTime:J

.field public mLastValue:F

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field private mPendingPosition:F

.field private mRadiusDamping:F

.field private mRadiusRatioDamping:F

.field private mRatioDamping:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field mValue:F

.field mVelocity:F

.field private mVelocityIncreaseCoeWhenModifyFinalPos:F

.field private mWidthDamping:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mImpulse:F

    .line 20
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastImpulse:F

    .line 21
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocityIncreaseCoeWhenModifyFinalPos:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 25
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    .line 27
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 28
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    .line 30
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    neg-float v0, v1

    .line 31
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinValue:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 44
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_X_STIFFNESS:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 46
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCenterYDamping:F

    .line 47
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_Y_STIFFNESS:F

    .line 49
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mWidthDamping:F

    .line 50
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_WIDTH_STIFFNESS:F

    .line 52
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mHeightDamping:F

    .line 53
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_HEIGHT_STIFFNESS:F

    .line 55
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRatioDamping:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 56
    iput v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RATIO_STIFFNESS:F

    .line 58
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusRatioDamping:F

    .line 59
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_RATIO_STIFFNESS:F

    .line 61
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusDamping:F

    .line 62
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_STIFFNESS:F

    const v0, 0x3f7d70a4    # 0.99f

    .line 64
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mAlphaDamping:F

    .line 65
    iput v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_ALPHA_STIFFNESS:F

    const-wide/16 v0, -0x1

    .line 243
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 244
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 245
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 246
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 34
    iput-object p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->initSpringForce()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mImpulse:F

    .line 20
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastImpulse:F

    .line 21
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocityIncreaseCoeWhenModifyFinalPos:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 25
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    .line 27
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 28
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    .line 30
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    neg-float v0, v1

    .line 31
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinValue:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 44
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_X_STIFFNESS:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 46
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCenterYDamping:F

    .line 47
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_Y_STIFFNESS:F

    .line 49
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mWidthDamping:F

    .line 50
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_WIDTH_STIFFNESS:F

    .line 52
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mHeightDamping:F

    .line 53
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_HEIGHT_STIFFNESS:F

    .line 55
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRatioDamping:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 56
    iput v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RATIO_STIFFNESS:F

    .line 58
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusRatioDamping:F

    .line 59
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_RATIO_STIFFNESS:F

    .line 61
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusDamping:F

    .line 62
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_STIFFNESS:F

    const v0, 0x3f7d70a4    # 0.99f

    .line 64
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mAlphaDamping:F

    .line 65
    iput v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_ALPHA_STIFFNESS:F

    const-wide/16 v0, -0x1

    .line 243
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 244
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 245
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 246
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 38
    iput-object p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->clearData()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;Lcom/miui/home/recents/anim/SpringBundle$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    return-void
.end method

.method private calcVelocityIncreaseCoeWhenModifyFinalPos(F)V
    .locals 2

    .line 277
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastImpulse:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float v1, p1, v0

    :goto_0
    const p1, 0x48127c00    # 150000.0f

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastImpulse:F

    mul-float/2addr v0, v1

    const v1, -0x37ed8400    # -150000.0f

    .line 281
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocityIncreaseCoeWhenModifyFinalPos:F

    :cond_1
    return-void
.end method

.method private getStiffness(F)F
    .locals 4

    .line 110
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    return p1

    :cond_0
    float-to-double p0, p1

    .line 113
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private isAtEquilibrium(FF)Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->isAtEquilibrium(Landroidx/dynamicanimation/animation/SpringForce;FF)Z

    move-result p0

    return p0
.end method

.method private resetSpringForce(FF)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private setImpulse(F)V
    .locals 1

    .line 302
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mImpulse:F

    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastImpulse:F

    .line 303
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mImpulse:F

    return-void
.end method

.method private setValue(F)V
    .locals 4

    .line 129
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 131
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 133
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    .line 134
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 249
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 250
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 251
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 252
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    return-void
.end method

.method public getDamping()F
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getNextValue(J)F
    .locals 7

    .line 265
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v1

    float-to-double v1, v1

    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v3, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    return p0
.end method

.method public getPropertyVelocity()F
    .locals 5

    .line 256
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 257
    iget v4, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    sub-float/2addr v4, p0

    sub-long/2addr v2, v0

    long-to-float p0, v2

    div-float/2addr v4, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v4, p0

    return v4

    :cond_0
    const/high16 p0, 0x4f000000

    return p0
.end method

.method public getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public getStiffness()F
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result p0

    return p0
.end method

.method public getValue()F
    .locals 0

    .line 125
    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    return p0
.end method

.method public getValueThreshold()F
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->getValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVelocity()F
    .locals 0

    .line 228
    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return p0
.end method

.method public initSpringForce()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "centerY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "centerX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "Width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "Ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "Alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "RadiusRatio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "SurfaceExtAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "Radius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "Height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 96
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    .line 72
    :pswitch_0
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCenterYDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_Y_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 69
    :pswitch_1
    sget v0, Lcom/miui/home/recents/anim/SpringBundle;->mCenterXDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_CENTER_X_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 75
    :pswitch_2
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mWidthDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_WIDTH_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 81
    :pswitch_3
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRatioDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RATIO_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 90
    :pswitch_4
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mAlphaDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_ALPHA_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 87
    :pswitch_5
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusRatioDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_RATIO_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e4ccccd    # 0.2f

    .line 93
    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 84
    :pswitch_7
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mRadiusDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_RADIUS_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    goto :goto_1

    .line 78
    :pswitch_8
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mHeightDamping:F

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->DEFAULT_HEIGHT_STIFFNESS:F

    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->getStiffness(F)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->resetSpringForce(FF)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f6282b9 -> :sswitch_8
        -0x6e8ca74e -> :sswitch_7
        -0x64fa9096 -> :sswitch_6
        -0x42ac5987 -> :sswitch_5
        0x3c6c13e -> :sswitch_4
        0x4b15feb -> :sswitch_3
        0x4fb3da6 -> :sswitch_2
        0x27a6bea3 -> :sswitch_1
        0x27a6bea4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDampingAndStiffness(FF)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/SpringBundle;->setImpulse(F)V

    return-void
.end method

.method public setDampingAndStiffnessAndImpulse(FFF)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 298
    invoke-direct {p0, p3}, Lcom/miui/home/recents/anim/SpringBundle;->setImpulse(F)V

    return-void
.end method

.method public setFinalPosition(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 1

    .line 286
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/SpringBundle;->calcVelocityIncreaseCoeWhenModifyFinalPos(F)V

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 217
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/SpringBundle;->setValueThreshold(F)V

    return-object p0

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 0

    .line 209
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 0

    .line 223
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return-object p0
.end method

.method public setStiffness(F)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public setValueThreshold(F)V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateValueAndVelocity(JZ)Z
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v6, p1

    const/4 v8, 0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    .line 143
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 145
    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    .line 147
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setValue(F)V

    .line 148
    iput v9, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return v8

    .line 154
    :cond_1
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocityIncreaseCoeWhenModifyFinalPos:F

    cmpl-float v3, v2, v9

    if-eqz v3, :cond_2

    long-to-float v3, v6

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    .line 156
    iget v4, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    iput v4, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 157
    iput v9, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocityIncreaseCoeWhenModifyFinalPos:F

    .line 160
    :cond_2
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 166
    iget-object v10, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v2

    float-to-double v11, v2

    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v13, v2

    const-wide/16 v2, 0x2

    div-long v20, v6, v2

    move-wide/from16 v15, v20

    invoke-static/range {v10 .. v16}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v2

    .line 167
    iget-object v3, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v4, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 168
    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    .line 172
    iget-object v15, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v2, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    float-to-double v3, v1

    iget v1, v2, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    float-to-double v1, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v1

    invoke-static/range {v15 .. v21}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v1

    .line 173
    iget v2, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    .line 174
    iget v1, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    goto :goto_0

    .line 179
    :cond_3
    iget-object v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v2

    float-to-double v2, v2

    iget v4, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v4, v4

    move-wide/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v1

    .line 180
    iget v2, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    .line 181
    iget v1, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 184
    :goto_0
    iget v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mMinValue:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 185
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 186
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->isAtEquilibrium(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    iget-object v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setValue(F)V

    .line 188
    iput v9, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return v8

    .line 191
    :cond_4
    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setValue(F)V

    return p3
.end method
