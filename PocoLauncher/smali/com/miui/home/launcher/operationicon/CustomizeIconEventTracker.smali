.class public final Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;
.super Ljava/lang/Object;
.source "CustomizeIconEventTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomizeIconEventTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomizeIconEventTracker.kt\ncom/miui/home/launcher/operationicon/CustomizeIconEventTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,153:1\n1851#2,2:154\n1851#2,2:157\n1#3:156\n*S KotlinDebug\n*F\n+ 1 CustomizeIconEventTracker.kt\ncom/miui/home/launcher/operationicon/CustomizeIconEventTracker\n*L\n76#1:154,2\n109#1:157,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exposeCheckInterval:I

.field private lastExposeCheckTime:J


# direct methods
.method public static synthetic $r8$lambda$DY-hdvXG7pWR69Z42AKZdFKijtA(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onAppDeepLinkClick$lambda-1(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7kDcp6vy8nHiPZcmyFQHfVsOTw(Ljava/util/List;Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->onLauncherExpose$lambda-3$lambda-2(Ljava/util/List;Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion;

    .line 27
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->exposeCheckInterval:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final buildEventJson(Ljava/lang/String;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)Lorg/json/JSONObject;
    .locals 3

    .line 125
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventName"

    .line 126
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "package_name"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getOperateId()I

    move-result v0

    const-string v2, "operate_id"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getIconId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const-string v2, "icon_style_id"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getDelayDeepLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const-string v0, "delay_deeplink"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "return_result"

    .line 132
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "is_first_open"

    .line 133
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 p2, 0xb4

    const-string p3, "icon_expose_interval"

    .line 134
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {p4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getEx()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ex"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ref"

    const-string p3, "miui_desktop"

    .line 136
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "eventParams"

    .line 127
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method private final buildEventList(Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/CustomIconParams;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1851
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    .line 110
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->buildEventJson(Ljava/lang/String;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private final checkIconExposeTime(JLcom/miui/home/launcher/operationicon/CustomIconParams;)Z
    .locals 2

    .line 116
    invoke-virtual {p3}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->getLastExposeTimestamp()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/16 p0, 0x3e8

    int-to-long v0, p0

    div-long/2addr p1, v0

    const-wide/16 v0, 0xb4

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getCurrentVisibleShortcuts(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method private final getExposeIcons(Lcom/miui/home/launcher/Launcher;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "J)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/CustomIconParams;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->getCurrentVisibleShortcuts(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object p1

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/IShortcutIcon;

    .line 77
    invoke-interface {v1}, Lcom/miui/home/launcher/DesktopIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->INSTANCE:Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/operationicon/MarketCustomizeIconManager;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkValid()Z

    move-result v2

    invoke-direct {p0, p2, p3, v1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->checkIconExposeTime(JLcom/miui/home/launcher/operationicon/CustomIconParams;)Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1, p2, p3}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setLastExposeTimestamp(J)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static final onAppDeepLinkClick$lambda-1(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iconInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p3, "click"

    .line 39
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->buildEventList(Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->sendMarketService(Ljava/lang/String;)V

    return-void
.end method

.method private static final onLauncherExpose$lambda-3$lambda-2(Ljava/util/List;Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;)V
    .locals 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherExpose exposeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationIconEventTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "expose"

    const/4 v1, 0x0

    .line 60
    invoke-direct {p1, v0, v1, v1, p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->buildEventList(Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->sendMarketService(Ljava/lang/String;)V

    return-void
.end method

.method private final sendMarketService(Ljava/lang/String;)V
    .locals 1

    .line 142
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.trace_event"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.xiaomi.market"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.event_list"

    .line 144
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMarketService error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OperationIconEventTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final onAppDeepLinkClick(Lcom/miui/home/launcher/operationicon/CustomIconParams;ZZ)V
    .locals 1

    const-string v0, "iconInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->lastExposeCheckTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->exposeCheckInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->getExposeIcons(Lcom/miui/home/launcher/Launcher;J)Ljava/util/List;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/16 v2, 0x1388

    .line 56
    iput v2, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->exposeCheckInterval:I

    .line 57
    new-instance v2, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;)V

    invoke-static {v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 71
    :cond_1
    iput-wide v0, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->lastExposeCheckTime:J

    return-void
.end method
