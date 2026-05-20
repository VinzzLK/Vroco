.class public Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerWrapper.java"


# static fields
.field public static final SEARCH_SCREEN_SYSTEM_ACTION:I = 0x65

.field private static final TAG:Ljava/lang/String; = "AccessibilityManagerWrapper"

.field private static final instance:Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->instance:Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->instance:Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public registerSearchScreenSystemAction(Landroid/view/accessibility/AccessibilityManager;Landroid/app/RemoteAction;)V
    .locals 4

    const/4 p0, 0x2

    :try_start_0
    new-array v0, p0, [Ljava/lang/Class;

    .line 25
    const-class v1, Landroid/app/RemoteAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "registerSystemAction"

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v2

    const/16 p2, 0x65

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v3

    .line 26
    invoke-static {p1, v1, v0, p0}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccessibilityManagerWrapper"

    const-string p2, "registerSearchScreenSystemAction exception: "

    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unregisterSearchScreenSystemAction(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 4

    const/4 p0, 0x1

    :try_start_0
    new-array v0, p0, [Ljava/lang/Class;

    .line 35
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "unregisterSystemAction"

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v3, 0x65

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v2

    .line 36
    invoke-static {p1, v1, v0, p0}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccessibilityManagerWrapper"

    const-string/jumbo v0, "unregisterSearchScreenSystemAction exception: "

    .line 39
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
