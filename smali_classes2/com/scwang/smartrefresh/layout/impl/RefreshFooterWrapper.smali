.class public Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "RefreshFooterWrapper.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setNoMoreData(Z)Z
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrapperView:Landroid/view/View;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
