.class public Landroidx/viewpager/widget/OriginalViewPager;
.super Landroid/view/ViewGroup;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;,
        Landroidx/viewpager/widget/OriginalViewPager$SavedState;,
        Landroidx/viewpager/widget/OriginalViewPager$DecorView;,
        Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;,
        Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurIsRTL:Z

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 122
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    return-void
.end method

.method private completeScroll(Z)V
    .locals 6

    .line 2005
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    .line 2024
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    move v3, v2

    .line 2025
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2026
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2027
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_1

    .line 2029
    iput-boolean v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    move v0, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 2034
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2036
    :cond_3
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    return-void

    .line 2008
    :cond_5
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p0, 0x0

    .line 2009
    throw p0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    .line 1954
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1955
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1957
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1958
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1959
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1961
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1966
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    .line 1971
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1972
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1974
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1975
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1976
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1978
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1982
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1983
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    .line 1988
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1989
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1991
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1992
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1993
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1995
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 2000
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 2046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2049
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2050
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2695
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2696
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2698
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2699
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2700
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2896
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 2899
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2902
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2903
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2904
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2905
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2907
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2908
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2909
    check-cast p2, Landroid/view/ViewGroup;

    .line 2910
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2911
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2912
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2913
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2915
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 13

    .line 2399
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2400
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2401
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v1

    move v8, v4

    move-object v9, v5

    move v10, v6

    .line 2408
    :goto_2
    iget-object v11, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_8

    .line 2409
    iget-object v11, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    if-nez v10, :cond_3

    .line 2411
    iget v12, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/2addr v0, v6

    if-ne v12, v0, :cond_2

    goto :goto_3

    .line 2413
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    add-float/2addr v1, v7

    add-float/2addr v1, v3

    .line 2414
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2415
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2416
    throw v5

    .line 2419
    :cond_3
    :goto_3
    iget v1, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2422
    iget v0, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    if-nez v10, :cond_5

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_4

    goto :goto_4

    :cond_4
    return-object v9

    :cond_5
    :goto_4
    cmpg-float v0, v2, v0

    if-ltz v0, :cond_7

    .line 2424
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_6

    goto :goto_5

    .line 2431
    :cond_6
    iget v0, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2433
    iget v7, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v10, v4

    move-object v9, v11

    goto :goto_2

    :cond_7
    :goto_5
    return-object v11

    :cond_8
    return-object v9
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 1

    .line 1530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1531
    const-class v0, Landroidx/viewpager/widget/OriginalViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGutterDrag(FF)Z
    .locals 2

    .line 2042
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    cmpg-float p0, p2, v1

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2681
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2682
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2686
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2687
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2688
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 2689
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1849
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1850
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v2

    .line 1855
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1856
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1857
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_1

    return v2

    .line 1858
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1863
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    .line 1864
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v3

    .line 1865
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1867
    iget v6, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1868
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1872
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 1873
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1874
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 1875
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private performDrag(F)Z
    .locals 1

    .line 2349
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2351
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 2353
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 2360
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2361
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2362
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2366
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    const/4 p0, 0x0

    throw p0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 0

    if-lez p2, :cond_1

    .line 1687
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1688
    throw p0

    .line 1701
    :cond_1
    :goto_0
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1702
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 1704
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1706
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 1707
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 2339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2341
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    .line 2330
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2331
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->endDrag()V

    .line 2332
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2333
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2334
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

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

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 685
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 689
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 690
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 689
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 693
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    .line 695
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 699
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 701
    :cond_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 702
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 703
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2705
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2706
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1292
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1293
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1298
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1300
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1301
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1303
    :cond_1
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2941
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2946
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2947
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2948
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2949
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2950
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2951
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2962
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2965
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2969
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 2973
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2986
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2987
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2988
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2989
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2990
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2991
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1504
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1507
    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1509
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/OriginalViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 1510
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1514
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1515
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 1512
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1517
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 2829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2834
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_2

    .line 2835
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    .line 2843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2844
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 2849
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 2849
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2857
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 2863
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2864
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 2866
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v0

    goto :goto_5

    .line 2868
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2873
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2874
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 2876
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v0

    goto :goto_5

    .line 2878
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2886
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v2

    goto :goto_7

    .line 2883
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 2889
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2755
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2756
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2757
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2758
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2759
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2764
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2765
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2766
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2767
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2768
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2767
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2774
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3065
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 1825
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    const/4 p0, 0x0

    .line 1826
    throw p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3033
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3034
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    .line 3038
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3040
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3041
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3042
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3043
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3044
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2462
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2465
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2492
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2493
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_0

    .line 2469
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2474
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2475
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2476
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2477
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2478
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2480
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2482
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 2483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2485
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2487
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2488
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2489
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2498
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 924
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 925
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2810
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2811
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2812
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2813
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2803
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2804
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 2806
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2796
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2797
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result p0

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 2799
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3055
    new-instance p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3070
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3060
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 811
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 812
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 813
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 636
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 837
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    return p0
.end method

