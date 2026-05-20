.class public final Lcom/miui/home/recents/gesture/NavStubEventEntityKt;
.super Ljava/lang/Object;
.source "NavStubEventEntity.kt"


# static fields
.field private static final configAppWhiteList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultSelectedAppConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final systemHomePackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com.vroco.launcher"

    const-string v1, "com.miui.home"

    .line 166
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->systemHomePackageNameList:Ljava/util/List;

    const/4 v2, 0x3

    new-array v3, v2, [Lkotlin/Pair;

    .line 179
    new-instance v4, Lkotlin/Pair;

    const-string v5, "launch_google_search"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    .line 180
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v4, v3, v1

    .line 181
    new-instance v4, Lkotlin/Pair;

    const-string v6, "com.miui.voiceassist"

    const-string v7, "VoiceAssistant|VoiceAssistantScreenRecognizer"

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 178
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->configAppWhiteList:Ljava/util/Map;

    new-array v2, v2, [Lkotlin/Pair;

    .line 191
    new-instance v3, Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const-string v7, "NavLongPress"

    invoke-direct {v4, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "global"

    invoke-direct {v3, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 192
    new-instance v0, Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "VoiceAssistantScreenRecognizer"

    invoke-direct {v3, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "cn"

    invoke-direct {v0, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v1

    .line 193
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v3, "NavDoubleClick"

    const-string v5, "VoiceAssistant"

    invoke-direct {v1, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v6

    .line 190
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->defaultSelectedAppConfig:Ljava/util/List;

    return-void
.end method

.method public static final getConfigAppWhiteList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->configAppWhiteList:Ljava/util/Map;

    return-object v0
.end method

.method public static final getDefaultSelectedAppConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->defaultSelectedAppConfig:Ljava/util/List;

    return-object v0
.end method

.method public static final getSystemHomePackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubEventEntityKt;->systemHomePackageNameList:Ljava/util/List;

    return-object v0
.end method
