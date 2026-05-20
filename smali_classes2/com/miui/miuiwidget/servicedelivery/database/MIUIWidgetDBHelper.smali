.class public Lcom/miui/miuiwidget/servicedelivery/database/MIUIWidgetDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MIUIWidgetDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "miui_widget.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "miui_widget.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
