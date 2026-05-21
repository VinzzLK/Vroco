.class public Lmiuix/popupwidget/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# instance fields
.field protected mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

.field private mAutoDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mListViewMaxHeight:I

.field private mMaxAvailableHeight:I

.field protected mRtlMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    .line 88
    iput p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 132
    iput-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 134
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setupPopupWindow()V

    .line 135
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    invoke-virtual {p1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setLayoutRtlMode(I)V

    return-void
.end method

.method private setupPopupWindow()V
    .locals 4

    .line 168
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 169
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 170
    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iput-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 172
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 175
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 176
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x3

    .line 178
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 179
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V

    .line 180
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V

    .line 186
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 188
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 313
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public getArrowMode()I
    .locals 0

    .line 268
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result p0

    return p0
.end method

.method public getAutoDismiss()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    return p0
.end method

.method public getContentHeight()I
    .locals 0

    .line 429
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 245
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContentWidth()I
    .locals 0

    .line 367
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 161
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0

    .line 584
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 418
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentHeight()I

    move-result p0

    return p0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    .line 196
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 356
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentWidth()I

    move-result p0

    return p0
.end method

.method protected onPrepareWindow()V
    .locals 0

    return-void
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 277
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 2

    .line 466
    iget v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mMaxAvailableHeight:I

    if-ne p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentFrameWrapperBottomPadding()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentFrameWrapperTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 469
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTitleEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getTitleHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 473
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, p0, :cond_2

    move p1, p0

    :cond_2
    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 479
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    .line 404
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 407
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method

.method protected setSuperHeight(I)V
    .locals 0

    .line 452
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method protected setSuperWidth(I)V
    .locals 0

    .line 390
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 337
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    .line 290
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    const p2, 0x800033

    const/4 p3, 0x0

    .line 293
    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 294
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget-boolean p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    .line 295
    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 300
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v0, p0

    move v5, p5

    .line 331
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 332
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method
