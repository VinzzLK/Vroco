.class public Lcom/miui/home/launcher/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$EkzgM_pwIGOXu_pqi2XD_MN1YcQ(Lcom/miui/home/launcher/common/ResultRunnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->lambda$asynIsAlreadyInstalled$1(Lcom/miui/home/launcher/common/ResultRunnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rkI98lQddt6sFDoAC7sXmbeNBT4(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->lambda$asynIsAlreadyInstalled$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ulzrBzsg7ZRfUGqG0pwg4ZAytdU(Landroid/content/ContentResolver;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->lambda$findActivities2Id$2(Landroid/content/ContentResolver;Ljava/lang/Long;)V

    return-void
.end method

.method public static asynIsAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/common/ResultRunnable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance p0, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/common/ResultRunnable;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "favorites"

    const-string p2, "_id=?"

    .line 130
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteScreen(J)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/model/ScreenRemoveTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/model/ScreenRemoveTask;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_0
    return-void
.end method

.method public static findActivities2Id(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/UserHandle;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 158
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 159
    sget-object v6, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    const-string v7, "intent"

    const-string v8, "profileId"

    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v9, v14

    const-string v8, "iconPackage=? AND (itemType IN (0, 11, 17) OR itemFlags&1!= 0)"

    const/4 v10, 0x0

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "Launcher.ScreenUtils"

    if-nez v5, :cond_0

    .line 168
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not find matched items from DB for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v14

    :goto_0
    if-eqz v5, :cond_8

    .line 170
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 171
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 172
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 173
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 174
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "searching DB find item "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " intent: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " serialNumber: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_1

    .line 176
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p4

    goto :goto_1

    .line 180
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "item "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " not match current user "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 187
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_4

    .line 188
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    .line 189
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v16, v6

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "component="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3b

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    invoke-interface {v1, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v0, 0x1

    .line 192
    invoke-virtual {v4, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p4

    move-object/from16 v6, v16

    goto :goto_2

    :cond_4
    move-object/from16 v16, v6

    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    .line 199
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    move-object/from16 v6, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_6

    .line 204
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 207
    new-instance v1, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11}, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 210
    :cond_7
    throw v0

    :cond_8
    if-eqz v5, :cond_9

    .line 204
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 207
    new-instance v0, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11}, Lcom/miui/home/launcher/ScreenUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 211
    :cond_a
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 212
    invoke-interface {v1, v0, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 213
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/ScreenUtils;->getLaunchableIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xc0040

    .line 149
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/miui/launcher/utils/PortableUtils;->queryIntentActivitiesAsUser(Landroid/content/Context;Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchableIntent()Landroid/content/Intent;
    .locals 3

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 104
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    .line 108
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v5, p3

    const-string v2, "favorites"

    const-string v4, "iconPackage=? AND profileId=? AND (itemType IN (0, 11, 17) OR itemFlags&1!= 0)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 104
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 118
    throw p0

    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0
.end method

.method public static getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 2

    .line 88
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 92
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p2, 0x0

    .line 95
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static insertNewScreen(III)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/model/ScreenAddTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/model/ScreenAddTask;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public static isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0xc0000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/high16 v1, 0xc0000

    invoke-virtual {p1, p0, v1, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$asynIsAlreadyInstalled$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 79
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asynIsAlreadyInstalled$1(Lcom/miui/home/launcher/common/ResultRunnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ResultRunnable;->run()V

    return-void
.end method

.method private static synthetic lambda$findActivities2Id$2(Landroid/content/ContentResolver;Ljava/lang/Long;)V
    .locals 3

    .line 207
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 208
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id=?"

    .line 207
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static parseCellsSize(Ljava/lang/String;[I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "x"

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 266
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 267
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p0, "Launcher.cells"

    const-string p1, "cells config string invalidate"

    .line 270
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 0

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenUtils;->getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p2, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
