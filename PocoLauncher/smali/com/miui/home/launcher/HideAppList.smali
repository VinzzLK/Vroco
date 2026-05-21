.class public final Lcom/miui/home/launcher/HideAppList;
.super Ljava/lang/Object;
.source "HideAppList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/HideAppList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/HideAppList$Companion;

.field private static final sHideAppList$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/launcher/HideAppList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHiddenAppDynamicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$58X9Iae1xB1KMLFJLPABhGzWdr0(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/HideAppList;->onPackageChanged$lambda-1$lambda-0(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/HideAppList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/HideAppList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;->INSTANCE:Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    const-string v0, "HideAppList"

    .line 19
    iput-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/home/launcher/HideAppList;->getHideAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList;->isFirstCreateSecondSpace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 99
    new-instance v3, Lcom/mi/google/gson/Gson;

    invoke-direct {v3}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSHideAppList$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/launcher/HideAppList;->sHideAppList$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final dump(Ljava/io/PrintWriter;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/HideAppList$Companion;->dump(Ljava/io/PrintWriter;Landroid/content/Context;)V

    return-void
.end method

.method private final getHideAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 48
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    .line 50
    :try_start_0
    new-instance p0, Lcom/mi/google/gson/Gson;

    invoke-direct {p0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/HideAppList$getHideAppList$1;-><init>()V

    invoke-virtual {v0}, Lcom/mi/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "{\n                Gson()\u2026() {}.type)\n            }"

    .line 49
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 52
    :catchall_0
    sget-object p0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object p0

    .line 56
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static final getHideAppString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/HideAppList$Companion;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isFirstCreateSecondSpace()Z
    .locals 2

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const-string v1, "app_state_db_need_init"

    .line 128
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final onPackageChanged$lambda-1$lambda-0(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V
    .locals 3

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PACKAGES"

    .line 110
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    const/4 v2, 0x0

    .line 111
    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized addHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addHiddenApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/HideAppList;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p2

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v0, p2, v1}, Lcom/miui/home/launcher/HideAppList;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "content://com.miui.home.app.hide/update_miui_hide_app_list"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8000

    .line 72
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 75
    :cond_1
    sget-object p2, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " deleteHiddenApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/HideAppList;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p2

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, p2, v1}, Lcom/miui/home/launcher/HideAppList;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "content://com.miui.home.app.hide/update_miui_hide_app_list"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8000

    .line 85
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 88
    :cond_0
    sget-object p2, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/HideAppList$Companion;->putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 90
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAllHideAppList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/bean/HideAppBean;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 2

    const-string p0, "serialNumber"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    .line 123
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    const-string p1, "getInstance(Application.\u2026er(serialNumber.toLong())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isAppHided(Lcom/miui/home/launcher/bean/HideAppBean;)Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList;->mHiddenAppDynamicList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 108
    new-instance p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
