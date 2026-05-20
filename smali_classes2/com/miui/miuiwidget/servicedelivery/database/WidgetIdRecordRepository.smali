.class public Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;
.super Ljava/lang/Object;
.source "WidgetIdRecordRepository.java"


# static fields
.field public static final INVALID_WIDGET_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WidgetIdRecordRepository"

.field private static volatile sInstance:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

.field private mMiuiWidgetDBHelper:Lcom/miui/miuiwidget/servicedelivery/database/MIUIWidgetDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/database/MIUIWidgetDBHelper;

    invoke-direct {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/MIUIWidgetDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mMiuiWidgetDBHelper:Lcom/miui/miuiwidget/servicedelivery/database/MIUIWidgetDBHelper;

    .line 23
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    return-void
.end method

.method private findRecordByConditions(Ljava/lang/String;II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 0

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->findByConditions(Ljava/lang/String;II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "WidgetIdRecordRepository"

    const-string p2, "findRecordByConditions error"

    .line 122
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;
    .locals 2

    .line 27
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->sInstance:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->sInstance:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    invoke-direct {v1, p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->sInstance:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->sInstance:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    return-object p0
.end method

.method private updateStatus(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)I
    .locals 4

    const-string v0, "WidgetIdRecordRepository"

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    .line 109
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecord "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    iget v2, p1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    iget p1, p1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    invoke-virtual {p0, v2, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->updateRecordStatus(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "updateRecord error"

    .line 112
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public allocateWidgetId(Ljava/lang/String;ILjava/util/concurrent/Callable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    sget v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_DEFAULT:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->findRecordByConditions(Ljava/lang/String;II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object v0

    const-string v1, "WidgetIdRecordRepository"

    if-nez v0, :cond_1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateWidgetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " record == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_0

    .line 136
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    sget v3, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_DEFAULT:I

    invoke-direct {v2, p3, p2, p1, v3}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;-><init>(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    iget p3, v2, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    invoke-virtual {p0, p3, p2, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->insertUsingRecord(IILjava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    .line 139
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generate an invalid id:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "generate id error"

    .line 142
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reuse id :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "widgetSign:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget p1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_USING:I

    iput p1, v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    .line 147
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->updateStatus(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)I

    .line 149
    :goto_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    const-string p0, "cannot get a valid widgetId"

    .line 151
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_2
    iget p0, v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    return p0
.end method

.method public cleanAllRecord()I
    .locals 1

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->deleteAll()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, -0x1

    return p0

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteRecord(I)I
    .locals 1

    .line 85
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->delete(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WidgetIdRecordRepository"

    const-string v0, "deleteRecord error"

    .line 88
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public findRecordByWidgetId(I)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
    .locals 1

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->findByWidgetId(I)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "WidgetIdRecordRepository"

    const-string v0, "findRecordByConditions error"

    .line 63
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public insertUsingRecord(IILjava/lang/String;)J
    .locals 3

    const-string v0, "WidgetIdRecordRepository"

    .line 72
    :try_start_0
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    sget v2, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_USING:I

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;-><init>(IILjava/lang/String;I)V

    .line 73
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->insert(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)J

    move-result-wide v1

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertRecord widgetId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "widgetSign:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "insertId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    const-string p1, "insertRecord error"

    .line 77
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public queryMaMlRecordCount()I
    .locals 2

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->queryMaMlRecordCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WidgetIdRecordRepository"

    const-string v1, "queryMaMlRecordCount"

    .line 53
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public queryWidgetRecordCount()I
    .locals 2

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->queryWidgetRecordCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WidgetIdRecordRepository"

    const-string v1, "queryWidgetRecordCount"

    .line 44
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public resetRecordStatus()V
    .locals 6

    const-string v0, "WidgetIdRecordRepository"

    .line 176
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    sget v2, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_USING:I

    invoke-virtual {v1, v2}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->findByConditions(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRecordStatus size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 183
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    .line 184
    sget v5, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_DEFAULT:I

    iput v5, v4, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    .line 185
    invoke-direct {p0, v4}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->updateStatus(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "resetRecordStatus WidgetIdRecordEntity null"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "resetRecordStatus"

    .line 193
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public resetRecordStatus(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->mDao:Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;

    sget v1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_USING:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->findByConditions(II)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    sget v0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->STATUS_DEFAULT:I

    iput v0, p1, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    .line 165
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->updateStatus(Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "WidgetIdRecordRepository"

    const-string v1, "updateRecordStatus"

    .line 168
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 170
    :goto_2
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    throw p1
.end method
