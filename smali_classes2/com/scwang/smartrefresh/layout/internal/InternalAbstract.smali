.class public abstract Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.super Landroid/widget/RelativeLayout;
.source "InternalAbstract.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshInternal;


# instance fields
.field protected mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field protected mWrapperView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_4

    .line 78
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 79
    :cond_3
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0

    .line 83
    :cond_4
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public isSupportHorizontalDrag()Z
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHorizontalDrag(FII)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 92
    instance-of p3, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_1

    .line 93
    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    iget p2, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_1
    :goto_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 7

    .line 112
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 113
    move-object v1, p0

    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_0
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 134
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 141
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 148
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
