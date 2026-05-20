.class public Lcom/miui/home/launcher/RemovedComponentInfoList;
.super Ljava/lang/Object;
.source "RemovedComponentInfoList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemovedComponentInfoList"

.field private static mCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode; = null

.field private static final sPrepareLock:Ljava/lang/Object;

.field private static sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList; = null

.field private static sRemovedInfoReady:Z = false


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->init()V

    .line 72
    new-instance p1, Lcom/miui/home/launcher/RemovedComponentInfoList$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList$1;-><init>(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/RemovedComponentInfoList;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    return p0
.end method

.method private clearFile()V
    .locals 3

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getReaderFileName()Ljava/lang/String;

    move-result-object p0

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 238
    sget-object p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 242
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->TAG:Ljava/lang/String;

    const-string v1, "Error clearing file"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;
    .locals 3

    const-class v0, Lcom/miui/home/launcher/RemovedComponentInfoList;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/home/launcher/RemovedComponentInfoList;->mCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-eq v1, v2, :cond_4

    .line 48
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;

    if-eqz v2, :cond_2

    .line 49
    new-instance v2, Lcom/miui/home/launcher/RemovedDrawerComponentInfoList;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/RemovedDrawerComponentInfoList;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    goto :goto_1

    .line 50
    :cond_2
    instance-of v2, v1, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;

    if-eqz v2, :cond_3

    .line 51
    new-instance v2, Lcom/miui/home/launcher/RemovedElderlyComponentInfoList;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/RemovedElderlyComponentInfoList;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    goto :goto_1

    .line 53
    :cond_3
    new-instance v2, Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    .line 55
    :goto_1
    sput-object v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->mCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 57
    :cond_4
    sget-object p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 10

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 166
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->getPackageNameFromComponentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    .line 174
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move v6, v2

    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 177
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v8

    const-string v9, "profileId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v8

    .line 179
    invoke-virtual {v0, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    move-object v5, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 186
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "cellX"

    .line 187
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-string v4, "cellY"

    .line 188
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-string v4, "screen"

    .line 189
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-string v4, "container"

    .line 190
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/miui/home/launcher/ItemInfo;->container:J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p2, :cond_5

    .line 193
    :try_start_3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 201
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    :cond_5
    :goto_4
    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private init()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    .line 66
    sput-boolean p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    return-void
.end method

.method public static waitingForReady()V
    .locals 2

    .line 118
    sget-object v0, Lcom/miui/home/launcher/RemovedComponentInfoList;->sPrepareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/RemovedComponentInfoList;->sRemovedInfoReady:Z

    if-eqz v1, :cond_0

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 127
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    invoke-direct {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->clearFile()V

    return-void
.end method

.method protected getReaderFileName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getRemovedComponentInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z
    .locals 4

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "componentName"

    .line 134
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cellX"

    const/16 v2, 0xb

    .line 135
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cellY"

    const/16 v2, 0xc

    .line 136
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screen"

    const/16 v2, 0xa

    .line 137
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 137
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "container"

    const/4 v2, 0x7

    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "profileId"

    const/16 v2, 0x14

    .line 140
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_1

    .line 148
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 150
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public writeBackToFile()V
    .locals 3

    .line 213
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getReaderFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/RemovedComponentInfoList;->mList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    .line 222
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
