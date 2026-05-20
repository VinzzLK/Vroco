.class public final Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;
.super Ljava/lang/Object;
.source "UpgradeScreenManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpgradeScreenManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpgradeScreenManager.kt\ncom/miui/home/launcher/upgradelayout/UpgradeScreenManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1851#2,2:70\n*S KotlinDebug\n*F\n+ 1 UpgradeScreenManager.kt\ncom/miui/home/launcher/upgradelayout/UpgradeScreenManager\n*L\n53#1:70,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$Companion;

.field private static mFillCellX:I

.field private static mFillCellY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->Companion:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$Companion;

    const/4 v0, 0x4

    .line 16
    sput v0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;
    .locals 0

    .line 32
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "appCount"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "screenId"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "hasWidgetOrBigFolder"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public final fillItemToLastScreen(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string p0, "screens"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "apps"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "db"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "screenId"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    const/4 v3, 0x2

    .line 52
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 1851
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 54
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 55
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "screen"

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    sget v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "cellX"

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    sget v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "cellY"

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    sget v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellX:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 60
    sput v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellX:I

    goto :goto_1

    .line 62
    :cond_1
    sput v0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellX:I

    .line 63
    sget v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellY:I

    add-int/2addr v4, v6

    sput v4, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->mFillCellY:I

    :goto_1
    new-array v4, v6, [Ljava/lang/String;

    .line 65
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v3, "favorites"

    const-string v5, "_id=?"

    invoke-virtual {p3, v3, p0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeItem(Lcom/google/gson/JsonArray;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    const-string p0, "array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "removeList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$removeItem$1;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager$removeItem$1;-><init>(Ljava/util/List;)V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method
