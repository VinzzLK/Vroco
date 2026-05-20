.class public final Lcom/miui/home/recents/gesture/NavShortcutConfigManager;
.super Ljava/lang/Object;
.source "NavShortcutConfigManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavShortcutConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavShortcutConfigManager.kt\ncom/miui/home/recents/gesture/NavShortcutConfigManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,356:1\n288#2,2:357\n766#2:360\n857#2,2:361\n1549#2:363\n1620#2,3:364\n1549#2:367\n1620#2,3:368\n1743#2,3:371\n1549#2:374\n1620#2,3:375\n1851#2:378\n1549#2:379\n1620#2,3:380\n1852#2:383\n288#2,2:384\n288#2,2:386\n288#2,2:388\n288#2,2:390\n288#2,2:392\n288#2,2:394\n288#2,2:396\n288#2,2:398\n1#3:359\n211#4,2:400\n*S KotlinDebug\n*F\n+ 1 NavShortcutConfigManager.kt\ncom/miui/home/recents/gesture/NavShortcutConfigManager\n*L\n66#1:357,2\n203#1:360\n203#1:361,2\n205#1:363\n205#1:364,3\n219#1:367\n219#1:368,3\n223#1:371,3\n240#1:374\n240#1:375,3\n242#1:378\n243#1:379\n243#1:380,3\n242#1:383\n254#1:384,2\n255#1:386,2\n256#1:388,2\n257#1:390,2\n284#1:392,2\n289#1:394,2\n348#1:396,2\n350#1:398,2\n40#1:400,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

.field private static final LOCK:Ljava/lang/Object;

.field private static curEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/SettingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static gestureConfigItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private static miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;


