.class public Lcom/miui/home/recents/CloseShortcutIconUtils;
.super Ljava/lang/Object;
.source "CloseShortcutIconUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloseShortcutIconUtils"

.field public static sGoogleSearchBox:Landroid/content/ComponentName;

.field public static sPeopleActivity:Landroid/content/ComponentName;

.field private static final sRelativeComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sSecurityCenter:Landroid/content/ComponentName;

.field private static final sSecurityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecurityManager:Landroid/content/ComponentName;

.field public static sSecurityManagerNew:Landroid/content/ComponentName;

.field public static sThemeManager:Landroid/content/ComponentName;

.field public static sThemeStore:Landroid/content/ComponentName;

.field public static sTwelveKeyDialer:Landroid/content/ComponentName;

.field public static sbugreportEntity:Landroid/content/ComponentName;

.field public static sbugreportLaunch:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$UO8VyqCEg8-Uxv4HO0OlNaguvPM(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/CloseShortcutIconUtils;->lambda$getRelativeComponent$3(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMctm_uncqu6qpzSDFNg1Vk34tw(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils;->lambda$isRelativePackageName$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gn6eIG7hZ8ZulrDipNwSW3JCGDk(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->lambda$isRelativePackageName$1(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x5u6xyKbQBIkGW3Lbo1tB1ZeF6w(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils;->lambda$isRelativePackageName$2(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitymanager"

    const-string v2, "com.miui.securitymain.SCMainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManager:Landroid/content/ComponentName;

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.securitymain.MainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManagerNew:Landroid/content/ComponentName;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.securityscan.MainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityCenter:Landroid/content/ComponentName;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.themestore"

    const-string v2, "com.miui.thememanagerstore.ThemeResourceTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeStore:Landroid/content/ComponentName;

    .line 31
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.ThemeResourceProxyTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeManager:Landroid/content/ComponentName;

    .line 33
    new-instance v0, Lcom/miui/home/recents/CloseShortcutIconUtils$1;

    invoke-direct {v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityList:Ljava/util/List;

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.miservice"

    const-string v3, "com.miui.miservice.main.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportLaunch:Landroid/content/ComponentName;

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.bugreport"

    const-string v3, "com.miui.feedback.HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportEntity:Landroid/content/ComponentName;

    .line 41
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    .line 46
    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManager:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityCenter:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManagerNew:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportEntity:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportLaunch:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeManager:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeStore:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeStore:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sThemeManager:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isMultiWindowStateNotTheSameBetweenSysAndLauncherLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v1

    if-nez v1, :cond_3

    .line 120
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getRelativeComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 121
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :cond_3
    :goto_0
    instance-of p0, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_4

    move-object p0, v1

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isAutoLayoutAnimating()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 133
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->TAG:Ljava/lang/String;

    const-string p1, "getCloseShortcutIcon isAutoLayoutAnimating"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static getRelativeComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->SECURITY_CENTER_APP_DETAIL:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->SECURITY_CENTER_APP_LOCK:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 95
    :cond_1
    new-instance v2, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 102
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRelativeComponent, relative components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isRelativePackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 61
    :cond_1
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda1;

    .line 63
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getRelativeComponent$3(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$isRelativePackageName$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isRelativePackageName$1(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    .line 64
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isRelativePackageName$2(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 2

    .line 70
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    return-object p0

    .line 73
    :cond_0
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 76
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method
