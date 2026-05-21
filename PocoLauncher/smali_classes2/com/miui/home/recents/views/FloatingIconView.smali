.class public Lcom/miui/home/recents/views/FloatingIconView;
.super Landroid/view/View;
.source "FloatingIconView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# static fields
.field public static TAG:Ljava/lang/String;

.field private static sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static sUseForegroundClipPathPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isNeedRecycle:Z

.field private isNeedResetShortcutIcon:Z

.field private mAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBackgroundLayerBounds:Landroid/graphics/Rect;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mCachedBitmap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClipPath:Landroid/graphics/Path;

.field private mCurRectF:Landroid/graphics/RectF;

.field private mCurTime:J

.field private mCurrentProgress:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEndRunnable:Ljava/lang/Runnable;

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private final mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

.field private mFloatAnimEnded:Z

.field private mFloatingIconViewScale:F

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundClipPath:Landroid/graphics/Path;

.field private mForegroundLayerBounds:Landroid/graphics/Rect;

.field private mForegroundLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightDiffBetweenImageAndImageView:I

.field private mIsAdaptiveIcon:Z

.field private mIsBigIcon:Z

.field private mIsClamp:Z

.field private mIsFoldLargeScreenLandscape:Z

.field private mIsOpening:Z

.field private mIsUseForegroundClipPath:Z

.field private mIsVerticalClip:Z

.field private mIsVerticalShape:Z

.field private mLastRectF:Landroid/graphics/RectF;

.field private mLastTime:J

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mRealBackgroundBounds:Landroid/graphics/Rect;

.field private mScaleMatrixForClipPath:Landroid/graphics/Matrix;

.field private mScreenRectF:Landroid/graphics/RectF;

.field private mShadeColor:I

.field private mShortcutIconImageViewRect:Landroid/graphics/RectF;

.field private mStartSpringAnim:Z

.field private mStartedMamlAnimation:Z

.field private mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

.field private mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

.field private mTaskCornerRadius:F

.field private mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/drawable/VectorDrawable;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTrueLeft:F

.field private mTrueTop:F