# direct methods
.method public static synthetic $r8$lambda$5G6kxp8stgi5lOoiZfqJGRXN6JQ()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->scanRegisteredPkgConfig$lambda-3$lambda-2$lambda-1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9kRXKfagZklWlD2aRvl601mdDt0()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->scanRegisteredPkgConfig$lambda-3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-direct {v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    .line 21
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->LOCK:Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-direct {v1}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;-><init>()V

    sput-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    const-string v1, "NavShortcutConfigManager"

    const-string v2, "init scanRegisteredPkgConfig"

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;->initInputUtilInstance()V

    .line 28
    invoke-direct {v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->scanRegisteredPkgConfig()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createEmptyItem(Z)Lcom/miui/home/recents/gesture/SettingItem;
    .locals 3

    .line 211
    new-instance p0, Lcom/miui/home/recents/gesture/SettingItem;

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    const-string v2, "navigation_shortcut_key_none_title"

    .line 211
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/miui/home/recents/gesture/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method

.method private final filterSelectedConfigItem(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 201
    sget-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 203
    invoke-virtual {v4}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result v4

    sget-object v5, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v5, v0}, Lcom/miui/home/recents/gesture/TriggerType;->convertToInt(Ljava/lang/String;)I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    move-object v4, v3

    check-cast v4, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 205
    sget-object v3, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {v4}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v0, v12}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isConfigItemSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf7f

    const/16 v18, 0x0

    invoke-static/range {v4 .. v18}, Lcom/miui/home/recents/gesture/ConfigItem;->copy$default(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miui/home/recents/gesture/ConfigItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add entryType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filteredAndMappedItems configItemList: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$filterSelectedConfigItem$1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$filterSelectedConfigItem$1;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NavShortcutConfigManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private final getResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    const/4 p0, 0x0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x80

    .line 78
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResource failed! pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavShortcutConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private final initCircleToSearchSettingsByHistory(Lcom/miui/home/recents/gesture/ConfigItem;)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 166
    sget-object v0, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/gesture/TriggerType;->convertToString(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isCircleToSearchSwitchEnabledInOldVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launch_google_search"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    .line 165
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private final isConfigItemSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->readSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isItemSelected triggerType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entityType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , settingsEntityType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavShortcutConfigManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "VoiceAssistant"

    .line 64
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    const-string v0, "VoiceAssistantScreenRecognizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 69
    :cond_1
    sget-boolean p0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_2

    const-string p0, "global"

    goto :goto_0

    :cond_2
    const-string p0, "cn"

    .line 70
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->getDefaultSelectedAppConfig()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    if-eqz v5, :cond_3

    move-object v1, v4

    :cond_5
    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    return v2

    :cond_7
    :goto_3
    const/4 v0, 0x6

    .line 65
    invoke-direct {p0, v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->loadVoiceAssistantEntity(I)Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 66
    sget-object v5, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v5, p1}, Lcom/miui/home/recents/gesture/TriggerType;->convertToInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result v6

    if-ne v5, v6, :cond_9

    invoke-virtual {v4}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    if-eqz v4, :cond_8

    move-object v1, v0

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    :goto_5
    return v2
.end method

.method private final isEntityTypeMatched(Ljava/lang/String;Lcom/miui/home/recents/gesture/ConfigItem;)Z
    .locals 2

    .line 157
    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_google_search"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->initCircleToSearchSettingsByHistory(Lcom/miui/home/recents/gesture/ConfigItem;)V

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->hasCircleToSearchFeature(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 161
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isRegionSupported(Lcom/miui/home/recents/gesture/ConfigItem;)Z
    .locals 3

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getRegionType()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4a16fc5d

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc6b

    if-eq v1, v2, :cond_1

    const v2, 0x179a1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_1
    const-string v1, "cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    sget-boolean p0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_5

    goto :goto_1

    :cond_3
    const-string p1, "global"

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 151
    :cond_4
    sget-boolean p1, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v0

    :cond_6
    :goto_1
    return p1
.end method

.method private final isUseInputWriteSettings(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "long_press_menu_key"

    .line 194
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "long_press_home_key"

    .line 195
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "long_press_back_key"

    .line 196
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final loadAppConfigToList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEntityConfigToList: pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", appType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NavShortcutConfigManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->getResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v5, "entity_config"

    const-string v6, "xml"

    .line 93
    invoke-virtual {v3, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 95
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const-string v3, "res.getXml(resId)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 99
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "entity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    new-instance v3, Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfff

    const/16 v19, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v19}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "entityType"

    const/4 v6, 0x0

    .line 101
    invoke-interface {v1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "parser.getAttributeValue\u2026ull, CFG_ENTITY_TYPE_TAG)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->entityType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    .line 102
    sget-object v7, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    const-string v8, "triggerType"

    invoke-interface {v1, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "parser.getAttributeValue\u2026ll, CFG_TRIGGER_TYPE_TAG)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/miui/home/recents/gesture/TriggerType;->convertToInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->triggerType(I)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const-string v7, "title"

    .line 103
    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "parser.getAttributeValue(null, CFG_TITLE_TAG)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->title(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const-string v7, "functionType"

    .line 104
    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const-string v7, "functionName"

    .line 105
    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const-string v7, "regionType"

    .line 106
    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->regionType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const-string v7, "launchType"

    .line 107
    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->launchType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 108
    invoke-virtual {v5, v7}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->isSelected(Z)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    .line 110
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 111
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "launchParams"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "packageName"

    .line 112
    invoke-interface {v1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->packageName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    const-string v5, "className"

    .line 113
    invoke-interface {v1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->clazzName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    const-string v5, "actionName"

    .line 114
    invoke-interface {v1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->actionName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    const-string v5, "methodName"

    .line 115
    invoke-interface {v1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->methodName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;

    .line 117
    :cond_2
    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->build()Lcom/miui/home/recents/gesture/ConfigItem;

    move-result-object v3

    .line 118
    invoke-direct {v0, v3}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isRegionSupported(Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {v0, v2, v3}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isEntityTypeMatched(Ljava/lang/String;Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    sget-object v5, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEntityConfigToList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEntityConfigToList error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private final loadVoiceAssistantEntity(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;"
        }
    .end annotation

    const-string p0, "NavShortcutConfigManager"

    .line 304
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "entity_config_key_voice_assistant"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVoiceAssistantEntity triggerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configStr: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,entity: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->asConfigItemList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadVoiceAssistantEntity exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final mapHomePkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 267
    invoke-static {}, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->getSystemHomePackageNameList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p0, "{\n             Applicati\u2026e().packageName\n        }"

    .line 267
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private final parseTextWithResName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->getResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "string"

    .line 139
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTextWithResName failed, identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pkgName: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", err: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavShortcutConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private final readSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "none"

    :goto_0
    return-object p0
.end method

.method private final scanRegisteredPkgConfig()V
    .locals 0

    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$$ExternalSyntheticLambda1;

    .line 37
    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final scanRegisteredPkgConfig$lambda-3()V
    .locals 5

    .line 38
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 40
    invoke-static {}, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->getConfigAppWhiteList()Ljava/util/Map;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    sget-object v3, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->loadAppConfigToList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final scanRegisteredPkgConfig$lambda-3$lambda-2$lambda-1()V
    .locals 2

    const-string v0, "NavShortcutConfigManager"

    const-string v1, "GESTURE_EXECUTOR Thread checkDoubleClickTriggerApp"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->checkDoubleClickTriggerApp()V

    :cond_0
    return-void
.end method

.method private final transferToSettingEntry(Ljava/lang/String;Ljava/util/List;)Lcom/miui/home/recents/gesture/SettingEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;)",
            "Lcom/miui/home/recents/gesture/SettingEntry;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferToSettingEntry configItemList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$transferToSettingEntry$1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$transferToSettingEntry$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " storeKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavShortcutConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 220
    new-instance v2, Lcom/miui/home/recents/gesture/SettingItem;

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected()Z

    move-result v5

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/miui/home/recents/gesture/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 1743
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1744
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/gesture/SettingItem;

    .line 223
    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 224
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    xor-int/lit8 v0, v1, 0x1

    .line 225
    invoke-direct {p0, v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->createEmptyItem(Z)Lcom/miui/home/recents/gesture/SettingItem;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    new-instance p0, Lcom/miui/home/recents/gesture/SettingEntry;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance().packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/miui/home/recents/gesture/SettingEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private final updateDoubleClickTriggerAppIsNone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    if-eqz p0, :cond_0

    const-string p1, "none"

    .line 338
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->updateIsCanDoubleClickTriggerApp(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final findGestureTargetItem(I)Lcom/miui/home/recents/gesture/ConfigItem;
    .locals 11

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findGestureTargetItem triggerType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , gestureConfigItemList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    sget-object v8, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$findGestureTargetItem$1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$findGestureTargetItem$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavShortcutConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-boolean v0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isSupportNavShortcutUniqueOnNationalBuild()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->loadVoiceAssistantEntity(I)Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 285
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_1

    .line 286
    sget-object v5, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    sget-object v6, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v6, p1}, Lcom/miui/home/recents/gesture/TriggerType;->convertToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isConfigItemSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    move-object v4, v0

    .line 289
    :cond_2
    check-cast v4, Lcom/miui/home/recents/gesture/ConfigItem;

    goto :goto_2

    .line 289
    :cond_3
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->gestureConfigItemList:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findTargetActionConfig actionType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_5

    .line 292
    sget-object v6, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    sget-object v7, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v7, p1}, Lcom/miui/home/recents/gesture/TriggerType;->convertToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isConfigItemSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    move-object v4, v0

    .line 289
    :cond_6
    check-cast v4, Lcom/miui/home/recents/gesture/ConfigItem;

    :goto_2
    return-object v4
.end method

.method public final gatherReportParams()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 346
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->parseSettingEntries(Z)Ljava/util/List;

    move-result-object p0

    .line 347
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/home/recents/gesture/SettingEntry;

    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingEntry;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NavLongPress"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/miui/home/recents/gesture/SettingEntry;

    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/home/recents/gesture/SettingItem;

    .line 348
    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/miui/home/recents/gesture/SettingItem;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingItem;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 349
    :goto_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/home/recents/gesture/SettingEntry;

    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingEntry;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NavDoubleClick"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    check-cast v1, Lcom/miui/home/recents/gesture/SettingEntry;

    if-eqz v1, :cond_9

    .line 350
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/home/recents/gesture/SettingItem;

    .line 350
    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    check-cast v1, Lcom/miui/home/recents/gesture/SettingItem;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_9
    new-instance p0, Lkotlin/Pair;

    sget-object v1, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/gesture/TriggerType;->transferEntityName2EventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/gesture/TriggerType;->transferEntityName2EventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isInputSupportNavShortcutSettings()Z
    .locals 0

    .line 34
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;->isInputSupportNavShortcutSettings()Z

    move-result p0

    return p0
.end method

.method public final isKeyEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "firstEntryId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "secondEntryId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isKeyEqual: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavShortcutConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/recents/gesture/SettingEntry;

    .line 254
    invoke-virtual {v2}, Lcom/miui/home/recents/gesture/SettingEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/miui/home/recents/gesture/SettingEntry;

    .line 255
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/recents/gesture/SettingEntry;

    .line 255
    invoke-virtual {v2}, Lcom/miui/home/recents/gesture/SettingEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    check-cast p1, Lcom/miui/home/recents/gesture/SettingEntry;

    if-eqz v0, :cond_6

    .line 256
    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/miui/home/recents/gesture/SettingItem;

    .line 256
    invoke-virtual {v2}, Lcom/miui/home/recents/gesture/SettingItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    move-object p2, v1

    .line 289
    :goto_2
    check-cast p2, Lcom/miui/home/recents/gesture/SettingItem;

    goto :goto_3

    :cond_6
    move-object p2, v1

    :goto_3
    if-eqz p1, :cond_9

    .line 257
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/home/recents/gesture/SettingItem;

    .line 257
    invoke-virtual {v3}, Lcom/miui/home/recents/gesture/SettingItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v2

    .line 289
    :cond_8
    check-cast v1, Lcom/miui/home/recents/gesture/SettingItem;

    :cond_9
    if-eqz p2, :cond_f

    if-nez v1, :cond_a

    goto :goto_8

    .line 261
    :cond_a
    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p3, "null"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/SettingEntry;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 262
    :goto_5
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 263
    :goto_7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    :goto_8
    const/4 p0, 0x0

    return p0
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 1

    .line 324
    invoke-static {}, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->getConfigAppWhiteList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.miui.voiceassist"

    .line 325
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isSupportNavShortcutUniqueOnNationalBuild()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "NavShortcutConfigManager"

    const-string v0, "clear"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->writeSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object p1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->writeSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->scanRegisteredPkgConfig()V

    :cond_1
    return-void
.end method

.method public final parseSettingEntries(Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/SettingEntry;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseSettingEntries, isFwkSupportNavShortcutSettings = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;->isInputSupportNavShortcutSettings()Z

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isFsgVisible "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavShortcutConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    if-eqz p1, :cond_0

    .line 240
    sget-object p1, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/TriggerType;->gestureLineTypeList()Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/String;

    .line 240
    sget-object v3, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-direct {v3, v2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->filterSelectedConfigItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->transferToSettingEntry(Ljava/lang/String;Ljava/util/List;)Lcom/miui/home/recents/gesture/SettingEntry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    sget-object p1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;->getKeyShortcutSettingEntryList()Ljava/util/List;

    move-result-object v1

    .line 240
    :cond_1
    sput-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/gesture/SettingEntry;

    .line 243
    sget-object v2, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingEntry;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/miui/home/recents/gesture/SettingItem;

    .line 245
    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/SettingItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/SettingEntry;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 246
    :goto_3
    invoke-virtual {v5}, Lcom/miui/home/recents/gesture/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->mapHomePkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v7, v6}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->parseTextWithResName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    :cond_5
    invoke-virtual {v5, v6}, Lcom/miui/home/recents/gesture/SettingItem;->setName(Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "curEntries :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->curEntries:Ljava/util/List;

    return-object p0
.end method

.method public final writeSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "storeKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeSetting storeKey :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , storeValue :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavShortcutConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isUseInputWriteSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->miInputShortcutUtil:Lcom/miui/home/recents/gesture/MiInputShortcutUtil;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/gesture/MiInputShortcutUtil;->writeSettingToInput(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->updateDoubleClickTriggerAppIsNone(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
