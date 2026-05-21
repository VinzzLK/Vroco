.class Lcom/xiaomi/onetrack/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/d;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/h;->a:Lcom/xiaomi/onetrack/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 532
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/h;->a:Lcom/xiaomi/onetrack/c/d;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/c/d;)Lcom/xiaomi/onetrack/c/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/h;->a:Lcom/xiaomi/onetrack/c/d;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/c/d;)Lcom/xiaomi/onetrack/c/d$a;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 538
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/h;->a:Lcom/xiaomi/onetrack/c/d;

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/c/d;)Lcom/xiaomi/onetrack/c/d$a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x6

    .line 541
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    const/4 v10, 0x0

    .line 543
    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 544
    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 545
    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 546
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v11, "timestamp < ? "

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v10

    const-string v3, "events"

    const-string v2, "appid"

    const-string v4, "count(*) as count"

    .line 550
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "appid"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v5, v11

    move-object v6, v13

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 557
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "appid"

    .line 561
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "count"

    .line 562
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "EventManager"

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeObsoleteEvents: appId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "do"

    const-string v6, ""

    .line 564
    invoke-static {v2, v4, v5, v6, v3}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v2, "events"

    .line 566
    invoke-virtual {p0, v2, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string v2, "EventManager"

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** deleted obsolete item count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/c/d;->a()Lcom/xiaomi/onetrack/c/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/d;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_3

    move v10, v12

    .line 571
    :cond_3
    invoke-static {v10}, Lcom/xiaomi/onetrack/b/o;->a(Z)V

    const-string p0, "EventManager"

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after delete obsolete record remains="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "EventManager"

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove obsolete events failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_1

    .line 580
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    if-eqz v1, :cond_5

    .line 577
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_5
    throw p0

    :catchall_1
    move-exception p0

    .line 580
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
