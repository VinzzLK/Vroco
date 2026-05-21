.class public Lcom/miui/home/launcher/DragView;
.super Landroid/view/ViewGroup;
.source "DragView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;,
        Lcom/miui/home/launcher/DragView$CountLabel;
    }
.end annotation


# static fields
.field public static mShortcutInfoRemoved:Z = false


# instance fields
.field private blurOutlineBg:Landroid/graphics/Bitmap;

.field private final isDrawOutline:Z

.field private mAnimateTarget:Landroid/view/View;

.field private mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

.field private mBlurOut:Z

.field private mBlurOutProgress:F

.field private mCanceledMode:Z

.field private mContent:Landroid/view/View;

.field private mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDoCancelAnim:Z

.field private final mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragGroup:Lcom/miui/home/launcher/DragObject;

.field private mDragInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mDragSource:Lcom/miui/home/launcher/DragSource;

.field private mDragViewOldVisibility:I

.field private mDragViewsCount:I

.field private mDragVisualizeOffset:[I

.field private mDropAnimationStartDelay:I

.field private mDropSucceeded:Z

.field private mFadeoutAnimation:Z

.field private mFakeTargetMode:Z

.field private mIsAutoDrag:Z

.field private mIsBigFolderAnimStyle:Z

.field private mIsForceFadeOut:Z

.field private mIsMoved:Z

.field private mIsMultiDrag:Z

.field private mIsNeedRemoved:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMaxDropAnimationDistance:I

.field private mMaxDropAnimationDuration:I

.field private mMinDropAnimationDuration:I

.field private mMyIndex:I

.field private mNeedFadeOutIfNoParent:Z

.field private mNeedOffsetCalculation:Z

.field private mNeedOutline:Z

.field private mNextDragView:Lcom/miui/home/launcher/DragView;

.field private mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

.field private mOldDragTitleAlpha:F

.field private mOnAnimationEndCallback:Ljava/lang/Runnable;

.field private mOnRemoveCallback:Ljava/lang/Runnable;

.field private mOutline:Landroid/graphics/Bitmap;

.field private mOwner:Landroid/view/ViewGroup;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrevAnimateTarget:Landroid/view/View;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mTargetLoc:[F

.field private mTargetScale:F

.field private mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

.field private mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

.field private mTitleShadowView:Landroid/view/View;

.field private mTmpPos:[F

.field private mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final showDeleteTint:Z


# direct methods
.method public static synthetic $r8$lambda$-AsphHQfAzMOju6qhgPJZFlkCnE(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->lambda$remove$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$5urFT6ZEiudFAYQFufbXId87_6I(Lcom/miui/home/launcher/DragView;FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/miui/home/launcher/DragView;->lambda$doDragAnim$2(FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$EH0R9dwouQ-WEG4fuO9MeIhaV2E(Lcom/miui/home/launcher/DragView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LX5yZsnb2-ACI1g256Y9rfYKKx4(Lcom/miui/home/launcher/DragView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->lambda$new$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTMCODhQLKXqxGeg5SDmjAlAwKU(Ljava/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragView;->lambda$createSpringAnimation$4(Ljava/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9OqQbNvVhDCZa0tTVTxVt4_Fdk(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->lambda$animateToTarget$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$wouE5JiRTKiALrcmrYHmY2ZOrPQ(Lcom/miui/home/launcher/DragView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragView;->lambda$doDragAnim$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragController;)V
    .locals 6

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 95
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v1, 0x0

    .line 96
    iput v1, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    .line 109
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 111
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    new-array v3, v3, [F

    .line 112
    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    const/4 v3, 0x0

    .line 113
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 114
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 115
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    .line 116
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    .line 117
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    .line 118
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    .line 119
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v4, p0, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 123
    iput v1, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    .line 128
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 129
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 130
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    .line 131
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    .line 132
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    .line 133
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mDoCancelAnim:Z

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 134
    iput v4, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 137
    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    .line 138
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    .line 144
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 148
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 158
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    .line 159
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mBlurOut:Z

    .line 161
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mBlurOutProgress:F

    .line 163
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mNeedOffsetCalculation:Z

    .line 164
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mNeedFadeOutIfNoParent:Z

    .line 1169
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    .line 170
    iput-object p9, p0, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 171
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p9

    iput-object p9, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 172
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 173
    iput-object p3, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    .line 174
    iput-object p4, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p4, :cond_0

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new DragView:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Launcher_DragView"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iput p5, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    .line 179
    iput-boolean p7, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    .line 180
    iput-object p8, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    .line 181
    iput-object p2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    .line 182
    iput p6, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    if-le p6, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 183
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    .line 184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0028

    .line 185
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    const p3, 0x7f0b0029

    .line 186
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    const p3, 0x7f0b0027

    .line 187
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    .line 189
    instance-of p1, p2, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz p1, :cond_2

    .line 190
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    iget-object p3, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    invoke-interface {p1, p3}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aput v1, p1, v1

    .line 193
    aput v1, p1, v2

    .line 196
    :goto_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez p1, :cond_3

    .line 197
    new-instance p1, Lcom/miui/home/launcher/DragView$CountLabel;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object p4, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p4, Lcom/miui/home/launcher/DesktopIcon;

    invoke-direct {p1, p3, p4, p6}, Lcom/miui/home/launcher/DragView$CountLabel;-><init>(Landroid/content/res/Resources;Lcom/miui/home/launcher/DesktopIcon;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    .line 200
    :cond_3
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p3, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/DragView;)V

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, p3}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 202
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p3, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-direct {p0, p1, p4, p3}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, p2, Lcom/miui/home/launcher/widget/WidgetCell;

    if-nez p1, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->shouldShowDeleteHint(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/home/launcher/anim/IBackgroundController;

    if-eqz p2, :cond_5

    .line 210
    check-cast p1, Lcom/miui/home/launcher/anim/IBackgroundController;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/IBackgroundController;->getBackgroundAnimController()Lcom/miui/home/launcher/anim/BackgroundAnimController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz p1, :cond_5

    .line 212
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->setTargetView(Landroid/view/View;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 217
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->isNeedSoftWare()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragView;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragView;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragView;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragView;)Ljava/lang/Runnable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DragView;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimateRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/DragView;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/recents/anim/WindowElementOffsetHelper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/DragView;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    return-object p0
.end method

.method private addDragShadow(II)V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 663
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 664
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedShowShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/miui/home/launcher/DragView;->setShadowLocationAndSize(IIII)V

    goto :goto_0

    .line 668
    :cond_0
    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_1

    .line 669
    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 670
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v1

    .line 671
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 672
    instance-of v2, v0, Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-eqz v2, :cond_1

    .line 673
    invoke-virtual {v1}, Lcom/miui/home/launcher/TitleTextView;->isNeedShowShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    check-cast v0, Lcom/miui/home/launcher/ItemIconTitleContainer;

    .line 675
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    .line 676
    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    .line 677
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p2, v0

    add-int/2addr p2, v2

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/miui/home/launcher/DragView;->setShadowLocationAndSize(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private animateToTargetInner(Z)V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->resetView(Landroid/view/View;)V

    .line 926
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 927
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    if-nez v1, :cond_3

    .line 931
    instance-of v1, v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    if-eqz v1, :cond_2

    .line 932
    check-cast v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    invoke-interface {v0}, Lcom/miui/home/launcher/folder/IItemDragAnim;->performPreViewItemHiddenAnim()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 934
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 939
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 940
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 p1, 0x0

    .line 941
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    :cond_4
    return-void
.end method

.method private calcAndStartAnimate(Z)V
    .locals 29

    move-object/from16 v7, p0

    .line 946
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 947
    :cond_0
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    .line 950
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInQuickOrEditingModeExiting()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 951
    iget-object v4, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v4

    .line 952
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    move-object v0, v5

    move v5, v6

    goto :goto_0

    .line 955
    :cond_1
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-static {v5, v4, v0, v1, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v5

    .line 957
    iget-object v8, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/miui/home/launcher/DragController$LocationCalibration;

    if-eqz v8, :cond_2

    .line 958
    iget-object v8, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/DragController$LocationCalibration;

    iget-object v9, v7, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v0, v9}, Lcom/miui/home/launcher/DragController$LocationCalibration;->offset([FLcom/miui/home/launcher/DragObject;)V

    .line 962
    :cond_2
    :goto_0
    iget v8, v7, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    iget v8, v7, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 964
    :goto_1
    iget-boolean v9, v7, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v9, :cond_4

    .line 965
    iget-object v9, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    iget-object v12, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    sub-float/2addr v9, v12

    cmpl-float v12, v9, v10

    if-eqz v12, :cond_4

    .line 967
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "targetView\'s width and draggingView\'s width is difference="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Launcher_DragView"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    aget v12, v0, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v9, v13

    add-float/2addr v12, v9

    aput v12, v0, v11

    .line 972
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    .line 973
    iget-boolean v12, v7, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v12, :cond_5

    move v6, v10

    .line 974
    :cond_5
    iget-object v10, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    iget-object v12, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v13, 0x2

    if-eq v10, v12, :cond_6

    .line 975
    aget v10, v0, v11

    iget-object v14, v7, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aget v15, v14, v11

    int-to-float v15, v15

    mul-float/2addr v15, v8

    sub-float/2addr v10, v15

    aput v10, v0, v11

    .line 976
    aget v10, v0, v3

    aget v14, v14, v3

    int-to-float v14, v14

    mul-float/2addr v14, v8

    sub-float/2addr v10, v14

    aput v10, v0, v3

    .line 978
    instance-of v10, v12, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz v10, :cond_6

    new-array v10, v13, [I

    .line 979
    fill-array-data v10, :array_0

    .line 980
    check-cast v12, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {v12, v10}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    .line 981
    aget v12, v0, v11

    aget v14, v10, v11

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v12, v14

    aput v12, v0, v11

    .line 982
    aget v12, v0, v3

    aget v10, v10, v3

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v12, v10

    aput v12, v0, v3

    .line 985
    :cond_6
    iget-boolean v5, v7, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v5, :cond_8

    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 986
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    if-le v5, v10, :cond_7

    .line 987
    aget v5, v0, v11

    iget-object v10, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    sub-int/2addr v10, v12

    div-int/2addr v10, v13

    int-to-float v10, v10

    add-float/2addr v5, v10

    aput v5, v0, v11

    .line 989
    :cond_7
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    if-le v5, v10, :cond_8

    .line 990
    aget v5, v0, v3

    iget-object v10, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    sub-int/2addr v10, v12

    div-int/2addr v10, v13

    int-to-float v10, v10

    add-float/2addr v5, v10

    aput v5, v0, v3

    .line 993
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v10

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v12

    .line 995
    aget v14, v0, v11

    .line 996
    aget v15, v0, v3

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v16

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    .line 1000
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    .line 1002
    iget-boolean v0, v7, Lcom/miui/home/launcher/DragView;->mNeedOffsetCalculation:Z

    if-eqz v0, :cond_9

    .line 1003
    new-instance v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-direct {v0, v3, v4, v1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    .line 1005
    :cond_9
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    sub-float v0, v14, v10

    float-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 1007
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v5, v15, v12

    move/from16 v20, v12

    float-to-double v11, v5

    .line 1008
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1011
    iget v1, v7, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    .line 1012
    iget v3, v7, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_a

    int-to-float v1, v1

    .line 1013
    iget-object v4, v7, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1015
    :cond_a
    iget v0, v7, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1017
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 1019
    iput-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1020
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1022
    :cond_b
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v1, :cond_c

    .line 1024
    iput-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 1025
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->cancel()V

    :cond_c
    if-eqz p1, :cond_d

    .line 1027
    iget v1, v7, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    mul-int/lit8 v1, v1, 0x32

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    .line 1028
    :goto_2
    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->getAnimDuration()J

    move-result-wide v3

    goto :goto_3

    :cond_e
    int-to-long v3, v0

    .line 1030
    :goto_3
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_f

    const/4 v11, 0x0

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    move v11, v0

    .line 1031
    :goto_4
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1032
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1033
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1034
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1035
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v13, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1036
    iget-object v12, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/DragView$2;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v13, v3

    move v3, v8

    move v8, v14

    move/from16 v21, v15

    move-wide v14, v4

    move v4, v6

    move v5, v9

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragView$2;-><init>(Lcom/miui/home/launcher/DragView;FFFFF)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1065
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$3;

    invoke-direct {v1, v7, v11}, Lcom/miui/home/launcher/DragView$3;-><init>(Lcom/miui/home/launcher/DragView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1074
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v1, :cond_10

    .line 1075
    check-cast v0, Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IShortcutIcon;->setIsMultiDrag(Z)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1079
    :cond_10
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityX()F

    move-result v0

    const/high16 v1, -0x3b060000    # -2000.0f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v27

    .line 1081
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityY()F

    move-result v0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v28

    .line 1083
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;-><init>(FF)V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 1085
    invoke-virtual {v0, v14, v15}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setStartDelay(J)V

    .line 1086
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    sub-float v23, v10, v8

    sub-float v24, v20, v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v28}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setValues(FFFFFF)V

    .line 1087
    iget-object v9, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v12, Lcom/miui/home/launcher/DragView$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, v21

    move-object/from16 v4, v19

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragView$4;-><init>(Lcom/miui/home/launcher/DragView;FFLandroid/graphics/RectF;II)V

    invoke-virtual {v9, v12}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addUpdateListener(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;)V

    .line 1097
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$5;

    move/from16 v2, v20

    invoke-direct {v1, v7, v10, v2, v11}, Lcom/miui/home/launcher/DragView$5;-><init>(Lcom/miui/home/launcher/DragView;FFZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1114
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-boolean v0, v7, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-nez v0, :cond_12

    .line 1115
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1116
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-nez v0, :cond_12

    .line 1118
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIsHideTitle()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    if-nez v0, :cond_12

    .line 1119
    :cond_11
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 1120
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1121
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1122
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1123
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1124
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$6;

    invoke-direct {v1, v7}, Lcom/miui/home/launcher/DragView$6;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1133
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$7;

    invoke-direct {v1, v7, v11}, Lcom/miui/home/launcher/DragView$7;-><init>(Lcom/miui/home/launcher/DragView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1141
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1145
    :cond_12
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1146
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1147
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->start()V

    goto :goto_5

    .line 1149
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->resetFlagBigFolderAnimStyle()V

    .line 1150
    invoke-direct {v7, v11}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished(Z)V

    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcTouchX(I)I
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private calcTouchY(I)I
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private calcTranslationX(I)I
    .locals 1

    .line 331
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetX(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    return p1
.end method

.method private calcTranslationY(I)I
    .locals 1

    .line 335
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetY(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    return p1
.end method

.method private cancelScaleAnim()V
    .locals 4

    .line 1507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1508
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    .line 1509
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 1510
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1511
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1512
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/DragView$9;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/DragView$9;-><init>(Lcom/miui/home/launcher/DragView;Z)V

    .line 1513
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1520
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private clearBlur()V
    .locals 3

    .line 1429
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 1430
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1432
    :cond_0
    instance-of v0, v0, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42480000    # 50.0f

    .line 1433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFFZ)V

    goto :goto_1

    .line 1431
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "F",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 720
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 721
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    .line 722
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p1, 0x3dcccccd    # 0.1f

    .line 723
    invoke-static {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 724
    new-instance p0, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method private detachContent()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private doDragAnim(FFIIII)V
    .locals 11

    move-object v8, p0

    .line 290
    new-instance v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move v3, p2

    invoke-direct {v9, p0, v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 291
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    .line 292
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 293
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->getDragAnimResponse()F

    move-result v1

    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 294
    new-instance v10, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move/from16 v4, p5

    move v5, p3

    move/from16 v6, p6

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/DragView;FFIIII)V

    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 311
    iget-boolean v0, v8, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v8, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v1, :cond_0

    .line 312
    check-cast v0, Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IShortcutIcon;->setIsMultiDrag(Z)V

    .line 315
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {v9, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 320
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz v1, :cond_0

    .line 601
    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->drawDragView(Landroid/graphics/Canvas;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/DesktopIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 604
    check-cast v0, Lcom/miui/home/launcher/DesktopIcon;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/DragView;->isHideTitle(Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DesktopIcon;->setIsDrawingInDragView(Z)V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 609
    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/DragView;->isHideTitle(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/ClearButton;

    if-eqz v1, :cond_3

    .line 612
    check-cast v0, Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/DragView;->isHideTitle(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/ClearButton;->setIsHideTitle(Z)V

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 616
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v0, :cond_4

    .line 617
    check-cast p1, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/DesktopIcon;->setIsDrawingInDragView(Z)V

    .line 620
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_5

    .line 621
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 623
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;

    if-eqz p1, :cond_6

    .line 624
    check-cast p0, Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClearButton;->setIsHideTitle(Z)V

    :cond_6
    return-void
.end method

.method private fadeOut()Z
    .locals 6

    .line 1221
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isDragContainerBlurred(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    .line 1222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v4, v0, Lcom/miui/home/launcher/CloudShortcutIcon;

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    .line 1225
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/CloudShortcutIcon;

    .line 1227
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CloudShortcutIcon;->setBlockSetVisibility(Z)V

    .line 1229
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    .line 1230
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1231
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1232
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    int-to-long v4, v2

    .line 1233
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x64

    .line 1234
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/DragView$8;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/DragView$8;-><init>(Lcom/miui/home/launcher/DragView;Z)V

    .line 1235
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return v3
.end method

.method private getBlurRoundRect(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/Rect;
    .locals 3

    .line 1374
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 1375
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private getBlurRoundRect(Lcom/miui/home/launcher/HostViewContainer;)Landroid/graphics/Rect;
    .locals 3

    .line 1380
    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p0

    .line 1381
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1382
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int v0, p1, v0

    .line 1383
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 1386
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-direct {v1, v0, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getDragAnimResponse()F
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    instance-of v0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    if-eqz v0, :cond_0

    .line 325
    check-cast p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->getFoldThumbnailDragAnimResponse()F

    move-result p0

    return p0

    :cond_0
    const p0, 0x3dcccccd    # 0.1f

    return p0
.end method

.method private hideDragViewTitleInternal()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 1283
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v0, 0x0

    .line 1284
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1285
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1288
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1289
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    .line 1291
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1292
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1293
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isHideTitle(Z)Z
    .locals 3

    .line 630
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 634
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 639
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    xor-int/2addr v2, p1

    .line 642
    :goto_0
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mBlurOut:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private isNeedSoftWare()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 252
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTargetAnimateRunning()Z
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1156
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    .line 1157
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animateToTarget$6()V
    .locals 1

    const/4 v0, 0x1

    .line 1209
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    return-void
.end method

.method private static synthetic lambda$createSpringAnimation$4(Ljava/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    float-to-int p1, p2

    .line 725
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$doDragAnim$2(FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    sub-float p7, p8, p1

    sub-float/2addr p2, p1

    div-float/2addr p7, p2

    .line 298
    invoke-virtual {p0, p8}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 299
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_0

    .line 300
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p1}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getRotation(I)F

    move-result p1

    mul-float/2addr p1, p7

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 301
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    iget p2, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getAlpha(II)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, p7

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 302
    invoke-direct {p0, p7}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    .line 303
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    if-nez p1, :cond_0

    int-to-float p1, p3

    .line 304
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result p2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p7

    add-float/2addr p1, p2

    int-to-float p2, p5

    .line 305
    invoke-direct {p0, p6}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result p3

    sub-int/2addr p3, p5

    int-to-float p3, p3

    mul-float/2addr p3, p7

    add-float/2addr p2, p3

    .line 306
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 307
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$doDragAnim$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 316
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz p0, :cond_1

    instance-of p2, p0, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p2, :cond_1

    .line 317
    check-cast p0, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->updateCheckBoxAnimProgress(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)V
    .locals 0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchY(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    return-void
.end method

.method private synthetic lambda$remove$5()V
    .locals 0

    .line 843
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->removeSelf()V

    return-void
.end method

.method private move(Landroid/util/Property;I)V
    .locals 2

    .line 738
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    .line 739
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result v0

    .line 740
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez v1, :cond_2

    .line 741
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v1, :cond_1

    int-to-float p1, v0

    .line 742
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 743
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    goto :goto_2

    :cond_1
    int-to-float p1, v0

    .line 745
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 746
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    goto :goto_2

    .line 749
    :cond_2
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, p2, :cond_3

    .line 750
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_1
    int-to-float p1, v0

    .line 751
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_2
    return-void
.end method

.method private needFadeOut()Z
    .locals 2

    .line 1215
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mNeedFadeOutIfNoParent:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onDropAnimationFinished(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    .line 882
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isDragContainerBlurred(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/miui/home/launcher/DragView;->mShortcutInfoRemoved:Z

    if-nez v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 886
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 889
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/home/launcher/DragView$1;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/DragView$1;-><init>(Lcom/miui/home/launcher/DragView;)V

    aput-object v4, v3, v0

    .line 890
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isDragContainerBlurred(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 912
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    .line 913
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mBlurOut:Z

    return-void

    :cond_3
    const-string v0, "Launcher_DragView"

    const-string v1, "onDropAnimationFinished"

    .line 916
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DragObject;->onDropAnimationFinished(Lcom/miui/home/launcher/DragView;Z)V

    return-void

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private removeSelf()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 856
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSelf mOnRemoveCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_DragView"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private restoreHideDragViewTitleInternal()V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    .line 1298
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v1, 0x0

    .line 1299
    iput v1, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1300
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 1303
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 1304
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1308
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setBlur(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 13

    .line 1330
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Launcher_DragView"

    const-string/jumbo p1, "setBlur: view is not support blur or blur switch closed!"

    .line 1331
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v0

    .line 1336
    instance-of v1, p1, Lcom/miui/home/launcher/FolderIcon;

    const v2, 0x7f0706a1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 1337
    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .line 1338
    instance-of v1, p1, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 1342
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v7

    .line 1343
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->getBlurRoundRect(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1344
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 1345
    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1346
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 1347
    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIIIZ)V

    .line 1348
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1349
    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 1351
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 1352
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    const/16 p2, 0x6a

    const/16 v0, 0x64

    if-eqz p1, :cond_3

    const p1, -0x4c89898a

    .line 1353
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    const p1, -0xeb6c00

    .line 1354
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    :cond_3
    const p1, 0x66b4b4b4

    .line 1356
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    const p1, -0xd10e00

    .line 1357
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 1359
    :cond_4
    instance-of p1, p1, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    if-eqz p1, :cond_6

    .line 1360
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1361
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 1363
    :cond_5
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1364
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 1365
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz p1, :cond_6

    const/high16 p1, 0x42480000    # 50.0f

    .line 1366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701e4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-static {p0, v3, p1, p2, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFFZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setDragShadow(F)V
    .locals 3

    .line 1474
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 1478
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1480
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleShadowBound()[F

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1481
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShadowOffsetY()F

    move-result p0

    .line 1479
    invoke-static {v1, p1, v2, p0, v0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/view/View;I[FFF)V

    goto :goto_0

    .line 1482
    :cond_1
    instance-of v1, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_2

    .line 1483
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    .line 1484
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1486
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 1487
    invoke-virtual {p1}, Lcom/miui/home/launcher/TitleTextView;->getTitleShadowBound()[F

    move-result-object v2

    .line 1488
    invoke-virtual {p1}, Lcom/miui/home/launcher/TitleTextView;->getShadowOffsetY()F

    move-result p1

    .line 1486
    invoke-static {p0, v1, v2, p1, v0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/view/View;I[FFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setShadowLocationAndSize(IIII)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 690
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 692
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTitleShadowView:Landroid/view/View;

    int-to-float p1, p4

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static setShortcutRemoved(Z)V
    .locals 0

    .line 851
    sput-boolean p0, Lcom/miui/home/launcher/DragView;->mShortcutInfoRemoved:Z

    return-void
.end method

.method private setWidgetBlur(Landroid/view/View;Z)V
    .locals 11

    .line 1402
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1407
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    .line 1408
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->getBlurRoundRect(Lcom/miui/home/launcher/HostViewContainer;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1409
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v1

    const/4 v2, 0x0

    .line 1410
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    const/4 v3, 0x1

    .line 1411
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 1412
    invoke-static {v1, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1413
    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 1414
    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result p1

    float-to-int v5, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIIIZ)V

    if-eqz p2, :cond_1

    .line 1416
    invoke-static {v1, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 1418
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 1419
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBackgroundBlendColors(Landroid/view/View;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Launcher_DragView"

    const-string/jumbo p1, "setWidgetBlur: widget is not support blur or blur switch closed!"

    .line 1403
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldDrawOutline(Landroid/view/View;)Z
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 257
    instance-of v0, p0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 258
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 264
    instance-of v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldShowDeleteHint(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 272
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 273
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    return p0

    :cond_1
    const/16 p0, 0x13

    if-eq v1, p0, :cond_2

    const/16 p0, 0x17

    if-ne v1, p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private updateSurroundingViews(F)V
    .locals 5

    .line 409
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 414
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 415
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    sub-float v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    move v0, v4

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v2, :cond_3

    .line 421
    check-cast v1, Lcom/miui/home/launcher/IShortcutIcon;

    sub-float/2addr v3, p1

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/IShortcutIcon;->updateCheckBoxAnimProgress(F)V

    move v0, v4

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v1, :cond_4

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 425
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView$CountLabel;->updateAlpha(I)V

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    if-eqz v4, :cond_5

    .line 429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public animateToTarget()Z
    .locals 5

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToTarget isTargetAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanceledMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDoCancelAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mDoCancelAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimateTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_DragView"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->onDropAnimationStart(Lcom/miui/home/launcher/DragView;)V

    .line 1194
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    .line 1195
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1196
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDoCancelAnim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 1197
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->cancelScaleAnim()V

    goto :goto_1

    .line 1200
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished(Z)V

    :goto_1
    return v2

    .line 1204
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->needFadeOut()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1205
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->fadeOut()Z

    goto :goto_2

    .line 1206
    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    if-nez v0, :cond_5

    .line 1207
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    goto :goto_2

    .line 1209
    :cond_5
    new-instance v0, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/DragView;)V

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return v2
.end method

.method public canShowShortcutMenu()Z
    .locals 0

    .line 1279
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->canShowShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelDrag()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->detachContent()V

    return-void
.end method

.method public clearForceFadeOut()V
    .locals 1

    const/4 v0, 0x0

    .line 1176
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz v0, :cond_0

    .line 568
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->drawBackground(Landroid/graphics/Canvas;)V

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 572
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 576
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v0, :cond_3

    .line 577
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    .line 578
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView$CountLabel;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 582
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 586
    fill-array-data p1, :array_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->getVisionCenter([I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public enableItemTitleShadow(Z)V
    .locals 1

    .line 1494
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, p0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_1

    .line 1495
    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->setTitleDynamicShadow()V

    goto :goto_0

    .line 1500
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->closeDynamicShadow(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public forceEndAnimation()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    return-object p0
.end method

.method public getDragInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    return-object p0
.end method

.method public getDragVisualizeOffsetY()I
    .locals 1

    .line 1275
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getOutline()Landroid/graphics/Bitmap;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOwner()Landroid/view/ViewGroup;
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRegistrationX()I
    .locals 0

    .line 527
    iget p0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    return p0
.end method

.method public getRegistrationY()I
    .locals 0

    .line 531
    iget p0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    return p0
.end method

.method public getVisionCenter([I)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz v1, :cond_0

    .line 592
    check-cast v0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionCenter([I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    aput p0, p1, v0

    :goto_0
    return-void
.end method

.method public initRegistrationOffset(IIII)V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    .line 281
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    .line 283
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p2, p4

    .line 284
    iput p2, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    :goto_0
    return-void
.end method

.method public isCanceledMode()Z
    .locals 0

    .line 817
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return p0
.end method

.method isDropSucceeded()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isInAssistantOverlayState()Z

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

.method public isInAssistantOverlayState()Z
    .locals 1

    .line 772
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSameType(Landroid/view/View;)Z
    .locals 1

    .line 1324
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetAnimating()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 1162
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method moveX(I)V
    .locals 1

    .line 730
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method moveY(I)V
    .locals 1

    .line 734
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1391
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1393
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1394
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/DragView;->setWidgetBlur(Landroid/view/View;Z)V

    goto :goto_0

    .line 1396
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/DragView;->setBlur(Landroid/view/View;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1424
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1425
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->clearBlur()V

    return-void
.end method

.method public onDrop()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->detachContent()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 562
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMoveX(I)V
    .locals 1

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 697
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveX(I)V

    :cond_0
    return-void
.end method

.method public onMoveY(I)V
    .locals 1

    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 704
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveY(I)V

    :cond_0
    return-void
.end method

.method public onPreDragViewMoveX(I)V
    .locals 0

    .line 710
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveX(I)V

    return-void
.end method

.method public onPreDragViewMoveY(I)V
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveY(I)V

    return-void
.end method

.method remove(Z)V
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v1, :cond_0

    .line 822
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/miui/home/launcher/DragView;->mShortcutInfoRemoved:Z

    if-nez v2, :cond_2

    .line 825
    instance-of v2, v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    if-eqz v2, :cond_1

    .line 826
    check-cast v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    invoke-interface {v0}, Lcom/miui/home/launcher/folder/IItemDragAnim;->performPreViewItemShowAnim()V

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v2, v0, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    .line 830
    check-cast v0, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v0}, Lcom/miui/home/launcher/DesktopIcon;->startShowIconMessageAnim()V

    goto :goto_0

    .line 834
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/CloudShortcutIcon;

    if-eqz v0, :cond_3

    .line 835
    check-cast p1, Lcom/miui/home/launcher/CloudShortcutIcon;

    .line 836
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CloudShortcutIcon;->setBlockSetVisibility(Z)V

    .line 837
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    :cond_3
    :goto_0
    sput-boolean v1, Lcom/miui/home/launcher/DragView;->mShortcutInfoRemoved:Z

    .line 841
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->needPostWhenDrop()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 842
    new-instance p1, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/DragView;)V

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 846
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->removeSelf()V

    :goto_1
    return-void
.end method

.method public removeDragViewAfterBlurAnim()V
    .locals 2

    .line 1442
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    if-nez v0, :cond_0

    return-void

    .line 1445
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mBlurOutProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1446
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DragView;->updateDragViewTitleAndIconMessage(F)V

    :cond_1
    const/4 v0, 0x0

    .line 1448
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    .line 1449
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/DragObject;->onDropAnimationFinished(Lcom/miui/home/launcher/DragView;Z)V

    return-void
.end method

.method public resetFlagBigFolderAnimStyle()V
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->restoreHideDragViewTitleInternal()V

    :cond_0
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    .line 1315
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    .line 1318
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public setAnimateTarget(Landroid/view/View;)Z
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    .line 785
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 786
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 787
    instance-of v0, p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 788
    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 789
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 791
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 792
    instance-of p1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz p1, :cond_1

    .line 793
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 795
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 796
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public setCanceledMode()V
    .locals 1

    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return-void
.end method

.method public setDoCancelAnim()V
    .locals 1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDoCancelAnim:Z

    return-void
.end method

.method public setDragGroup(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public setDragVisualizeOffset(II)V
    .locals 1

    .line 1270
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    .line 1271
    aput p2, p0, p1

    return-void
.end method

.method public setDropAnimationStartDelay(I)V
    .locals 0

    .line 1180
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    return-void
.end method

.method setDropSucceed()V
    .locals 1

    const/4 v0, 0x1

    .line 764
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    return-void
.end method

.method public setFadeoutAnimationMode()V
    .locals 1

    const/4 v0, 0x1

    .line 809
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    return-void
.end method

.method public setFakeTargetMode()V
    .locals 1

    const/4 v0, 0x1

    .line 805
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    return-void
.end method

.method public setFlagBigFolderAnimStyle(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    .line 544
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->hideDragViewTitleInternal()V

    return-void
.end method

.method public setForceFadeOut()V
    .locals 1

    const/4 v0, 0x1

    .line 1172
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    return-void
.end method

.method public setMinDropAnimationDuration(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    return-void
.end method

.method public setNeedFadeOutIfNoParent()V
    .locals 1

    const/4 v0, 0x1

    .line 780
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mNeedFadeOutIfNoParent:Z

    return-void
.end method

.method public setNeedOffsetCalculation(Z)V
    .locals 0

    .line 776
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mNeedOffsetCalculation:Z

    return-void
.end method

.method public setNeedOutline(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    return-void
.end method

.method public setNextDragView(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    return-void
.end method

.method public setOnAnimationEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnRemoveCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOutline(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 504
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    .line 506
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    if-eqz v0, :cond_2

    .line 507
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 508
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->blurOutlineBg:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string p1, "#66FF0000"

    .line 509
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 510
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 511
    sget-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x12c

    .line 512
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    .line 513
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 514
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setOutlineBg(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->blurOutlineBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTargetScale(F)V
    .locals 1

    .line 555
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    :cond_0
    return-void
.end method

.method public showWithAnim(FFIIII)V
    .locals 4

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showWithAnim , souceScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , dragScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , touchX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , touchY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , initX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , initY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_DragView"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 651
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    int-to-float v0, p5

    .line 652
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    int-to-float v0, p6

    .line 653
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 654
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    invoke-direct {p0, p5, p6}, Lcom/miui/home/launcher/DragView;->addDragShadow(II)V

    .line 657
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 658
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/DragView;->doDragAnim(FFIIII)V

    return-void
.end method

.method public updateAnimateTarget(Landroid/view/View;)V
    .locals 1

    .line 1245
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1247
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1248
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method

.method public updateAnimateTarget([F)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 1256
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1257
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method

.method public updateDragView()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->detachContent()V

    :cond_0
    return-void
.end method

.method public updateDragViewTitleAndIconMessage(F)V
    .locals 4

    .line 1453
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsNeedRemoved:Z

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mBlurOutProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1458
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v3, v2, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_4

    .line 1460
    check-cast v2, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showTitle()V

    goto :goto_1

    .line 1462
    :cond_2
    instance-of v3, v2, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v3, :cond_3

    .line 1463
    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextAlpha(F)V

    goto :goto_1

    .line 1465
    :cond_3
    instance-of v2, v2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 1466
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    .line 1469
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->setDragShadow(F)V

    .line 1470
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
