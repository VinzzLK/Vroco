.class public final Lcom/miui/home/safemode/SafeModeStateCallback;
.super Ljava/lang/Object;
.source "SafeModeStateCallback.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/SafeModeStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/SafeModeStateCallback;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeStateCallback;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeStateCallback;->INSTANCE:Lcom/miui/home/safemode/SafeModeStateCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isForceFSGNavBar(Landroid/content/Context;)Z
    .locals 0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force_fsg_nav_bar"

    .line 36
    invoke-static {p0, p1}, Lcom/miui/home/safemode/SafeSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onClearSafeMode(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SafeModeStateCallback"

    const-string v1, "onClearSafeMode: "

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    const-string v1, "KEY_LAST_SETTINGS"

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, p1, v1, v3}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v0, "true"

    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/safemode/SafeModeStateCallback;->putForceFSGNavBar(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onEnterSafeMode(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SafeModeStateCallback"

    const-string v1, "onEnterSafeMode: "

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeModeStateCallback;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p0

    .line 13
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    const-string v1, "KEY_LAST_SETTINGS"

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "null"

    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "true"

    goto :goto_0

    :cond_1
    const-string p0, "false"

    .line 15
    :goto_0
    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final putForceFSGNavBar(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force_fsg_nav_bar"

    .line 31
    invoke-static {p0, p1, p2}, Lcom/miui/home/safemode/SafeSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
