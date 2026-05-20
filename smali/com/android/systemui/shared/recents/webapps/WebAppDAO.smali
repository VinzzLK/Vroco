.class public Lcom/android/systemui/shared/recents/webapps/WebAppDAO;
.super Ljava/lang/Object;
.source "WebAppDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataChangeBroadcastReceiver:Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;

.field private mIsReady:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/shared/recents/webapps/WebAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mIsReady:Z

    .line 23
    new-instance v1, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;-><init>(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;Lcom/android/systemui/shared/recents/webapps/WebAppDAO$1;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mDataChangeBroadcastReceiver:Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "RECEIVER_EXPORTED"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mDataChangeBroadcastReceiver:Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "miui.browser.webapps.action.DATA_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->query()V

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->sInstance:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->sInstance:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    .line 36
    :cond_0
    sget-object p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->sInstance:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    return-object p0
.end method

.method private final isNeedToCheck(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 86
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "miui.browser.webapps.app"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private final isReady()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mIsReady:Z

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WebappsContentProvider"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final query()V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://miui.browser.webapps/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;-><init>(Landroid/database/Cursor;)V

    .line 56
    iget-object v2, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mTaskAffinity:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->closeCursor(Landroid/database/Cursor;)V

    :cond_1
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mIsReady:Z

    return-void
.end method


# virtual methods
.method public get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->isNeedToCheck(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->query()V

    .line 69
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Ljava/lang/String;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mIsReady:Z

    .line 100
    iget-object p0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
