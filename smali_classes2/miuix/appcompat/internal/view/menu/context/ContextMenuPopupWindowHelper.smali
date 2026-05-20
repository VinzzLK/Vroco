.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorParent:Landroid/view/ViewGroup;

.field private mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPoint:[F

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    .line 23
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    :cond_0
    return-void
.end method

.method public getContextMenuPopupWindow()Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;
    .locals 1

    .line 50
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDismiss()V
    .locals 3

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 61
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearAll()V

    return-void
.end method

.method public refreshContextMenuPopupWindow()V
    .locals 5

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchorParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    const/4 v3, 0x0

    aget v3, p0, v3

    const/4 v4, 0x1

    aget p0, p0, v4

    invoke-interface {v0, v1, v2, v3, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->updatePopupWindow(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    :cond_0
    return-void
.end method

.method public setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;Landroid/view/View;FF)V
    .locals 6

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->show(Landroid/os/IBinder;Landroid/view/View;FFLandroid/view/View;)V

    return-void
.end method

.method public show(Landroid/os/IBinder;Landroid/view/View;FFLandroid/view/View;)V
    .locals 2

    .line 31
    new-instance p1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {p1, v0, v1, p0, p5}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 32
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchorParent:Landroid/view/ViewGroup;

    .line 34
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    const/4 p5, 0x0

    aput p3, p2, p5

    const/4 p3, 0x1

    .line 35
    aput p4, p2, p3

    .line 36
    iget-object p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    aget p5, p2, p5

    aget p2, p2, p3

    invoke-interface {p4, p0, p1, p5, p2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    return-void
.end method
