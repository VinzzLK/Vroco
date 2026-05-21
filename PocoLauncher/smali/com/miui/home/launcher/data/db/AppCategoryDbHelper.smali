.class public Lcom/miui/home/launcher/data/db/AppCategoryDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppCategoryDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "apps_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getComponentKeyTable()Ljava/lang/String;
    .locals 0

    const-string p0, "app_component_key"

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    if-le p3, p0, :cond_0

    const-string p0, "CREATE TABLE apps_category_new (package TEXT, category INTEGER);"

    .line 42
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO apps_category_new (package, category) SELECT package,category FROM apps_category"

    .line 43
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS app_component_key (component_key TEXT, category INTEGER);"

    .line 45
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
