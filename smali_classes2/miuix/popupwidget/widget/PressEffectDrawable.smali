.class public Lmiuix/popupwidget/widget/PressEffectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PressEffectDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;
    }
.end annotation


# static fields
.field private static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final STATE_ACTIVATED:[I

.field private static final STATE_DRAG_HOVERED:[I

.field private static final STATE_HOVERED:[I

.field private static final STATE_HOVERED_ACTIVATED:[I

.field private static final STATE_PRESSED:[I

.field private static final STATE_SELECTED:[I

.field private static final USE_FOLME:Z


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mInsetB:I

.field private mInsetL:I

.field private mInsetR:I

.field private mInsetT:I

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedAlpha:F

.field private mPressedState:Lmiuix/animation/controller/AnimState;

.field private final mRect:Landroid/graphics/RectF;

.field private mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

.field private mStyle:Lmiuix/animation/IStateStyle;

.field private mTintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 42
    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_PRESSED:[I

    new-array v1, v0, [I

    const v2, 0x1010369

    aput v2, v1, v3

    .line 43
    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_DRAG_HOVERED:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    .line 44
    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_SELECTED:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 45
    fill-array-data v2, :array_0

    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED_ACTIVATED:[I

    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    .line 47
    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED:[I

    new-array v2, v0, [I

    const v4, 0x10102fe

    aput v4, v2, v3

    .line 48
    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_ACTIVATED:[I

    .line 66
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 87
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 88
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 89
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 90
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 91
    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 93
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 94
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 95
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 96
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 97
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 98
    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1010367
        0x10102fe
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_3
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e800000    # 0.25f
    .end array-data

    :array_4
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    invoke-direct {v0}, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    return-void
.end method

.method constructor <init>(Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;Landroid/content/res/Resources;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 111
    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mTintColor:I

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    .line 112
    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mNormalAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    .line 113
    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mPressedAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    .line 114
    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    .line 115
    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mActivatedAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    .line 116
    iget p1, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredActivatedAlpha:F

    iput p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    .line 117
    new-instance p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    invoke-direct {p1}, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;-><init>()V

    iput-object p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    .line 118
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->updateLocalState()V

    .line 119
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 196
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    const-string v2, "alphaF"

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 199
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 200
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 201
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 202
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 203
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 204
    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 206
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return-void
.end method

.method private toActivatedState()Z
    .locals 5

    .line 322
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 324
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    .line 325
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 326
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 327
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 330
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 334
    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 336
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 337
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 338
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 341
    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 345
    :cond_3
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_4

    return v1

    .line 350
    :cond_4
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 351
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 354
    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toHoveredActivatedState()Z
    .locals 5

    .line 237
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 239
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    .line 240
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 241
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 242
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 245
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 249
    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 255
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 256
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 259
    :cond_3
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 263
    :cond_4
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_6

    .line 265
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 266
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 269
    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2

    .line 274
    :cond_6
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 275
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 276
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_7

    .line 277
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 279
    :cond_7
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_3
    return v2
.end method

.method private toHoveredState()Z
    .locals 5

    .line 285
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 287
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    .line 288
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 289
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 290
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 293
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 297
    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_4

    .line 298
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_3

    .line 300
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 303
    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_3
    return v1

    .line 311
    :cond_4
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 312
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 313
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 316
    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toNormalState()Z
    .locals 5

    .line 360
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 362
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    .line 363
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 364
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 365
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v2

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 368
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v1

    .line 372
    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 374
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 375
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 376
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v2

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 379
    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v1

    .line 383
    :cond_3
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_5

    .line 385
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    .line 386
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_4

    .line 387
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v2

    invoke-interface {v0, p0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 389
    :cond_4
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private toPressedState()Z
    .locals 6

    .line 220
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 225
    :cond_0
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 228
    :cond_1
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    .line 230
    :goto_0
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    .line 231
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    .line 232
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    return v2
.end method

.method private updateLocalState()V
    .locals 2

    .line 211
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mTintColor:I

    .line 212
    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mNormalAlpha:F

    .line 213
    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mPressedAlpha:F

    .line 214
    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredAlpha:F

    .line 215
    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mActivatedAlpha:F

    .line 216
    iget p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    iput p0, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredActivatedAlpha:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlphaF()F
    .locals 1

    .line 134
    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 171
    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    if-eqz p4, :cond_0

    .line 180
    sget-object p1, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable:[I

    const/4 p2, 0x0

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    sget-object p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 184
    :goto_0
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    .line 185
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    .line 186
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    .line 187
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    .line 188
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    .line 189
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    .line 190
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->init()V

    .line 192
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->updateLocalState()V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 398
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {p0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 406
    iget-object p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetL:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 407
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 408
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetR:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 409
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetB:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 151
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_DRAG_HOVERED:[I

    .line 152
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_SELECTED:[I

    .line 153
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toHoveredActivatedState()Z

    move-result p0

    return p0

    .line 159
    :cond_1
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toHoveredState()Z

    move-result p0

    return p0

    .line 162
    :cond_2
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toActivatedState()Z

    move-result p0

    return p0

    .line 165
    :cond_3
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toNormalState()Z

    move-result p0

    return p0

    .line 154
    :cond_4
    :goto_0
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toPressedState()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAlphaF(F)V
    .locals 2

    .line 126
    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
