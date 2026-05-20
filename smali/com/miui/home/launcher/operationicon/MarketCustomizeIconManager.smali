.class public final Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;
.super Ljava/lang/Object;
.source "MarketCustomizeIconManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarketCustomizeIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketCustomizeIconManager.kt\ncom/miui/home/launcher/operationicon/MarketCustomizeIconManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n13543#2,2:126\n211#3,2:128\n211#3,2:132\n1851#4,2:130\n1851#4,2:134\n*S KotlinDebug\n*F\n+ 1 MarketCustomizeIconManager.kt\ncom/miui/home/launcher/operationicon/MarketCustomizeIconManager\n*L\n34#1:126,2\n83#1:128,2\n106#1:132,2\n85#1:130,2\n115#1:134,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;

.field private static lastRefreshTime:J

.field private static final localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;


# direct methods
.method public static synthetic $r8$lambda$okGGNcpWViq7KK594p5NCFKNLA4()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->onLauncherResume$lambda-2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;

    .line 21
    new-instance v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLaunchDpIntent(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/content/Intent;
    .locals 4

    const-string v0, "launchInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launchInfo.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 61
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->createLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkValid()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkLaunched()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result p0

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, p0, v2}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->onDeepLinkLaunched(Lcom/miui/home/launcher/operationicon/CustomIconParams;ZZ)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method private final getPackageIconsUpdateMap(Lcom/miui/home/launcher/LauncherModel;Ljava/util/Set;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/LauncherModel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "allAppsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 116
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "appInfo.getUser()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "map[appInfo.getUser()] ?\u2026his\n                    }"

    .line 117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static final isCustomizeIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const-string v0, "drawable.javaClass.interfaces"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13543
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 35
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "miui.content.res.ICustomizeIcon"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final onDeepLinkLaunched(Lcom/miui/home/launcher/operationicon/CustomIconParams;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDeeplinkLaunched(Z)V

    .line 75
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->save(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V

    .line 76
    sget-object v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onAppDeepLinkClick(Lcom/miui/home/launcher/operationicon/CustomIconParams;ZZ)V

    return-void
.end method

.method public static final onLauncherResume()V
    .locals 4

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const v2, 0x493e0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 49
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager$$ExternalSyntheticLambda0;

    .line 50
    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->lastRefreshTime:J

    :cond_1
    return-void
.end method

.method private static final onLauncherResume$lambda-2()V
    .locals 1

    .line 50
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->refreshCustomizeIcon()V

    return-void
.end method

.method private final refresh(Lcom/miui/home/launcher/LauncherModel;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/LauncherModel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->getPackageIconsUpdateMap(Lcom/miui/home/launcher/LauncherModel;Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object p0

    .line 211
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    .line 107
    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final refreshCustomizeIcon()V
    .locals 8

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 82
    sget-object v1, Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;->getCurrentValidCustomizeIconIDs()Ljava/util/Map;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 85
    sget-object v3, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {v3}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->getAll()Ljava/util/List;

    move-result-object v3

    .line 1851
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    .line 86
    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v2, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->remove(Ljava/lang/String;)V

    move v2, v5

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 95
    sget-object v1, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->saveToLocal()V

    .line 97
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_4

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.CUSTOMIZED_ICON_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    const-string v2, "getInstance().model"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->refresh(Lcom/miui/home/launcher/LauncherModel;Ljava/util/Set;)V

    :cond_4
    return-void
.end method

.method public static final registerCustomizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeReflectHelper;->getCustomizeParamsFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/os/Bundle;

    move-result-object p0

    .line 27
    sget-object v0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->Companion:Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;->createFromBundle(Landroid/os/Bundle;)Lcom/miui/home/launcher/operationicon/CustomIconParams;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->registerCustomizeIcon(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->localCache:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;

    move-result-object p0

    return-object p0
.end method
