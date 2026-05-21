.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;
.super Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;
.source "SystemShortcutMenu.java"


# instance fields
.field private mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Z)V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0706e1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p3, :cond_0

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706e3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setVisibleItemCount(I)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    :goto_0
    return-void
.end method

.method public getItemHeight()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706e1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getMaxShortcutItemCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getMaxVisualHeight()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getShortcutItemLayoutResId()I
    .locals 0

    const p0, 0x7f0d017f

    return p0
.end method

.method public getVisualHeight()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getItemHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initPreInflateViews(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->initPreInflateViews(Landroid/view/LayoutInflater;)V

    const v0, 0x7f0d0085

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 39
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->reset()V

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->reset()V

    return-void
.end method

.method public showPreInflateViews()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->showPreInflateViews()V

    :goto_0
    return-void
.end method
