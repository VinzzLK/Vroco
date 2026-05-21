.class public Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;
.super Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;
.source "WidgetShortcutMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 4
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

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0706a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 33
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    return-void
.end method

.method public getItemHeight()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result p0

    return p0
.end method

.method public getMaxVisualHeight()I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxVisualHeight()I

    move-result p0

    return p0
.end method

.method public setBg()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f0806d6

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setItemBg(II)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    :goto_0
    return-void
.end method
