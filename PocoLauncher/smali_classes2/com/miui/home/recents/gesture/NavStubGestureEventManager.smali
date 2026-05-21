.class public final Lcom/miui/home/recents/gesture/NavStubGestureEventManager;
.super Ljava/lang/Object;
.source "NavStubGestureEventManager.kt"

# interfaces
.implements Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/gesture/NavStubGestureEventManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavStubGestureEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavStubGestureEventManager.kt\ncom/miui/home/recents/gesture/NavStubGestureEventManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,343:1\n1851#2,2:344\n*S KotlinDebug\n*F\n+ 1 NavStubGestureEventManager.kt\ncom/miui/home/recents/gesture/NavStubGestureEventManager\n*L\n133#1:344,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/gesture/NavStubGestureEventManager$Companion;


# instance fields
.field private entityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private isCanDoubleClickTriggerApp:Z

.field private isGestureLineVisible:Z

.field private isVoiceAssistantConfigObserverRegistered:Z

.field private final launchActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KFunction<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private systemUiStateFlag:I

.field private voiceAssistantConfigObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->Companion:Lcom/miui/home/recents/gesture/NavStubGestureEventManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->systemUiStateFlag:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->entityList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    .line 36
    new-instance v1, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$1;-><init>(Ljava/lang/Object;)V

    const-string v2, "Service"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$2;-><init>(Ljava/lang/Object;)V

    const-string v2, "Intent"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$3;-><init>(Ljava/lang/Object;)V

    const-string v2, "Broadcast"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$4;-><init>(Ljava/lang/Object;)V

    const-string v2, "Invoke"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchActionMap:Ljava/util/Map;

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->checkDoubleClickTriggerApp()V

    .line 47
    new-instance v0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$1;-><init>(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;)V

    iput-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->voiceAssistantConfigObserver:Landroid/database/ContentObserver;

    .line 54
    invoke-direct {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->registerVoiceAssistantConfigObserver()V

    return-void
.end method

.method public static final synthetic access$launchBroadcast(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchBroadcast(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$launchIntent(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$launchInvoke(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchInvoke(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$launchService(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchService(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    return-void
.end method

.method private final analyticOnTriggeredEvent(ILcom/miui/home/recents/gesture/ConfigItem;)V
    .locals 0

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 144
    :goto_0
    sget-object p1, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {p2}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/gesture/TriggerType;->transferEntityName2EventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendNavTriggeredEvent(ZLjava/lang/String;)V

    return-void
.end method

.method private final appendAdditionalParams(Landroid/content/Intent;Ljava/lang/String;Lcom/miui/home/recents/gesture/ConfigItem;)V
    .locals 2

    const-string v0, "triggerType"

    .line 227
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "triggerFrom"

    const-string v1, "MiuiHome"

    .line 228
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p3}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceAssistant"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceAssistantScreenRecognizer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->getTriggerTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "voice_assist_start_from_key"

    .line 232
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->setFunctionTypeExtra(Lcom/miui/home/recents/gesture/ConfigItem;Landroid/content/Intent;)V

    return-void
.end method

.method private final buildIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getClazzName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(configItem.action\u2026tem.clazzName!!\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v0, p2, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->appendAdditionalParams(Landroid/content/Intent;Ljava/lang/String;Lcom/miui/home/recents/gesture/ConfigItem;)V

    return-object v0
.end method

.method private final doAction(I)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->findGestureTargetConfig(I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->doActionInternal(I)V

    return-void
.end method

.method private final doActionInternal(I)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->entityList:Ljava/util/ArrayList;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 134
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->analyticOnTriggeredEvent(ILcom/miui/home/recents/gesture/ConfigItem;)V

    .line 135
    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getTriggerType()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->launchActionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/home/recents/gesture/ConfigItem;->getLaunchType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KFunction;

    if-eqz v2, :cond_0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    sget-object v3, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/gesture/TriggerType;->convertToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final findGestureTargetConfig(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->entityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->findGestureTargetItem(I)Lcom/miui/home/recents/gesture/ConfigItem;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEntityConfig findTargetActionConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->entityList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final getTriggerTypeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "NavLongPress"

    .line 241
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "long_press_fullscreen_gesture_line"

    goto :goto_0

    :cond_0
    const-string p0, "NavDoubleClick"

    .line 243
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "double_click_fullscreen_gesture_line"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final handleDoubleClickEvent()V
    .locals 1

    const/4 v0, 0x4

    .line 113
    invoke-direct {p0, v0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->doAction(I)V

    return-void
.end method

.method private final handleLongPressEvent()V
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-direct {p0, v0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->doAction(I)V

    return-void
.end method

.method private final isSupportAppType(Lcom/miui/home/recents/gesture/ConfigItem;)Z
    .locals 2

    .line 275
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceAssistant"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceAssistantScreenRecognizer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "launch_google_search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->systemUiStateFlag:I

    invoke-static {p1, p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isSupportInvokeCircleToSearch(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 277
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportVoiceAssistant()Z

    move-result p0

    return p0
.end method

.method private final launchBroadcast(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchBroadcast:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportAppType(Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->buildIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchService failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final launchIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchIntent:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportAppType(Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->buildIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchService failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final launchInvoke(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchInvoke:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportAppType(Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "launch_google_search"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performClickNavBarTypePreference(Landroid/view/View;)V

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->systemUiStateFlag:I

    invoke-static {p1, p0, v2}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->invokeCircleToSearch(Landroid/content/Context;II)Z

    return-void

    .line 202
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getClazzName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 203
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v0, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    aput-object v3, v0, v4

    sget-object v3, Lcom/miui/home/recents/gesture/TriggerType;->INSTANCE:Lcom/miui/home/recents/gesture/TriggerType;

    invoke-virtual {v3, p2}, Lcom/miui/home/recents/gesture/TriggerType;->convertToInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const/4 p2, 0x2

    const-string v2, "MiuiHome"

    aput-object v2, v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchInvoke failed! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final launchService(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchService:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportAppType(Lcom/miui/home/recents/gesture/ConfigItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->buildIntent(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchService failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final registerVoiceAssistantConfigObserver()V
    .locals 4

    .line 72
    iget-boolean v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isVoiceAssistantConfigObserverRegistered:Z

    if-nez v0, :cond_0

    const-string v0, "NavStubGestureEventManager"

    const-string v1, "registerVoiceAssistantConfigObserver"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "entity_config_key_voice_assistant"

    .line 74
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->voiceAssistantConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isVoiceAssistantConfigObserverRegistered:Z

    :cond_0
    return-void
.end method

.method private final setFunctionTypeExtra(Lcom/miui/home/recents/gesture/ConfigItem;Landroid/content/Intent;)V
    .locals 6

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getFunctionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->splitString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->splitString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 252
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    if-ge v2, p1, :cond_2

    if-ge v2, v1, :cond_2

    .line 256
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final splitString(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 265
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "|"

    .line 267
    invoke-static {p1, v2, p0, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 268
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final checkDoubleClickTriggerApp()V
    .locals 2

    .line 61
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->findGestureTargetItem(I)Lcom/miui/home/recents/gesture/ConfigItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/ConfigItem;->getEntityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isCanDoubleClickTriggerApp:Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDoubleClickTriggerApp, isCanDoubleClickTriggerApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isCanDoubleClickTriggerApp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavStubGestureEventManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isSupportDoubleAction()Z
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportDoubleAction TriggerApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isCanDoubleClickTriggerApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubGestureEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-boolean p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isCanDoubleClickTriggerApp:Z

    return p0
.end method

.method public final isSupportVoiceAssistant()Z
    .locals 5

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "NavStubGestureEventManager"

    if-eqz v0, :cond_1

    const-string p0, "Current window is in split window mode(Fold device), stop!"

    .line 302
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 306
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    const-string v4, "getLauncherApplication().getRecentsImpl()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getIsUseMiuiHomeAsDefaultHome()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Current window is in third home mode, stop!"

    .line 308
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 312
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSupportWakeupXiaoaiByGestureLine()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Current voice assistant app is too old, stop!"

    .line 313
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 317
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isControlPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Current window is control panel, stop!"

    .line 319
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 323
    :cond_4
    iget p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->systemUiStateFlag:I

    const v0, 0x50000004

    if-ne p0, v0, :cond_5

    move p0, v1

    goto :goto_1

    :cond_5
    move p0, v2

    :goto_1
    if-eqz p0, :cond_6

    const-string p0, "Current window is notification, stop!"

    .line 325
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 329
    :cond_6
    sget-object p0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v4, "getInstance()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isInPinned(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Current window is pinned, stop!"

    .line 330
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 334
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLockScreen()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Current window is in lock screen mode, stop!"

    .line 336
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v1
.end method

.method public onDoubleTap()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isGestureLineVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->handleDoubleClickEvent()V

    return-void
.end method

.method public onGestureLineVisibilityChanged(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isGestureLineVisible:Z

    return-void
.end method

.method public onLongPress()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isGestureLineVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "NavStubGestureEventManager"

    const-string v0, "Accessibility mode enabled, long press disabled"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->handleLongPressEvent()V

    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->systemUiStateFlag:I

    return-void
.end method

.method public final updateIsCanDoubleClickTriggerApp(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isCanDoubleClickTriggerApp:Z

    return-void
.end method
