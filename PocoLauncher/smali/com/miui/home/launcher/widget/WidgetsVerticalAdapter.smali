.class public Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;
.super Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
.source "WidgetsVerticalAdapter.java"


# instance fields
.field otherLineShortcutConfigActivityInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field pocoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field secondLineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$18Nmd4mDFMMNvOv9RsdYlDDz-vw(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->lambda$onBindViewHolder$0(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->secondLineList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->otherLineShortcutConfigActivityInfoList:Ljava/util/List;

    return-void
.end method

.method private bindSecondViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070743

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 126
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 128
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setItemInfos(Ljava/util/ArrayList;)V

    .line 131
    iget-object p0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private buildShortConfigActivityItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    .line 91
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 92
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    .line 95
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initShortcutConfigActivityInfo()V
    .locals 6

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->getCustomShortcutActivityList(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vroco.launcher"

    const-string v5, "com.miui.home.settings.HomeSettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.miui.home.launcher.shortcuts.WallpaperShortcutActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    .line 63
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->otherLineShortcutConfigActivityInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->secondLineList:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->pocoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 114
    check-cast p1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/IconCache;->getAppUserBadgedIcon(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected buildSecondLineItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->secondLineList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->secondLineList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/16 p0, 0x15

    .line 82
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCustomShortcutActivityList(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 140
    :try_start_0
    const-class v1, Landroid/content/pm/LauncherApps;

    const-string v2, "getShortcutConfigActivityList"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/UserHandle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez p1, :cond_0

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    iget-object v4, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p1, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    .line 152
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 153
    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v8

    const-string v9, "launcherapps"

    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherApps;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v4, v9, v7

    invoke-virtual {v1, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 156
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    if-nez v5, :cond_3

    .line 157
    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_2

    .line 159
    :cond_3
    new-instance v9, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v9, v8}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "WidgetsVerticalAdapter"

    const-string v1, "Error calling new API"

    .line 164
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object p0
.end method

.method public initAllItems()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->initShortcutConfigActivityInfo()V

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->initAllItems()V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->otherLineShortcutConfigActivityInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildShortConfigActivityItems(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->bindSecondViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    .line 111
    instance-of v0, p2, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    :cond_2
    :goto_0
    return-void
.end method
