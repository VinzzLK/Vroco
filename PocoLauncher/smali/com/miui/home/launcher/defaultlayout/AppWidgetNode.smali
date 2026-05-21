.class public final Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "AppWidgetNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addAppWidget(Ljava/util/ArrayList;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/content/res/TypedArray;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 34
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    if-nez v4, :cond_5

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v4, 0x12

    .line 40
    invoke-virtual {p3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v5, 0x13

    .line 41
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 43
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v6, -0x1

    invoke-direct {v1, v6}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    const/16 v6, 0xd

    .line 44
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const/16 v6, 0x3f3

    .line 45
    iput v6, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 46
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "info.extraIntentParams"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->obtainValidItemFlags(Landroid/content/res/TypedArray;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "itemFlags"

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    move-object v1, p2

    .line 50
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addAppWidget(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 59
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private final obtainValidItemFlags(Landroid/content/res/TypedArray;)I
    .locals 1

    const/16 p0, 0x8

    const/4 v0, -0x1

    .line 64
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    :cond_0
    return p0
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 22
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContentValuesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/Node;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->addAppWidget(Ljava/util/ArrayList;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/Node;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
