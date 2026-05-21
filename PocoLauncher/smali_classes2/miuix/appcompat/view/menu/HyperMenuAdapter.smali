.class public Lmiuix/appcompat/view/menu/HyperMenuAdapter;
.super Lmiuix/appcompat/view/menu/HyperBaseAdapter;
.source "HyperMenuAdapter.java"


# instance fields
.field private mGroupedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverflowOnly:Z

.field private mPrimaryItemCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSecondaryMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    .line 44
    iput-boolean p3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz p2, :cond_0

    .line 47
    invoke-direct {p0, p2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method

.method private assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 134
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 135
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 136
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 137
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    const-string v5, "miuix:hyperMenu:groupId"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "miuix:hyperMenu:itemForeignKey"

    .line 141
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    .line 144
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :cond_1
    new-instance v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v6, v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 153
    iput v3, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    goto :goto_2

    .line 156
    :cond_2
    iput-boolean p0, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 157
    iput v4, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    .line 159
    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 75
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 77
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 78
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v5, "miuix:hyperMenu:groupForeignKey"

    .line 81
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_1

    goto :goto_3

    .line 88
    :cond_1
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 90
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-direct {p0, v5, v0, v2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    .line 97
    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-direct {v2, v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 98
    iput-boolean v4, v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    .line 99
    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    new-instance v2, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v2, v4, v5, v6}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    .line 103
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 262
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 263
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 265
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    :cond_1
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    .line 275
    new-instance v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v6, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 276
    iput-boolean v5, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 277
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v5, :cond_2

    .line 281
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    instance-of v4, v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_2

    .line 282
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 283
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 287
    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v4, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    const/4 v5, 0x1

    .line 288
    iput-boolean v5, v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    .line 289
    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 291
    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 292
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v5, v6, v3, v7}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto/16 :goto_4

    .line 302
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 307
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    move v5, v3

    .line 313
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 314
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_3

    .line 317
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v5

    .line 319
    :cond_3
    new-instance v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v7, v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    if-eqz v6, :cond_4

    .line 321
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    if-eqz v8, :cond_6

    .line 323
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 324
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_3

    :cond_5
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_3
    iput-object v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    .line 325
    invoke-virtual {v7}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v8

    invoke-virtual {v6, v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 327
    :cond_6
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 329
    :cond_7
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_8
    :goto_4
    return-object v0
.end method

.method private buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->selectPrimaryMenu(Ljava/util/Map;)V

    if-eqz p1, :cond_3

    .line 69
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 185
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 188
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 193
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 196
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    const/4 p1, 0x0

    .line 199
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 200
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 201
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 203
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 206
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method private findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;I)",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 166
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p0, v0, :cond_3

    .line 167
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 169
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :cond_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const-string v3, "miuix:hyperMenu:itemForeignKey"

    .line 174
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_2

    if-ne v1, p2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private handleDefaultCheckedStatus(Ljava/util/List;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 219
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Boolean;

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    move v6, v1

    .line 226
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 227
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 229
    instance-of v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v8, :cond_4

    .line 230
    invoke-virtual {v7}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_5

    .line 232
    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v0

    goto :goto_5

    :cond_5
    move v9, v1

    :goto_5
    if-eqz v9, :cond_b

    if-eqz p2, :cond_8

    .line 236
    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    .line 237
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v8

    .line 238
    :goto_6
    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 240
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_7

    :cond_7
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_7
    iput-object v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_9

    :cond_8
    if-eqz v2, :cond_c

    if-eqz v5, :cond_9

    .line 244
    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v6

    .line 246
    :cond_9
    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 247
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_8

    :cond_a
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_8
    iput-object v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_9

    :cond_b
    if-eqz p2, :cond_c

    .line 251
    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_d
    if-eqz v2, :cond_e

    .line 256
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_a
    return-void
.end method

.method private selectPrimaryMenu(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;)V"
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 113
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 117
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 118
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v3, v2

    :cond_2
    if-eqz v3, :cond_0

    .line 121
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 123
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v2, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    return-void
.end method


# virtual methods
.method public copyPrimaryCheckedData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 435
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 440
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public copySecondaryCheckedData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 450
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 457
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    .line 458
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Boolean;

    .line 459
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .locals 0

    .line 472
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    return-object p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 0

    .line 467
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 478
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getSecondaryAdapterByItemId(J)Landroid/widget/BaseAdapter;
    .locals 0

    .line 482
    iget-object p0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method public preCheckPrimaryItem(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 406
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 408
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public preCheckSecondaryItem(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 420
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 422
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resumePrimaryItemClickStatus(II)V
    .locals 10

    .line 335
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 340
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 341
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 342
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_3

    return-void

    .line 351
    :cond_3
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 355
    :cond_4
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 358
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    const-string v4, "miuix:hyperMenu:groupId"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 360
    :cond_5
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 362
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, -0x1

    move v4, v0

    move v5, v2

    .line 365
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_c

    .line 366
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 367
    instance-of v8, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v8, :cond_6

    .line 370
    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    goto :goto_4

    :cond_6
    move-object v6, v3

    :goto_4
    if-eqz v6, :cond_7

    .line 374
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v8

    .line 375
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v9

    if-ne v9, p1, :cond_8

    move v5, v4

    goto :goto_5

    :cond_7
    move-object v8, v3

    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    .line 378
    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    move v7, v0

    :goto_6
    if-eqz v7, :cond_b

    .line 381
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v7

    if-ne v7, p1, :cond_a

    .line 382
    sget-object v7, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_7

    :cond_a
    sget-object v7, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_7
    iput-object v7, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    .line 383
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v6

    invoke-virtual {v8, v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    if-eq v5, v2, :cond_e

    sub-int p1, p2, v5

    .line 389
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v5

    sub-int/2addr p2, v7

    move v1, p1

    :goto_8
    if-lt v1, p1, :cond_e

    if-gt v1, p2, :cond_e

    .line 392
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int v4, p1, v5

    if-ne v1, v4, :cond_d

    move v4, v7

    goto :goto_9

    :cond_d
    move v4, v0

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 395
    :cond_e
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_f
    :goto_a
    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 506
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 510
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
