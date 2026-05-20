.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;I)V
    .locals 0

    .line 2469
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2473
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->val$offset:I

    if-gez v1, :cond_0

    .line 2474
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2477
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 2480
    :cond_1
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1$1;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;)V

    .line 2496
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 2497
    iget-object p0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    :cond_2
    if-nez v0, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    .line 2506
    :cond_3
    iget-boolean p0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$noMoreData:Z

    if-eqz p0, :cond_5

    iget-boolean p0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz p0, :cond_5

    .line 2507
    iget p0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, p0

    if-lt v5, v0, :cond_4

    .line 2508
    sget-object p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v4, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_2

    .line 2510
    :cond_4
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int p0, p0

    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    .line 2513
    :cond_5
    iget-object p0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_3

    .line 2499
    :cond_6
    :goto_1
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 2500
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2501
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2503
    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2504
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    :goto_2
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_8

    .line 2517
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 2519
    :cond_8
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
