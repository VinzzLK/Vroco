.class public final Lcom/miui/home/launcher/LauncherHideApp;
.super Ljava/lang/Object;
.source "LauncherHideApp.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/LauncherHideApp;

.field private static final URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$gcame82V79iVePpIqYQvViHTCcs(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherHideApp;->closeHiddenAppNotifications$lambda-0(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/LauncherHideApp;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherHideApp;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherHideApp;->INSTANCE:Lcom/miui/home/launcher/LauncherHideApp;

    const-string v0, "content://com.vroco.launcher.app.hide"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(\"content://com.vroco.launcher.app.hide\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherHideApp;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const-string v0, "resolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "packageName"

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "activityName"

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serialNumber"

    .line 35
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    sget-object p1, Lcom/miui/home/launcher/LauncherHideApp;->URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static final closeHiddenAppNotifications(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "shortcutInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final closeHiddenAppNotifications$lambda-0(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 9

    const-class v0, Ljava/lang/String;

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$shortcutInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.os.ServiceManager"

    .line 44
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    .line 45
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "notification"

    aput-object v6, v5, v3

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.app.INotificationManager$Stub"

    .line 47
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "asInterface"

    new-array v6, v4, [Ljava/lang/Class;

    .line 48
    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    .line 49
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v5, "setNotificationsEnabledForPackage"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v3

    .line 51
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.HideApp"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static final isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z
    .locals 5

    const-string v0, "componentKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/bean/HideAppBean;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "componentKey.componentName.packageName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentKey.componentName.className"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v3

    iget-object p0, p0, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-direct {v1, v0, v2, p0}, Lcom/miui/home/launcher/bean/HideAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/HideAppList$Companion;->getSHideAppList()Lcom/miui/home/launcher/HideAppList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HideAppList;->isAppHided(Lcom/miui/home/launcher/bean/HideAppBean;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final restoreHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    const-string v0, "resolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/miui/home/launcher/LauncherHideApp;->URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 72
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, v0, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_0

    move v2, p1

    :cond_0
    return v2
.end method


# virtual methods
.method public final getURI()Landroid/net/Uri;
    .locals 0

    .line 18
    sget-object p0, Lcom/miui/home/launcher/LauncherHideApp;->URI:Landroid/net/Uri;

    return-object p0
.end method
