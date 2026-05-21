.class public final Lcom/miui/home/launcher/defaultlayout/MamlNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "MamlNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMamlNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MamlNode.kt\ncom/miui/home/launcher/defaultlayout/MamlNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,180:1\n1#2:181\n12708#3,2:182\n*S KotlinDebug\n*F\n+ 1 MamlNode.kt\ncom/miui/home/launcher/defaultlayout/MamlNode\n*L\n126#1:182,2\n*E\n"
.end annotation


# instance fields
.field private final DOESFILEURL:Ljava/lang/String;

.field private final MAML:Ljava/lang/String;

.field private final SEPARATESTRING:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private sHwVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    const-string v0, "MamlNode"

    .line 28
    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->sHwVersion:Ljava/lang/String;

    const-string v0, "maml/maml_"

    .line 30
    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->MAML:Ljava/lang/String;

    const-string v0, "maml/"

    .line 31
    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->SEPARATESTRING:Ljava/lang/String;

    const-string v0, "file:///system/media/theme/default/maml"

    .line 32
    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->DOESFILEURL:Ljava/lang/String;

    return-void
.end method

.method private final doesFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 168
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    const-string p1, "doesFileExist \u6587\u4ef6\u4e0d\u5b58\u5728  "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getHwVersion()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->sHwVersion:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "ro.boot.hwversion"

    const-string v1, ""

    .line 158
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get(\"ro.boot.hwversion\", \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->sHwVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->sHwVersion:Ljava/lang/String;

    return-object p0
.end method

.method private final getMtzInnerIdInfo(Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
    .locals 6

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 123
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 124
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 12708
    array-length v1, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, p2, v4

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_2

    :cond_0
    move v5, v3

    :goto_2
    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_3
    if-nez v1, :cond_3

    goto :goto_4

    .line 129
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "productid"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 132
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pickerid"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    .line 135
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 137
    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    :cond_7
    return-void
.end method

.method private final getMtzInnerInputStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;
    .locals 0

    :try_start_0
    const-string p0, "description.xml"

    .line 144
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final initMamlId(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 3

    .line 101
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File does not exist.  uri: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    new-instance p2, Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 108
    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->getMtzInnerIdInfo(Ljava/util/zip/ZipFile;[Ljava/lang/String;)V

    const/4 p2, 0x0

    aget-object v1, v0, p2

    if-nez v1, :cond_1

    const/16 v1, 0xf

    .line 110
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    :cond_1
    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    const/16 v2, 0xd

    .line 113
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, p2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PickerId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p0, v0, p2

    .line 116
    iput-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    aget-object p0, v0, v1

    .line 117
    iput-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    return-void
.end method

.method private final obtainValidItemFlags(Landroid/content/res/TypedArray;)I
    .locals 1

    const/16 p0, 0x8

    const/4 v0, -0x1

    .line 92
    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    :cond_0
    return p0
.end method


# virtual methods
.method public final addMamlWidget(Ljava/util/ArrayList;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "valuesList"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "values"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "typedArray"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x16

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_1

    .line 42
    iget-object v5, v0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->DOESFILEURL:Ljava/lang/String;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v3, v5, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v6, v11, [Ljava/lang/String;

    .line 43
    iget-object v5, v0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->SEPARATESTRING:Ljava/lang/String;

    aput-object v5, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v13, :cond_1

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->MAML:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->getHwVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    iget-object v6, v0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uri_hwid  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "file://"

    .line 47
    invoke-static {v5, v6, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 48
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v15, v5

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 49
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v13, :cond_1

    .line 50
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->doesFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 54
    :cond_0
    iget-object v5, v0, Lcom/miui/home/launcher/defaultlayout/MamlNode;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uri==  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  +      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    new-instance v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    const/16 v6, 0x12

    .line 61
    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    const/16 v6, 0x13

    .line 62
    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    const/16 v7, 0x3f3

    .line 63
    iput v7, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const/16 v7, 0x17

    .line 64
    invoke-virtual {v2, v7, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const/16 v7, 0x14

    .line 65
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iput-object v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v7

    iput v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    const/16 v7, 0xc

    .line 68
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    .line 69
    invoke-direct {v0, v2}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->obtainValidItemFlags(Landroid/content/res/TypedArray;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "itemFlags"

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "spanX"

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget v7, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "spanY"

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "itemType"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_2

    .line 73
    invoke-direct {v0, v5, v3, v2}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->initMamlId(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    .line 74
    :cond_2
    iget-object v0, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v2, "product_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v0, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {v5}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 79
    iget-object v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v6, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 78
    invoke-static {v0, v2, v3, v6}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    invoke-virtual {v5}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mamlInfo.extraIntentParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 35
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContentValuesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/Node;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->addMamlWidget(Ljava/util/ArrayList;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/Node;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
