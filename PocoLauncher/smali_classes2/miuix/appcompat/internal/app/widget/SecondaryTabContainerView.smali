.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2;
.source "SecondaryTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    }
.end annotation


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I


# virtual methods
.method protected getDefaultTabTextStyle()I
    .locals 0

    .line 204
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryStyle:I

    return p0
.end method

.method protected getTabActivatedTextStyle()I
    .locals 0

    .line 208
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryStyle:I

    return p0
.end method

.method getTabContainerHeight()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 123
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 124
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->onMeasure(II)V

    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method protected setContentHeight(I)V
    .locals 1

    .line 130
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    .line 132
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTabSelected(I)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    return-void
.end method