.method public getPageMargin()I
    .locals 0

    .line 893
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    return p0
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 1

    .line 1544
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 1545
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1546
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    throw v0
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1565
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1566
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1567
    iget v2, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method isRTL()Z
    .locals 1

    .line 1466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1576
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1577
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2504
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2507
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2062
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2075
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    return v9

    .line 2079
    :cond_1
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2184
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2096
    :cond_4
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2102
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 2104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    goto/16 :goto_2

    .line 2108
    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2109
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2110
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2111
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2112
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_7

    .line 2115
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2116
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2118
    iput v10, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2119
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2120
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2123
    :cond_7
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_9

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_9

    .line 2125
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2126
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2127
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    if-lez v14, :cond_8

    .line 2129
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2130
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2131
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_9
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_a

    .line 2138
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2140
    :cond_a
    :goto_1
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_b

    .line 2142
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2143
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2188
    :cond_b
    :goto_2
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 2189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2191
    :cond_c
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2197
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    return v0

    .line 2154
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2155
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2156
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2157
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2159
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    const/4 v0, 0x0

    .line 2160
    throw v0

    .line 2068
    :cond_e
    :goto_3
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 1720
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 1721
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 1728
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1729
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1730
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1733
    iget-boolean v14, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1734
    iget v12, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 1749
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1750
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1742
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 1745
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 1766
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1767
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 1759
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 1762
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 1772
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1773
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1771
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 1782
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1783
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1784
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1786
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 1787
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1790
    iget-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1793
    iput-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1794
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1797
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1800
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1808
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1809
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1807
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1813
    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    .line 1814
    iput v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 1815
    iput v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 1817
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1818
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 1820
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1587
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 1588
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 1587
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 1591
    div-int/lit8 p2, p1, 0xa

    .line 1592
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 1595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 1605
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1606
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 1607
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v3, :cond_b

    .line 1608
    iget-boolean v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_b

    .line 1609
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    .line 1624
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p1

    .line 1630
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    .line 1636
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1637
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1638
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 1641
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    .line 1643
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1649
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildWidthMeasureSpec:I

    .line 1650
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 1653
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1654
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 1655
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1658
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    .line 1660
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 1666
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v2, :cond_d

    .line 1667
    iget-boolean v4, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    .line 1668
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1670
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 1896
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1898
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 1899
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 1900
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 1901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_5

    .line 1903
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1904
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1905
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 1907
    :cond_0
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 1922
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1923
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1915
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 1918
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 1928
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 1930
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1935
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1937
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;

    if-eqz p1, :cond_7

    .line 1938
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 1939
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 1941
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1942
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1944
    iget-boolean v0, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 1945
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1946
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1950
    :cond_7
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 3006
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 3017
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3018
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 3019
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3020
    iget v6, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 3021
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1481
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1486
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 1487
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1495
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 1496
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 1497
    iget-object v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1498
    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1455
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1456
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1457
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 1458
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result p0

    iput p0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1678
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1682
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2202
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2209
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    :cond_1
    return v0
.end method

.method pageLeft()Z
    .locals 2

    .line 2921
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2922
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method pageRight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method populate()V
    .locals 1

    .line 1102
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 1

    .line 1107
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_0

    .line 1108
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1109
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 1113
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1536
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1539
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 527
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 554
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 558
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;

    move-object v4, p0

    check-cast v4, Lmiuix/viewpager/widget/ViewPager;

    invoke-interface {v3, v4, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiuix/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 621
    iget-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 632
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 0

    const/4 p1, 0x0

    .line 645
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 863
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 864
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 865
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 878
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 879
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 881
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 882
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 884
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 914
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 902
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 903
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 904
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 905
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 493
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 497
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 498
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 500
    :goto_0
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->enableLayers(Z)V

    .line 502
    :cond_2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 2

    .line 959
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 961
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    .line 978
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    sub-int/2addr p1, p3

    sub-int/2addr p2, v1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 982
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 983
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 984
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 988
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 989
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 1010
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    const/4 p0, 0x0

    .line 1013
    throw p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 919
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
