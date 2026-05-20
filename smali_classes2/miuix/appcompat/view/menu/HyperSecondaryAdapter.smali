.class public Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;
.super Lmiuix/appcompat/view/menu/HyperBaseAdapter;
.source "HyperSecondaryAdapter.java"


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private mSecondaryItemCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 24
    iput-object p3, p0, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    .line 31
    sget p1, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 32
    iput-object p2, p0, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->mHeaderView:Landroid/view/View;

    :cond_0
    return-object p2
.end method

.method public resumeSecondaryItemClickStatus(I)V
    .locals 10

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto/16 :goto_5

    .line 43
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v0

    .line 45
    iget-object v3, p0, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 48
    iget-object v3, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/Boolean;

    :cond_1
    move v4, v2

    .line 51
    :goto_0
    iget-object v5, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 52
    iget-object v5, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 53
    instance-of v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 56
    check-cast v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_3

    .line 60
    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v7

    :cond_3
    const/4 v6, 0x1

    if-eqz v7, :cond_4

    .line 63
    invoke-virtual {v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    if-nez v8, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v2

    :goto_2
    if-eqz v8, :cond_7

    if-lt v4, v1, :cond_7

    add-int/lit8 v8, v4, -0x2

    .line 66
    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v9

    if-ne v9, p1, :cond_5

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v8

    .line 67
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 68
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_4

    :cond_6
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_4
    iput-object v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    .line 69
    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v5

    invoke-virtual {v7, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_5
    return-void
.end method