# direct methods
.method public static synthetic $r8$lambda$I5a9auzNzbbxYKRZ6RKdal18BPI(Lcom/miui/home/recents/views/FloatingIconView;Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$recycle$5(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXdhzuwMT1jPZkrMvXOf91KIM3I(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$update$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o8sHVzB8jEvS6BBkDsQu1IuN8c8(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$notifyBackHome$2(Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$xR6oVPc0CT1v7sWpaohcv1h3sf8(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$onAnimationEnd$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 96
    const-class v0, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    const-string v1, "com.taobao.taobao"

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 855
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 857
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 860
    sget-object v2, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawBackground before scale canvas.getWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " canvas.getHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mOriginalBounds="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mBackgroundLayerBounds="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " scale x="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 864
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget-object v10, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " scale y="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 865
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    iget-object v11, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    iget-object v10, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v3, v10

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 869
    sget-object v2, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawBackground after scale canvas.getWidth="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 873
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 874
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 869
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 877
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v1, :cond_2

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 879
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mHeightDiffBetweenImageAndImageView:I

    invoke-virtual {v2, p1, v3, v1, p0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;I)Z

    .line 881
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;)V
    .locals 4

    .line 950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 953
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getScaleX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getScaleY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 958
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 962
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 967
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawCoverForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 887
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 889
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 890
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 891
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 892
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-nez v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 895
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    if-eqz v1, :cond_3

    .line 896
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 900
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v2

    if-nez v2, :cond_4

    .line 901
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    mul-float/2addr v1, v2

    .line 903
    :cond_4
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 904
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 905
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 906
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 907
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 908
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    div-float/2addr v1, v5

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 910
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 911
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 913
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 917
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 918
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 919
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 920
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 922
    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 924
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 926
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_2

    .line 927
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v2, v3

    .line 933
    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 934
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 935
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 940
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 941
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 942
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 943
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 946
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 382
    instance-of v0, p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isNotFill()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 387
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 388
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {p1}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 395
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    const/4 v2, 0x1

    .line 396
    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/common/JNIHelper;->getInstance()Lcom/miui/home/launcher/common/JNIHelper;

    move-result-object p1

    const/16 v3, 0xff

    invoke-virtual {p1, v0, v1, p0, v3}, Lcom/miui/home/launcher/common/JNIHelper;->processBitmap(Landroid/graphics/Bitmap;III)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    move-object p1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 401
    :goto_1
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill drawable fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private finish()V
    .locals 2

    .line 1019
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1021
    instance-of v0, v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimStatusStartedForStatusBar()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 1025
    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 1026
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->waitFinishFloatingIconView(Lcom/miui/home/recents/views/FloatingIconView;)V

    goto :goto_1

    .line 1022
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finishImmediately()V

    :cond_2
    :goto_1
    return-void
.end method

.method private getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBadgeAlpha(F)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 374
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 375
    iget-boolean p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz p0, :cond_0

    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    float-to-int p0, v0

    return p0

    :cond_0
    mul-float/2addr p1, v1

    float-to-int p0, p1

    return p0
.end method

.method private getIconTransparentEdge()I
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    .line 455
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 1168
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1170
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 1171
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1172
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 1173
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    .line 1175
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_1

    .line 1176
    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAllAppsShowing()Z
    .locals 0

    .line 423
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDisableBackAnimOnK2()Z
    .locals 2

    .line 429
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    .line 430
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "venus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.shop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNotFill()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsClamp:Z

    if-nez p0, :cond_0

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

.method public static isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 683
    instance-of p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    .line 684
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevicesOrSpecialDevice()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$notifyBackHome$2(Ljava/lang/String;F)V
    .locals 3

    .line 532
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 539
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 540
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    .line 544
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 545
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 547
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 552
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onAnimationEnd$3()V
    .locals 3

    .line 563
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, try run mEndRunnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 565
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$recycle$5(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 1079
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1080
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recycle Bitmap to cache, Cache size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$update$0()V
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 343
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private notifyBackHome(Ljava/lang/String;F)V
    .locals 2

    .line 531
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLauncherDestroy(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1154
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-static {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->removeFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView;)V

    .line 1155
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-static {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->removeFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView;)V

    const/4 p0, 0x0

    .line 1156
    sput-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1157
    sput-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method

.method private removeAnimationEndListener()V
    .locals 0

    return-void
.end method

.method private static removeFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1161
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFloatingIconViewParentViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    .line 1163
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setBackgroundDrawableBounds(F)V
    .locals 3

    .line 757
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 758
    invoke-static {v0, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 760
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 761
    iget-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 762
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 766
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_1

    .line 767
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 769
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 772
    :goto_0
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundDrawableBounds  sTmpRect="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBackgroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 746
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setForegroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 752
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V
    .locals 9

    .line 462
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 463
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 466
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 467
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getIconTransparentEdge()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    mul-float v2, v1, p2

    :cond_0
    move p2, v2

    .line 472
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isSupportThemeAdaptiveIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconWidth()I

    move-result v1

    .line 475
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconHeight()I

    move-result v0

    .line 476
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataWidthPercent()F

    move-result p2

    sub-float p2, v3, p2

    int-to-float v1, v1

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataHeightPercent()F

    move-result p2

    sub-float/2addr v3, p2

    int-to-float p2, v0

    mul-float/2addr v3, p2

    div-float p2, v3, v1

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 480
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 481
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p2, p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 482
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 483
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 484
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    :goto_0
    move v8, v2

    .line 488
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float v3, v1, v8

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v4, v1, p2

    iget v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, v8

    move v2, p2

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 491
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v2, v1

    sub-float v3, v2, v8

    int-to-float v1, v1

    sub-float v4, v1, p2

    iget v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, v8

    move v2, p2

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 495
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->isViewSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    float-to-int v2, v0

    float-to-int v3, v8

    float-to-int v4, p2

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v5, p2, v3

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v6, p2, v4

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIIIZ)V

    .line 498
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    :cond_3
    sget-object p2, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClipPath: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lp.width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lp.height = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V
    .locals 6

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 438
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 439
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 440
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 442
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 443
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 445
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 446
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 447
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    const/16 v2, 0x3e9

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    return-void
.end method

.method private updateScale(Landroid/graphics/RectF;F)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    .line 230
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 231
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    .line 232
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 233
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 234
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateScale mFloatingIconViewScale="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 218
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 221
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 222
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 224
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTranslation transX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " transY="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " lp.topMargin="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private useBackAnim()Z
    .locals 1

    .line 418
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevicesOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isDisableBackAnimOnK2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isAllAppsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "drawBackground"

    .line 839
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 841
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawForeground,layer size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawForeground(Landroid/graphics/Canvas;)V

    .line 844
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawBadge(Landroid/graphics/Canvas;)V

    .line 846
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 847
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawCoverForeground(Landroid/graphics/Canvas;)V

    .line 850
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public finishImmediately()V
    .locals 3

    .line 1032
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish isNeedRecycle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetShortcutIcon()V

    .line 1035
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    .line 1037
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->removeAnimationEndListener()V

    return-void
.end method

.method public forceToEnd()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 0

    .line 1183
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 576
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_CANCEL:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 560
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 561
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "onAnimationEnd, try run mEndRunnable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1121
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1122
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->setFloatingIconViewBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 1123
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1130
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1131
    invoke-static {p0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->clearFloatingIconViewBlurConfig(Landroid/view/View;)V

    .line 1132
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1139
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    return-void
.end method

.method public recycle()V
    .locals 6

    .line 1041
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1043
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    :cond_0
    const/16 v0, 0x8

    .line 1045
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    const-wide/16 v2, -0x1

    .line 1046
    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 1047
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1048
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 1049
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1051
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1052
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1053
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1054
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x1

    .line 1055
    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    .line 1056
    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    .line 1057
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 1058
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 1060
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1063
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 1064
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 1065
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1066
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 1067
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    const/16 v4, 0xff

    .line 1068
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1070
    :cond_2
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 1071
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 1072
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1073
    sget-object v3, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recycle Bitmap to cache, Cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1076
    :cond_3
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 1077
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 1078
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    new-instance v4, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1082
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1083
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1084
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    .line 1085
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 1086
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 1087
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    .line 1088
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1090
    :cond_4
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 1091
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1092
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 1093
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 1094
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 1095
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 1096
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 1097
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 1098
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 1099
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v0, :cond_5

    .line 1100
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->recycle()V

    .line 1102
    :cond_5
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    return-void
.end method

.method public resetShortcutIcon()V
    .locals 4

    .line 1106
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShortcutIcon, visible icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    .line 1111
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 1112
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setAnimTargetVisibility(I)V

    .line 1113
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1114
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1115
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setNeedRecycle(Z)V
    .locals 3

    .line 1143
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedRecycle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    return-void
.end method

.method public setNeedResetShortcutIcon(Z)V
    .locals 3

    .line 1148
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedResetShortcutIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    return-void
.end method

.method public setShadeColor(I)V
    .locals 0

    .line 1199
    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShadeColor:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1195
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 255
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFZZFF)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZZFF)V
    .locals 7

    .line 283
    iget-boolean p8, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez p8, :cond_0

    iget-object p8, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p8, :cond_1

    :cond_0
    iget-object p8, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    if-nez p8, :cond_2

    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p8

    check-cast p8, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    iget v0, p8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v3

    iget v4, p8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 289
    invoke-static {p1, v2}, Lcom/miui/home/recents/util/RectUtil;->zoomInPixel(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 291
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsFoldLargeScreenLandscape:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    if-eqz v0, :cond_4

    .line 294
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 295
    iget v4, p1, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v0, v5

    sub-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 301
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useCornerRadiusEstimate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_5

    move p4, v4

    .line 304
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V

    .line 306
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 307
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 308
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_7

    .line 311
    iget p2, p8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    cmpl-float v0, p2, v4

    if-lez v0, :cond_6

    .line 312
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v3

    div-float/2addr v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 313
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v5, p2

    .line 315
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 318
    :cond_7
    :goto_0
    iget p2, p8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    .line 321
    invoke-direct {p0, p1, p8}, Lcom/miui/home/recents/views/FloatingIconView;->updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->updateScale(Landroid/graphics/RectF;F)V

    const v0, 0x3cc49ba6    # 0.024f

    .line 324
    iget v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    sub-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    mul-float/2addr p4, v1

    iput p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 326
    iget p4, p8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p4, p4

    div-float/2addr p4, p2

    .line 327
    invoke-direct {p0, p8, p4}, Lcom/miui/home/recents/views/FloatingIconView;->updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V

    .line 328
    invoke-direct {p0, p4}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    if-nez p5, :cond_8

    .line 330
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result p2

    if-eqz p2, :cond_8

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_8

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    if-nez p2, :cond_8

    .line 331
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 332
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const-string p2, "back_home_start"

    .line 333
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    const-string p2, "back_home_finish"

    .line 334
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    .line 335
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 337
    new-instance p2, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/FloatingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    .line 347
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim(Ljava/lang/Runnable;)V

    :cond_8
    if-eqz p6, :cond_a

    .line 352
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_9

    .line 353
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    .line 355
    :cond_9
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 356
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    iget p4, p8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p5, p8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 358
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShadeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 359
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p7, p2

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 360
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSurfaceShade:Landroid/graphics/drawable/GradientDrawable;

    .line 365
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-eqz p2, :cond_b

    .line 366
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/FloatingIconView;->getBadgeAlpha(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 369
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public useCornerRadiusEstimate()Z
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 679
    invoke-static {p0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
