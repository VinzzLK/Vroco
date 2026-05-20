.class public Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;
.super Ljava/lang/Object;
.source "WidgetIdRecordDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetIdRecordDao"

.field private static final tableName:Ljava/lang/String; = "widget_id_record"


# instance fields
.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private checkDb()Z
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "WidgetIdRecordDao"

    const-string v0, "db == null || close"

    .line 189
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `widget_id_record` (`widget_id` INTEGER NOT NULL PRIMARY KEY, `type` INTEGER NOT NULL, `widget_sign` TEXT, `status` INTEGER NOT NULL)"

    .line 184
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private cursorToWidgetIdRecordEntity(Landroid/database/Cursor;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "WidgetIdRecordDao"

    if-nez p1, :cond_0

    const-string p1, "cursorToWidgetIdRecordEntity cursor == null"

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "widget_sign"

    .line 171
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_id"

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "type"

    .line 173
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "status"

    .line 174
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 175
    new-instance v4, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    invoke-direct {v4, v2, v3, v1, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;-><init>(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    const-string v1, "findByConditions"

    .line 177
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method


# virtual methods
.method delete(I)I
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "widget_id_record"

    const-string v2, "widget_id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete widgetId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " delete:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetIdRecordDao"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method deleteAll()I
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "widget_id_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete all delete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetIdRecordDao"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method findByConditions(II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 11

    .line 116
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    .line 121
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "widget_id_record"

    const-string v5, "widget_id = ? AND status = ? "

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->cursorToWidgetIdRecordEntity(Landroid/database/Cursor;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p0

    .line 124
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 127
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method findByConditions(Ljava/lang/String;II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 11

    .line 100
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    .line 104
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    .line 105
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "widget_id_record"

    const-string v5, "widget_sign = ? AND type = ? AND status = ?"

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->cursorToWidgetIdRecordEntity(Landroid/database/Cursor;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p0

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 111
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method findByConditions(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    .line 89
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "widget_id_record"

    const-string v5, "status = ?"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 90
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->cursorToWidgetIdRecordEntity(Landroid/database/Cursor;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method findByWidgetId(I)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 11

    .line 132
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v5, "widget_id = ? "

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "widget_id_record"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->cursorToWidgetIdRecordEntity(Landroid/database/Cursor;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p0

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 144
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WidgetIdRecordDao"

    const-string v0, "findByWidgetId"

    .line 146
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method insert(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)J
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "WidgetIdRecordDao"

    const-string p1, "insert data == null"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->toCovertContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "widget_id_record"

    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method queryMaMlRecordCount()I
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x2

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM widget_id_record WHERE type = ?"

    invoke-virtual {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 76
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    return v1
.end method

.method queryWidgetRecordCount()I
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 58
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "SELECT COUNT(*) FROM widget_id_record WHERE type = ?"

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 61
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    return v1
.end method

.method updateRecordStatus(II)I
    .locals 3

    .line 152
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->checkDb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "status"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "widget_id_record"

    const-string v2, "widget_id = ?"

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "widget id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetIdRecordDao"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
