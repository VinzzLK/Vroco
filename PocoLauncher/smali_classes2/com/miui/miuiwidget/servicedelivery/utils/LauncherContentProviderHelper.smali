.class public Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;
.super Ljava/lang/Object;
.source "LauncherContentProviderHelper.java"


# static fields
.field private static final COLUMN_APP_WIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field private static final COLUMN_APP_WIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field private static final COLUMN_CONTAINER:Ljava/lang/String; = "container"

.field private static final COLUMN_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field private static final COLUMN_INTENT:Ljava/lang/String; = "intent"

.field private static final COLUMN_ITEM_FLAGS:Ljava/lang/String; = "itemFlags"

.field private static final COLUMN_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field private static final COLUMN_ORIGIN_WIDGET_ID:Ljava/lang/String; = "originWidgetId"

.field private static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final COLUMN_SCREEN:Ljava/lang/String; = "screen"

.field private static final COLUMN_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final COLUMN_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final COLUMN_URI:Ljava/lang/String; = "uri"

.field private static final ITEM_FLAGS_MIUI_WIDGET:I = 0x20

.field private static final ITEM_TYPE_APP:Ljava/lang/String; = "0"

.field static final ITEM_TYPE_MAML:I = 0x13

.field static final ITEM_TYPE_WIDGET:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LauncherContentProviderHelper"

.field private static final URI_COM_MIUI_HOME_LAUNCHER_SETTINGS_FAVORITES:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.home.launcher.settings/favorites"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->URI_COM_MIUI_HOME_LAUNCHER_SETTINGS_FAVORITES:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppsAtScreen(Landroid/content/Context;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "iconPackage"

    const-string v1, "LauncherContentProviderHelper"

    const/4 v2, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v4, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->URI_COM_MIUI_HOME_LAUNCHER_SETTINGS_FAVORITES:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    const-string p1, "client is null"

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :goto_0
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeProviderClientQuietly(Landroid/content/ContentProviderClient;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 63
    :cond_0
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen = ? and itemType = ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    const/4 p1, 0x1

    const-string v3, "0"

    aput-object v3, v7, p1

    const/4 v8, 0x0

    move-object v3, p0

    .line 66
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "cursor is null"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsAtScreen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_2
    :try_start_3
    const-string v0, "getAppsAtScreen error: "

    .line 82
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 85
    :goto_3
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeProviderClientQuietly(Landroid/content/ContentProviderClient;)V

    .line 87
    throw p1
.end method

.method public static getAppsAtScreen(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsAtScreen(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 46
    invoke-static {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsAtScreen(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p1, p1, 0x1

    .line 47
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsAtScreen(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public static getAppsInDocker(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "iconPackage"

    const-string v1, "LauncherContentProviderHelper"

    if-nez p0, :cond_0

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v4, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->URI_COM_MIUI_HOME_LAUNCHER_SETTINGS_FAVORITES:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :try_start_1
    const-string v0, "cannot get docker app, client is null"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :goto_0
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeProviderClientQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 101
    :cond_1
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "container = ?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v8, -0x65

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ""

    move-object v3, p0

    .line 102
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeProviderClientQuietly(Landroid/content/ContentProviderClient;)V

    return-object v3

    :cond_4
    :goto_2
    :try_start_3
    const-string v0, "cannot get docker app, no data"

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_3
    :try_start_4
    const-string v3, "getAppsInDocker"

    .line 116
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 119
    :goto_4
    invoke-static {v2}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IOUtils;->closeProviderClientQuietly(Landroid/content/ContentProviderClient;)V

    .line 121
    throw v0
.end method
