.class public Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"


# static fields
.field private static final PULSE_ANIMATION_PROGRESS:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lcom/android/systemui/navigationbar/gestural/NavigationHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdditionalHeightForAnimation:F

.field private final mAdditionalWidthForAnimation:F

.field protected final mBottom:F

.field private mDarkColor:I

.field private final mLightColor:I

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPulseAnimationProgress:F

.field private mPulseAnimator:Landroid/animation/ObjectAnimator;

.field protected final mRadius:F

.field private mRequiresInvalidate:Z

.field private mShrink:Z

.field private final mShrinkWidthForAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    const-string v1, "pulseAnimationProgress"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lmiuix/animation/property/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->navigation_handle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 80
    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->navigation_handle_bottom_gesture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    .line 81
    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->navigation_home_handle_additional_width_for_animation:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    .line 83
    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->navigation_home_handle_additional_height_for_animation:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    .line 85
    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->navigation_home_handle_shrink_width_for_animation:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    .line 88
    sget v0, Lcom/miui/home/gesturedemo/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/systemui/navigationbar/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 89
    sget v1, Lcom/miui/home/gesturedemo/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/systemui/navigationbar/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 90
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 91
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 92
    sget v0, Lcom/miui/home/gesturedemo/R$attr;->homeHandleColor:I

    invoke-static {v2, v0}, Lcom/android/systemui/navigationbar/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 93
    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isMiuiOptOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x67000000

    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;F)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setPulseAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)F
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getPulseAnimationProgress()F

    move-result p0

    return p0
.end method

.method private getPulseAnimationProgress()F
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    return p0
.end method

.method private setPulseAnimationProgress(F)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 120
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrink:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 122
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    mul-float/2addr v2, v3

    goto :goto_0

    .line 124
    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    mul-float/2addr v1, v2

    .line 125
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    mul-float/2addr v2, v3

    .line 128
    :goto_0
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v9, v5, v2

    neg-float v7, v2

    int-to-float v0, v0

    .line 131
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    div-float/2addr v1, v4

    add-float v8, v0, v1

    div-float v12, v3, v4

    add-float v10, v8, v3

    .line 133
    iget-object v13, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 106
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 5

    .line 147
    const-class v0, Landroid/animation/ArgbEvaluator;

    const-class v1, Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getInstance"

    const/4 v4, 0x0

    .line 148
    invoke-static {v0, v1, v3, v4, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ArgbEvaluator;

    .line 149
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
