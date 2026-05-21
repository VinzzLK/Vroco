.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$noMoreData:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V
    .locals 0

    .line 2446
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$success:Z

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$noMoreData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2449
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_5

    .line 2450
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 2451
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$success:Z

    invoke-interface {v1, v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v0

    .line 2452
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_0

    .line 2453
    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$success:Z

    invoke-interface {v2, v1, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V

    :cond_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_6

    .line 2457
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$noMoreData:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v4, :cond_1

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2458
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v3, :cond_2

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v4, v1

    .line 2460
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_3

    .line 2461
    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2462
    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 2463
    iput-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 2464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2465
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v9, 0x0

    iget v10, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v13, v4

    add-float/2addr v5, v13

    iget v6, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v11, v5, v6

    const/4 v12, 0x0

    move-wide v5, v1

    move-wide v7, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2466
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v9, 0x2

    iget v10, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    add-float v11, v5, v13

    move-wide v5, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2469
    :cond_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;

    invoke-direct {v2, p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;I)V

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez p0, :cond_4

    int-to-long v3, v0

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2525
    :cond_5
    iget-boolean p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$noMoreData:Z

    if-eqz p0, :cond_6

    .line 2526
    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_6
    :goto_3
    return-void
.end method
