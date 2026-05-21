.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field mDamping:F

.field mFrame:I

.field mFrameDelay:I

.field mLastTime:J

.field mOffset:I

.field mVelocity:F

.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V
    .locals 2

    .line 1218
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1212
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrame:I

    const/16 v0, 0xa

    .line 1213
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    const v0, 0x3f733333    # 0.95f

    .line 1215
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    .line 1216
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    .line 1219
    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    .line 1220
    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1254
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_2

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_2

    .line 1255
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    float-to-double v0, v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    float-to-double v2, v2

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrame:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrame:I

    int-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    .line 1256
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1257
    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    sub-long v2, v0, v2

    .line 1258
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v2, v6

    mul-float/2addr v4, v2

    .line 1259
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 1260
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    .line 1261
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    .line 1262
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    mul-int/2addr v2, v0

    if-lez v2, :cond_0

    .line 1263
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v1, v0, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1264
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1266
    :cond_0
    iput-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1267
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1268
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->fling(Landroid/view/View;I)V

    .line 1269
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    .line 1270
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_0

    .line 1274
    :cond_1
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public start()Ljava/lang/Runnable;
    .locals 11

    .line 1224
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1227
    :cond_0
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v2, :cond_8

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v1, :cond_3

    .line 1228
    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    if-lt v1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_8

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v1, v0, :cond_8

    :cond_4
    const/4 v0, 0x0

    .line 1231
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 1233
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    move v4, v1

    :goto_0
    mul-int v5, v1, v4

    if-lez v5, :cond_8

    float-to-double v5, v2

    .line 1235
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    float-to-double v7, v2

    add-int/lit8 v0, v0, 0x1

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v2, v5

    .line 1236
    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    mul-float/2addr v5, v2

    .line 1237
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v7, v6

    if-gez v6, :cond_7

    .line 1238
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_5

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-gt v4, v5, :cond_6

    :cond_5
    if-eq v1, v2, :cond_8

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    if-ge v4, v0, :cond_8

    :cond_6
    return-object v3

    :cond_7
    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    .line 1248
    :cond_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method
