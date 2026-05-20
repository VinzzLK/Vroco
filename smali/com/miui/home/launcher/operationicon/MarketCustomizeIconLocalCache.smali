.class public final Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;
.super Ljava/lang/Object;
.source "MarketCustomizeIconLocalCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarketCustomizeIconLocalCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketCustomizeIconLocalCache.kt\ncom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,93:1\n1851#2,2:94\n1851#2,2:96\n211#3,2:98\n211#3,2:100\n*S KotlinDebug\n*F\n+ 1 MarketCustomizeIconLocalCache.kt\ncom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache\n*L\n24#1:94,2\n49#1:96,2\n74#1:98,2\n87#1:100,2\n*E\n"
.end annotation


# instance fields
.field private init:Z

.field private final sharePreference:Landroid/content/SharedPreferences;

.field private final validDeppLinkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/operationicon/CustomIconParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "market_customize_icon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getInstance().getSharedP\u2026ontext.MODE_PRIVATE\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->sharePreference:Landroid/content/SharedPreferences;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    return-void
.end method

.method private final declared-synchronized ensureInit()V
    .locals 5

    monitor-enter p0

    .line 20
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 21
    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->sharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    sget-object v2, Lcom/miui/home/launcher/operationicon/CustomIconParams;->Companion:Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;->createFromJSON(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v3, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "item.key"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->init:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final updateDeeplinkStatus(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 4

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->createLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string v1, "getInstance().packageMan\u2026tentActivities(intent, 0)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 50
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 51
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v3, :cond_0

    .line 52
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDeeplinkAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    return-object p0
.end method

.method public final getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/CustomIconParams;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    .line 211
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final registerCustomizeIcon(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->ensureInit()V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->save(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V

    .line 42
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->updateDeeplinkStatus(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final save(Lcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->sharePreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveToLocal()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->sharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconLocalCache;->validDeppLinkMap:Ljava/util/Map;

    .line 211
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    .line 88
    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
