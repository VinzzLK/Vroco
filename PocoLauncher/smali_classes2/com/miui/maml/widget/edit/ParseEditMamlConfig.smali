.class public final Lcom/miui/maml/widget/edit/ParseEditMamlConfig;
.super Ljava/lang/Object;
.source "ParseEditMamlConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParseEditMamlConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseEditMamlConfig.kt\ncom/miui/maml/widget/edit/ParseEditMamlConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,561:1\n1849#2,2:562\n1849#2,2:564\n1849#2,2:566\n*S KotlinDebug\n*F\n+ 1 ParseEditMamlConfig.kt\ncom/miui/maml/widget/edit/ParseEditMamlConfig\n*L\n435#1:562,2\n440#1:564,2\n445#1:566,2\n*E\n"
.end annotation


# static fields
.field private static final ATTR_DISPLAY_TITLE:Ljava/lang/String; = "displayTitle"

.field private static final ATTR_LOCALE:Ljava/lang/String; = "locale"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SHAPE_TYPE:Ljava/lang/String; = "shapeType"

.field private static final ATTR_SINGLE:Ljava/lang/String; = "single"

.field private static final ATTR_UI_TYPE:Ljava/lang/String; = "uiType"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_VALUE_DARK:Ljava/lang/String; = "valueDark"

.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

.field private static final LOG_TAG:Ljava/lang/String; = "ParseEditMamlConfig"

.field private static final TAG_ALIGN_STYLE:Ljava/lang/String; = "Align"

.field private static final TAG_COLOR:Ljava/lang/String; = "Color"

.field private static final TAG_COLOR_GROUP:Ljava/lang/String; = "ColorGroup"

.field private static final TAG_CUSTOM_EDIT_LINK:Ljava/lang/String; = "CustomEditLink"

.field private static final TAG_FONT_SIZE:Ljava/lang/String; = "FontSize"

.field private static final TAG_IMAGE_PICK:Ljava/lang/String; = "ImagePick"

.field private static final TAG_IMAGE_SELECT:Ljava/lang/String; = "ImageSelect"

.field private static final TAG_INTENT:Ljava/lang/String; = "Intent"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG_MULTI_IMAGE_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MULTI_IMAGE_SELECT:Ljava/lang/String; = "MultiImageSelect"

.field private static final TAG_ON_OFF:Ljava/lang/String; = "OnOff"

.field private static final TAG_SET_DATE:Ljava/lang/String; = "SetDate"

.field private static final TAG_TEXT:Ljava/lang/String; = "Text"

