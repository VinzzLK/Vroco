.class public final Lcom/xiaomi/dist/utils/UIModeUtils;
.super Ljava/lang/Object;
.source "UIModeUtils.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final SYSTEM_PROPERTIES:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final TAG:Ljava/lang/String; = "UIModeUtils"

.field public static final UI_MODE_TYPE_CAR:Ljava/lang/String; = "car"

.field public static final UI_MODE_TYPE_DESK:Ljava/lang/String; = "desk"

.field public static final UI_MODE_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final UI_MODE_TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final UI_MODE_TYPE_SOUND:Ljava/lang/String; = "sound"

.field public static final UI_MODE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field public static final UI_MODE_TYPE_TELEVISION:Ljava/lang/String; = "tv"

.field public static final UI_MODE_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UI_MODE_TYPE_WATCH:Ljava/lang/String; = "watch"

.field private static sUiModeType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs callMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 127
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p3}, Lcom/xiaomi/dist/utils/UIModeUtils;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callMethod exception: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UIModeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static varargs callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Class;

    .line 139
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p1, p2, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/xiaomi/dist/utils/UIModeUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 121
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v3, p1, v2}, Lcom/xiaomi/dist/utils/UIModeUtils;->callMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static is(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p0}, Lcom/xiaomi/dist/utils/UIModeUtils;->uiMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCar(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "car"

    .line 83
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDesk(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "desk"

    .line 87
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isMiAutomotive(Landroid/content/Context;)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isMiPhone()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, ""

    .line 107
    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/UIModeUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/xiaomi/dist/utils/UIModeUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 71
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSound(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "sound"

    .line 95
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTV(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "tv"

    .line 79
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    .line 112
    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/UIModeUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "tablet"

    .line 75
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWatch(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "watch"

    .line 91
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/UIModeUtils;->is(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static uiMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "uimode"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-nez v0, :cond_1

    const-string p0, "unknown"

    .line 46
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 58
    invoke-static {}, Lcom/xiaomi/dist/utils/UIModeUtils;->isMiPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "phone"

    .line 59
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/xiaomi/dist/utils/UIModeUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "tablet"

    .line 61
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/dist/utils/UIModeUtils;->isMiAutomotive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "car"

    .line 63
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    .line 65
    :cond_4
    :goto_0
    sget-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0

    :cond_5
    const-string p0, "watch"

    .line 55
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0

    :cond_6
    const-string p0, "tv"

    .line 51
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0

    :cond_7
    const-string p0, "desk"

    .line 53
    sput-object p0, Lcom/xiaomi/dist/utils/UIModeUtils;->sUiModeType:Ljava/lang/String;

    return-object p0
.end method
