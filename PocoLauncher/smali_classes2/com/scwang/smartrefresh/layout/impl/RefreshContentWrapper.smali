.class public Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;
.super Ljava/lang/Object;
.source "RefreshContentWrapper.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshContent;
.implements Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

.field protected mContentView:Landroid/view/View;

.field protected mEnableLoadMore:Z

.field protected mEnableRefresh:Z

.field protected mFixedFooter:Landroid/view/View;

.field protected mFixedHeader:Landroid/view/View;

.field protected mLastSpinner:I

.field protected mRealContentView:Landroid/view/View;

.field protected mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableRefresh:Z

    .line 52
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    .line 54
    new-instance v0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    invoke-direct {v0}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    .line 57
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mRealContentView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->canLoadMore(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRefresh()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->canRefresh(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected findScrollableView(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 64
    instance-of v2, v1, Landroidx/core/view/NestedScrollingParent;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroidx/core/view/NestedScrollingChild;

    if-nez v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 76
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 71
    invoke-static {p1, p2, p0}, Lcom/scwang/smartrefresh/layout/util/DesignUtil;->checkCoordinatorLayout(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method protected findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 106
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 107
    check-cast p1, Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 109
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 112
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 115
    invoke-virtual {p0, v2, p2, p3}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 116
    iget p0, v1, Landroid/graphics/PointF;->x:F

    neg-float p0, p0

    iget p1, v1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method protected findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;
    .locals 4

    .line 88
    new-instance p0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 90
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    if-eq v1, p1, :cond_2

    .line 92
    :cond_1
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 94
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 95
    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 96
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getScrollableView()Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public moveSpinner(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mRealContentView:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 141
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 145
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 163
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 164
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 165
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    .line 167
    invoke-virtual {p0, v1, v0, p1}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 172
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    goto :goto_0

    .line 174
    :cond_1
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Landroid/widget/AbsListView;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->scrollListBy(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    iget v2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :catchall_0
    :goto_0
    iput p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    return-void
.end method

.method public scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    .line 246
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollDown(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    :cond_1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mEnableLoadMoreWhenContentNotFull:Z

    return-void
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V
    .locals 1

    .line 230
    instance-of v0, p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    goto :goto_0

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->boundary:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    :goto_0
    return-void
.end method

.method public setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableView(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 189
    :cond_0
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    .line 190
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    .line 191
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 195
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 198
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 202
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    new-instance v4, Landroidx/legacy/widget/Space;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 208
    invoke-virtual {p3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 209
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 210
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 212
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-static {p3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    new-instance v3, Landroidx/legacy/widget/Space;

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x50

    .line 216
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    invoke-virtual {v0, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
