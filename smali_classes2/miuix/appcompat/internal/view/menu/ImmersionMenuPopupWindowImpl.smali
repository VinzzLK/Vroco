.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

.field private mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

.field private mAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object p3

    .line 31
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 32
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, p3, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    return-object p0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getLastAnchor()Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method public getLastParent()Landroid/view/ViewGroup;
    .locals 0

    .line 77
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public show(Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    .line 69
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    .line 63
    invoke-super {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
