.class public Lcom/miui/home/launcher/DbCellCountHelper;
.super Ljava/lang/Object;
.source "DbCellCountHelper.java"


# static fields
.field public static CELL_X_BEFORE_GRID_OTA:I

.field public static CELL_Y_BEFORE_GRID_OTA:I

.field public static SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0x2Dz3L8NMr_yDnK3nGSfKRdjvg(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DbCellCountHelper;->lambda$sortAllScreenInfo$0(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DI8FIJOFDrxkdwDkIbLjyDbqX5M(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/DbCellCountHelper;->lambda$sortAllScreenInfo$1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;)V

    return-void
.end method

.method private static addOccupied([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;IIII)V
    .locals 3

    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    add-int v1, p3, p5

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, p3, :cond_0

    .line 175
    :try_start_0
    aget-object v2, p0, v0

    aput-object p1, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addOccupied cellX  cellY ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " spanX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " spanY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DbCellCountHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public static checkDbData(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Landroid/content/ContentResolver;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDBCellCountPreKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1, v0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v2, 0x1

    aget v7, v0, v2

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldX is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " odlY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newX "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "DbCellCountHelper"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v3, "grid_upgrade"

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    if-ne v6, v4, :cond_0

    if-eq v7, v5, :cond_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "display_layout_upgrade_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-gt v6, v4, :cond_2

    if-gt v7, v5, :cond_2

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/miui/home/launcher/DbCellCountHelper;->getAllScreenInfos(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v0

    .line 89
    invoke-static {p2, v0, v6, v7}, Lcom/miui/home/launcher/DbCellCountHelper;->getAllScreensOccupied(Landroid/content/ContentResolver;Ljava/util/Map;II)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/miui/home/launcher/DbCellCountHelper;->sortAllScreenInfo(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 91
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v2, Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    invoke-direct {v2, p2, v0}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->processAllScreenData(Ljava/util/LinkedHashMap;IIII)Ljava/util/LinkedHashMap;

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0, p2}, Lcom/miui/home/launcher/LauncherModel;->BatchOperation(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 97
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDbData Error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    .line 100
    throw p0
.end method

.method private static getAllScreenInfos(Landroid/content/ContentResolver;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 153
    :try_start_0
    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v4, "screenOrder"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 156
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 157
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 158
    new-instance v5, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/miui/home/launcher/layout/LayoutScreenInfo;-><init>(JILjava/lang/Object;)V

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    :goto_1
    :try_start_2
    const-string v2, "DbCellCountHelper"

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAllScreenInfos error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 165
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    throw v0
.end method

.method private static getAllScreensOccupied(Landroid/content/ContentResolver;Ljava/util/Map;II)Ljava/util/LinkedHashMap;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            ">;II)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 115
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    .line 117
    :try_start_0
    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "screen"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen>?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 120
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    const-string v8, "screen ASC"

    move-object/from16 v3, p0

    .line 117
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 122
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 124
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    .line 125
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    .line 126
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x4

    .line 127
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v11, 0x5

    .line 128
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 129
    new-instance v23, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    int-to-long v12, v3

    const/16 v20, 0x0

    move-object/from16 v11, v23

    move v14, v4

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move-wide/from16 v18, v21

    invoke-direct/range {v11 .. v20}, Lcom/miui/home/launcher/layout/LayoutItemInfo;-><init>(JIIIIJLjava/lang/Object;)V

    .line 131
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    if-nez v3, :cond_0

    new-array v3, v5, [I

    aput p3, v3, v9

    aput p2, v3, v10

    .line 134
    const-class v5, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    .line 135
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    invoke-virtual {v1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v11, v3

    move-object/from16 v12, v23

    move v13, v4

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    .line 137
    invoke-static/range {v11 .. v16}, Lcom/miui/home/launcher/DbCellCountHelper;->addOccupied([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "DbCellCountHelper"

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllScreensOccupied error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 143
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_3
    throw v0
.end method

.method private static synthetic lambda$sortAllScreenInfo$0(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    return p0
.end method

.method private static synthetic lambda$sortAllScreenInfo$1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;)V
    .locals 0

    .line 108
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static recordCellCountForDBUpgrade(Landroid/content/Context;)V
    .locals 4

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->isRecordedCellCount()Z

    move-result v1

    const-string v2, "DbCellCountHelper"

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB cell count already exists "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDBCellCountPreKey()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 52
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDbName(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 59
    sget-object v0, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v0, 0x0

    aget v0, p0, v0

    .line 60
    sput v0, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_X_BEFORE_GRID_OTA:I

    const/4 v0, 0x1

    aget p0, p0, v0

    .line 61
    sput p0, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_Y_BEFORE_GRID_OTA:I

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setRecordedCellCount(Z)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recordCellCountForDBUpgrade "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_X_BEFORE_GRID_OTA:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_Y_BEFORE_GRID_OTA:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sortAllScreenInfo(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    sget-object v1, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 106
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    new-instance v2, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public static updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDBCellCountPreKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update db data cell count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", in mode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DbCellCountHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