.field public static final VAR_CONFIG:Ljava/lang/String; = "var_config.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseVarXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/BaseConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "ParseEditMamlConfig"

    const-string v1, "inputStream"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    .line 65
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 66
    invoke-interface {v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string p0, "WidgetConfig"

    const/4 v3, 0x2

    .line 68
    invoke-interface {v2, v3, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    .line 71
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 76
    sget-object v5, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    const-string v6, "Text"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "parser"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "Color"

    .line 77
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v6, "FontSize"

    .line 78
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v6, "ColorGroup"

    .line 79
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v6, "Align"

    .line 80
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v6, "CustomEditLink"

    .line 81
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v6, "ImageSelect"

    .line 82
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-string v6, "MultiImageSelect"

    .line 83
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readMultiImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/MultiImageSelect;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v6, "Intent"

    .line 84
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readIntent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/IntentConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v6, "SetDate"

    .line 85
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "OnOff"

    .line 86
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string v6, "ImagePick"

    .line 87
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readImagePick(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImagePickConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 88
    :cond_c
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "load error."

    .line 95
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v2, "load error.."

    .line 93
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private final readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "name"

    .line 244
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "displayTitle"

    .line 245
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "default"

    .line 246
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "from"

    .line 247
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    .line 248
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 250
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Align"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 253
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Language"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 254
    invoke-direct {p0, p1, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 261
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 263
    :cond_3
    :goto_2
    new-instance p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;

    .line 264
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v7

    .line 267
    :goto_3
    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result p1

    .line 268
    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    .line 269
    invoke-static {v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p0

    move-object v5, v0

    move v6, p1

    .line 263
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/AlignStyleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p0
.end method

.method private final readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Color"

    .line 142
    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 143
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayTitle"

    .line 144
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 147
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    :catch_0
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eq v7, v9, :cond_4

    if-eq v7, v1, :cond_1

    if-eq v7, v10, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 150
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Language"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    invoke-direct {p0, p1, v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    .line 154
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    const-string v11, "parser.nextText()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x1e

    if-lt v7, v9, :cond_3

    goto :goto_2

    .line 165
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 167
    :cond_4
    :goto_2
    invoke-interface {p1, v10, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p0, Lcom/miui/maml/widget/edit/ColorConfig;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v8

    :goto_3
    invoke-direct {p0, v5, v6, v2, v0}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object p0
.end method

.method private final readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ColorGroup"

    .line 174
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 175
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "displayTitle"

    .line 176
    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "uiType"

    .line 177
    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 179
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 180
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_2

    if-eq v9, v12, :cond_1

    :cond_0
    move-object/from16 v11, p0

    goto :goto_1

    .line 197
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 183
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Language"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v11, p0

    .line 184
    invoke-direct {v11, v0, v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object/from16 v11, p0

    :try_start_0
    const-string v13, "values"

    .line 187
    invoke-interface {v0, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 188
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "colors"

    .line 189
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, ","

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 190
    new-instance v15, Lcom/miui/maml/widget/edit/ColorConfig;

    const-string v1, "varName"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v13, v2, v2, v14}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x1e

    if-lt v1, v9, :cond_4

    goto :goto_2

    .line 201
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    :catch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 203
    :cond_5
    :goto_2
    invoke-interface {v0, v12, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v9, Lcom/miui/maml/widget/edit/ColorGroupConfig;

    .line 205
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v3, v2

    goto :goto_3

    :cond_6
    move-object v3, v10

    .line 208
    :goto_3
    invoke-static {v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v4

    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/ColorGroupConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)V

    return-object v9
.end method

.method private final readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    .locals 2

    const/4 p0, 0x0

    const-string v0, "deeplink"

    .line 274
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parser.getAttributeValue(null, \"deeplink\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1, p0}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final readImagePick(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImagePickConfig;
    .locals 4

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string v1, "ImagePick"

    .line 534
    invoke-interface {p1, p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "name"

    .line 535
    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v3, 0x3

    .line 537
    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance p1, Lcom/miui/maml/widget/edit/ImagePickConfig;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/miui/maml/widget/edit/ImagePickConfig;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private final readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;
    .locals 17

    move-object/from16 v0, p1

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "ImageSelect"

    .line 282
    invoke-interface {v0, v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    .line 283
    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayTitle"

    .line 284
    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uiType"

    .line 285
    invoke-interface {v0, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "width"

    .line 286
    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, "300"

    :cond_0
    const-string v12, "height"

    .line 287
    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v12, "200"

    .line 288
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 289
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 290
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    :goto_0
    const/4 v15, 0x3

    const/4 v3, 0x1

    if-eq v13, v3, :cond_9

    if-eq v13, v2, :cond_4

    if-eq v13, v15, :cond_3

    :cond_2
    move-object/from16 v2, p0

    goto :goto_2

    .line 309
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 293
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Language"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, p0

    .line 294
    invoke-direct {v2, v0, v14}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    move-object/from16 v2, p0

    const/4 v3, 0x0

    .line 296
    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 298
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v2, "parser.nextText()"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v16, :cond_7

    if-eqz v15, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    move/from16 v16, v3

    .line 303
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x32

    if-lt v2, v3, :cond_8

    goto :goto_3

    .line 313
    :cond_8
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    :catch_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    :goto_3
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 315
    invoke-interface {v0, v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v13, Lcom/miui/maml/widget/edit/ImageSelectConfig;

    .line 317
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v14, v3

    :cond_a
    if-eqz v16, :cond_b

    move-object v5, v1

    goto :goto_4

    :cond_b
    move-object v5, v3

    .line 322
    :goto_4
    invoke-static {v11}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v6

    .line 323
    invoke-static {v12}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    .line 324
    invoke-static {v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v10

    move-object v0, v13

    move-object v1, v7

    move-object v2, v9

    move-object v3, v14

    move v7, v8

    move v8, v10

    .line 316
    invoke-direct/range {v0 .. v8}, Lcom/miui/maml/widget/edit/ImageSelectConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;III)V

    return-object v13
.end method

.method private final readIntent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/IntentConfig;
    .locals 24

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Intent"

    .line 404
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 405
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "displayTitle"

    .line 406
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "action"

    .line 407
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "package"

    .line 408
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "class"

    .line 409
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "uri"

    .line 410
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "flags"

    .line 411
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "-1"

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v5, "returnValue"

    .line 412
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "valueType"

    .line 413
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "defaultValue"

    .line 414
    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 416
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 417
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const/4 v1, 0x1

    if-eq v15, v1, :cond_4

    const/4 v1, 0x2

    if-eq v15, v1, :cond_3

    const/4 v1, 0x3

    if-eq v15, v1, :cond_2

    :cond_1
    move-object/from16 v1, p0

    goto :goto_1

    .line 424
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 420
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v15, "Language"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    .line 421
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 428
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v1, 0x3

    const/4 v15, 0x0

    .line 430
    invoke-interface {v0, v1, v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    if-eqz v14, :cond_6

    .line 434
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v16, v21

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v16, 0x1

    :goto_4
    const-string v22, ","

    if-nez v16, :cond_7

    .line 435
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 562
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 436
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 v23, v15

    :cond_8
    if-eqz v5, :cond_a

    .line 439
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v14, v21

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v14, 0x1

    :goto_7
    if-nez v14, :cond_b

    .line 440
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v15, v5

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 564
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 441
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    if-eqz v8, :cond_c

    .line 444
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/16 v21, 0x1

    :cond_d
    if-nez v21, :cond_e

    .line 445
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v15, v8

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 566
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 446
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 449
    :cond_e
    new-instance v17, Lcom/miui/maml/widget/edit/IntentConfig;

    .line 450
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v8, v23

    goto :goto_a

    :cond_f
    move-object v8, v2

    :goto_a
    move-object/from16 v5, v17

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    .line 449
    invoke-direct/range {v5 .. v16}, Lcom/miui/maml/widget/edit/IntentConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v17
.end method

.method private final readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "locale"

    .line 542
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayTitle"

    .line 543
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 545
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final readMultiImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/MultiImageSelect;
    .locals 19

    move-object/from16 v0, p1

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "MultiImageSelect"

    .line 332
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 333
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayTitle"

    .line 334
    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "uiType"

    .line 335
    invoke-interface {v0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "shapeType"

    .line 336
    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v10, "0"

    :cond_0
    const-string v11, "single"

    .line 337
    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "true"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "width"

    .line 338
    invoke-interface {v0, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v12, "300"

    :cond_1
    const-string v13, "height"

    .line 339
    invoke-interface {v0, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v13, "200"

    .line 340
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 341
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .line 342
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    const/4 v2, 0x1

    if-eq v14, v2, :cond_a

    if-eq v14, v1, :cond_5

    const/4 v1, 0x3

    if-eq v14, v1, :cond_4

    :cond_3
    move-object/from16 v1, p0

    goto :goto_2

    .line 362
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 345
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Language"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v1, p0

    .line 346
    invoke-direct {v1, v0, v15}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    move-object/from16 v1, p0

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readMultiImageSelectItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ItemConfig;

    move-result-object v2

    .line 349
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/ItemConfig;->getSubtitle()Ljava/lang/String;

    move-result-object v18

    .line 351
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/ItemConfig;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v17, :cond_8

    if-eqz v18, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    move/from16 v2, v16

    :goto_1
    move/from16 v17, v2

    .line 356
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x32

    if-lt v1, v2, :cond_9

    goto :goto_3

    .line 366
    :cond_9
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    :catch_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_a
    :goto_3
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 368
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v14, Lcom/miui/maml/widget/edit/MultiImageSelect;

    .line 370
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v4, v2

    goto :goto_4

    :cond_b
    move-object v4, v15

    .line 376
    :goto_4
    invoke-static {v12}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v12

    .line 377
    invoke-static {v13}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v13

    .line 378
    invoke-static {v9}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v9

    .line 379
    invoke-static {v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v10

    move-object v0, v14

    move-object v1, v7

    move-object v2, v8

    move v3, v11

    move v7, v12

    move v8, v13

    .line 369
    invoke-direct/range {v0 .. v10}, Lcom/miui/maml/widget/edit/MultiImageSelect;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;Ljava/util/List;IIII)V

    return-object v14
.end method

.method private final readMultiImageSelectItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ItemConfig;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "item"

    .line 384
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "displayTitle"

    .line 385
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 386
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "valueDark"

    .line 387
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 388
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 389
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 390
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v0, :cond_3

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Language"

    .line 392
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 395
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v8, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 399
    :cond_4
    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance p0, Lcom/miui/maml/widget/edit/ItemConfig;

    const-string p1, ""

    if-nez v3, :cond_5

    move-object v3, p1

    :cond_5
    if-nez v4, :cond_6

    move-object v4, p1

    :cond_6
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/miui/maml/widget/edit/ItemConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method private final readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "OnOff"

    .line 510
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 511
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "displayTitle"

    .line 512
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    .line 513
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    if-nez v6, :cond_0

    move-object v6, v7

    :cond_0
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 514
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 516
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eq v7, v9, :cond_4

    if-eq v7, v0, :cond_2

    if-eq v7, v10, :cond_1

    goto :goto_1

    .line 523
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 519
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Language"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 520
    invoke-direct {p0, p1, v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 527
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 529
    :cond_4
    :goto_2
    invoke-interface {p1, v10, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance p0, Lcom/miui/maml/widget/edit/OnOffConfig;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v8

    :goto_3
    invoke-direct {p0, v4, v5, v1, v6}, Lcom/miui/maml/widget/edit/OnOffConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p0
.end method

.method private final readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "SetDate"

    .line 465
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 466
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "displayTitle"

    .line 467
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "default"

    .line 468
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "repeatVar"

    .line 469
    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "parser.getAttributeValue(null, \"repeatVar\")"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "repeat"

    .line 470
    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "0"

    .line 471
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 472
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 473
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v8, v11, :cond_4

    if-eq v8, v0, :cond_2

    if-eq v8, v12, :cond_1

    goto :goto_1

    .line 480
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 476
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "Language"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 477
    invoke-direct {p0, p1, v9}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 484
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 486
    :cond_4
    :goto_2
    invoke-interface {p1, v12, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    if-eqz v4, :cond_5

    .line 492
    :try_start_0
    invoke-static {v4}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    .line 493
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readSetDate fail, default value invalid."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ParseEditMamlConfig"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_5
    :goto_3
    new-instance v0, Lcom/miui/maml/widget/edit/DateSetConfig;

    .line 500
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v9

    .line 505
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object v4, v0

    move-object v7, v1

    move-wide v8, p0

    .line 499
    invoke-direct/range {v4 .. v11}, Lcom/miui/maml/widget/edit/DateSetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;I)V

    return-object v0
.end method

.method private final readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Text"

    .line 103
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 104
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "parser.getAttributeValue(null, ATTR_NAME)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "displayTitle"

    .line 105
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "editable"

    .line 106
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "minLength"

    .line 107
    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "maxLength"

    .line 108
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 111
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v9, v11, :cond_4

    if-eq v9, v0, :cond_1

    if-eq v9, v12, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 114
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Language"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    invoke-direct {p0, p1, v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    const-string v11, "parser.nextText()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/16 v11, 0x64

    if-lt v9, v11, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 127
    :cond_4
    :goto_2
    invoke-interface {p1, v12, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p0, Lcom/miui/maml/widget/edit/EditTextConfig;

    .line 131
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v10, v1

    .line 134
    :cond_5
    invoke-static {v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result p1

    .line 135
    invoke-static {v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v10

    move v5, v6

    move v6, p1

    .line 128
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/widget/edit/EditTextConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZII)V

    return-object p0
.end method

.method private final readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "name"

    .line 214
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "displayTitle"

    .line 215
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "default"

    .line 216
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "from"

    .line 217
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    .line 218
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 220
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FontSize"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 223
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Language"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    invoke-direct {p0, p1, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 231
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 233
    :cond_3
    :goto_2
    new-instance p0, Lcom/miui/maml/widget/edit/TextSizeConfig;

    .line 234
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v7

    .line 237
    :goto_3
    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result p1

    .line 238
    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    .line 239
    invoke-static {v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p0

    move-object v5, v0

    move v6, p1

    .line 233
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/TextSizeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p0
.end method

.method private final skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    :goto_1
    if-eqz v1, :cond_3

    .line 554
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 551
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final string2int(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
