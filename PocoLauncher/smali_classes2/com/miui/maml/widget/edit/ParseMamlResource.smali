.class public final Lcom/miui/maml/widget/edit/ParseMamlResource;
.super Ljava/lang/Object;
.source "ParseMamlResource.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;


# direct methods
.method public static synthetic $r8$lambda$SRdHV1HVk7QPad6Vxh4sCcmSKD4(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$lambda-4(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W25twHYA_B8X2Y9a7-BlP6-gbW0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$lambda-5(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bFskKPYGnHbJmDycU3th354wj_4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$lambda-3(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/widget/edit/ParseMamlResource;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseMamlResource;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    .line 155
    invoke-virtual/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;IIILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final generateMamlWidget$lambda-3(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "$noName_0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "widget_"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 191
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final generateMamlWidget$lambda-4(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileName"

    .line 197
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dark"

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private static final generateMamlWidget$lambda-5(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileName"

    .line 200
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dark"

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static synthetic importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 38
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object p5

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseCustomLinkFromResPath(Ljava/lang/String;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    .locals 5

    const/4 p0, 0x0

    .line 238
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "var_config.xml"

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v2, "it"

    .line 243
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->parseVarXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/widget/edit/BaseConfig;

    .line 246
    instance-of v4, v3, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 252
    :goto_0
    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object p0, v3

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_2
    move-object v3, p0

    .line 254
    :goto_2
    :try_start_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 239
    :try_start_8
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    :goto_3
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    .line 256
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "fail to parse custom link from resPath: "

    .line 258
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mamlWidgetSdk"

    .line 257
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_5
    check-cast v3, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    return-object v3
.end method

.method public static synthetic unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 115
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final generateMamlWidget(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "III)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;IIILjava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "mamlWidgetSdk"

    const-string v0, "folder"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/io/File;

    const-string v7, "meta.json"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 166
    :try_start_0
    invoke-static {v0, v8, v7, v8}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    const-string v0, "generateMamlWidget read meta json error - "

    .line 168
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 171
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v10, Lcom/miui/maml/widget/edit/MamlResource;

    invoke-virtual {v0, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/widget/edit/MamlResource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateMamlWidget fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", invalid gson. "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "generateMamlWidget meta json invalid. in "

    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 181
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "emptyList()"

    const-string v11, " != "

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getTypeTag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMamlWidget fail. typeTag not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getTypeTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-lez v4, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getVersionCode()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMamlWidget fail. version not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getVersionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 190
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    sget-object v5, Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 192
    array-length v9, v5

    const/16 v17, 0x0

    if-nez v9, :cond_3

    move v9, v7

    goto :goto_2

    :cond_3
    move/from16 v9, v17

    :goto_2
    xor-int/2addr v9, v7

    if-eqz v9, :cond_f

    .line 193
    array-length v15, v5

    move/from16 v9, v17

    :goto_3
    if-ge v9, v15, :cond_e

    aget-object v10, v5, v9

    add-int/lit8 v18, v9, 0x1

    .line 194
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 195
    new-instance v11, Ljava/io/File;

    const-string v12, "preview"

    invoke-direct {v11, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    new-instance v12, Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda0;

    invoke-direct {v12, v9}, Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 199
    new-instance v13, Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda1;

    invoke-direct {v13, v9}, Lcom/miui/maml/widget/edit/ParseMamlResource$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    if-eqz v12, :cond_5

    .line 203
    array-length v13, v12

    if-nez v13, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    move/from16 v13, v17

    :goto_4
    xor-int/2addr v13, v7

    if-eqz v13, :cond_5

    aget-object v12, v12, v17

    goto :goto_5

    :cond_5
    move-object v12, v8

    :goto_5
    if-eqz v11, :cond_7

    .line 205
    array-length v13, v11

    if-nez v13, :cond_6

    move v13, v7

    goto :goto_6

    :cond_6
    move/from16 v13, v17

    :goto_6
    xor-int/2addr v13, v7

    if-eqz v13, :cond_7

    aget-object v11, v11, v17

    goto :goto_7

    :cond_7
    move-object v11, v8

    :goto_7
    const-string v13, "fileName"

    .line 206
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/miui/maml/widget/edit/MamlutilKt;->firstNumber(Ljava/lang/String;)I

    move-result v13

    .line 207
    invoke-static {v9}, Lcom/miui/maml/widget/edit/MamlutilKt;->lastNumber(Ljava/lang/String;)I

    move-result v9

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    if-ne v13, v2, :cond_8

    if-eq v9, v3, :cond_9

    :cond_8
    move-object/from16 v8, p0

    move/from16 v19, v15

    goto/16 :goto_b

    .line 212
    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->isCustomEdit()Z

    move-result v14

    const-string v7, "oneWidget.path"

    if-eqz v14, :cond_a

    .line 213
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct {v8, v14}, Lcom/miui/maml/widget/edit/ParseMamlResource;->parseCustomLinkFromResPath(Ljava/lang/String;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 215
    invoke-virtual {v14}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->getLink()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    goto :goto_8

    :cond_a
    move-object/from16 v8, p0

    :cond_b
    const/16 v16, 0x0

    .line 219
    :goto_8
    new-instance v14, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 220
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v9, "create(x, y)"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_c

    .line 221
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_c
    const-string v7, ""

    :goto_9
    const-string v9, "if (white != null) white.path else \"\""

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v11, :cond_d

    const/16 v19, 0x0

    goto :goto_a

    .line 222
    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    :goto_a
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getEditable()Z

    move-result v20

    move-object v9, v14

    move-object v12, v10

    move-object v10, v0

    move-object v11, v13

    move-object v13, v7

    move-object v7, v14

    move-object/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v20

    .line 219
    invoke-direct/range {v9 .. v16}, Lcom/miui/maml/widget/edit/MamlWidget;-><init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 218
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    move/from16 v9, v18

    move/from16 v15, v19

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    .line 226
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateMamlWidget empty list. maybe xy not match. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_f
    const-string v0, "generateMamlWidget fail. no widget_AxB file"

    .line 230
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_c
    return-object v4
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p5

    const-string v1, "gson"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 40
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    const/4 v13, 0x0

    const-string v12, "mamlWidgetSdk"

    if-nez v1, :cond_16

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_4

    goto/16 :goto_12

    :cond_4
    if-eqz p4, :cond_7

    .line 44
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v11, p4

    goto :goto_6

    .line 45
    :cond_7
    :goto_5
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_6
    :try_start_0
    const-string v1, "folder"

    .line 51
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    new-instance v1, Ljava/io/File;

    const-string v2, "description.xml"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 59
    new-instance v2, Lcom/miui/maml/widget/edit/local/ManifestManager;

    invoke-direct {v2, v1}, Lcom/miui/maml/widget/edit/local/ManifestManager;-><init>(Ljava/io/File;)V

    .line 61
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "0"

    .line 62
    :cond_8
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getTypeTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_9

    move-object v5, v4

    goto :goto_7

    :cond_9
    move-object v5, v3

    .line 63
    :goto_7
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isEditable()Z

    move-result v16

    .line 64
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isCustomEdit()Z

    move-result v17

    .line 65
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getTitles()Ljava/util/Map;

    move-result-object v9

    const-string v3, "manager.titles"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getDescriptions()Ljava/util/Map;

    move-result-object v10

    const-string v3, "manager.descriptions"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getAuthors()Ljava/util/Map;

    move-result-object v6

    const-string v3, "manager.authors"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getDesigners()Ljava/util/Map;

    move-result-object v3

    const-string v7, "manager.designers"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getWidgetCategory()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    move-object/from16 v19, v4

    goto :goto_8

    :cond_a
    move-object/from16 v19, v7

    .line 70
    :goto_8
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isAutoTheme()Z

    move-result v20

    .line 71
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getBindApp()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    move-object/from16 v21, v4

    goto :goto_9

    :cond_b
    move-object/from16 v21, v7

    .line 72
    :goto_9
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getBindAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    move-object/from16 v22, v4

    goto :goto_a

    :cond_c
    move-object/from16 v22, v7

    .line 73
    :goto_a
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getBindAppPermission()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v23, v4

    goto :goto_b

    :cond_d
    move-object/from16 v23, v2

    .line 76
    :goto_b
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v1

    goto :goto_c

    :catch_0
    const-string v2, "description use wrong version format. "

    .line 78
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    .line 80
    :goto_c
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "fallback"

    if-eqz v1, :cond_10

    if-eq v1, v8, :cond_e

    .line 83
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_f

    goto :goto_d

    .line 82
    :cond_e
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_f
    move-object v7, v1

    goto :goto_e

    :cond_10
    :goto_d
    move-object v7, v4

    .line 85
    :goto_e
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eq v1, v8, :cond_11

    .line 88
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_f

    .line 87
    :cond_11
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_12
    move-object v8, v1

    goto :goto_10

    :cond_13
    :goto_f
    move-object v8, v4

    .line 90
    :goto_10
    new-instance v4, Lcom/miui/maml/widget/edit/MamlResource;

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v0, v3

    move/from16 v3, v18

    move-object/from16 v24, v4

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v18, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object/from16 v9, v18

    move-object v10, v0

    move-object/from16 v25, v11

    move/from16 v11, v16

    move-object/from16 v26, v12

    move/from16 v12, v17

    move-object/from16 v13, v19

    move-object v0, v14

    move/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    invoke-direct/range {v1 .. v17}, Lcom/miui/maml/widget/edit/MamlResource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v24

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(mr)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "meta.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    const-string v1, "write meta json fail. "

    .line 100
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move-object/from16 v1, p3

    if-eqz v1, :cond_14

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-object v2

    :cond_15
    move-object v1, v12

    move-object v4, v13

    const-string v0, "importMamlResource fail . no desc"

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_2
    move-exception v0

    move-object v1, v12

    move-object v4, v13

    const-string v2, "unzip fail. "

    .line 53
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_16
    :goto_12
    move-object v1, v12

    move-object v4, v13

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importMamlResource fail. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public final unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "zipPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetFolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string p0, "/"

    const-string v0, "../"

    const-string v1, "zipPath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetFolder"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "matchPrefix"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 122
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 123
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 124
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v0, v6, v5, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4, p3, v6, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "utf-8"

    .line 127
    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "decode(name, \"utf-8\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v6, v5, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v2, "mamlWidgetSdk"

    const-string v3, "unzip() suspect to be a hack act when unzip"

    .line 128
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p2, p0, v6, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    goto :goto_1

    :cond_3
    move-object v7, p0

    .line 132
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    .line 138
    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 139
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v7, "input"

    .line 140
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4, v6, v5, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    :try_start_4
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 139
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 138
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 145
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 117
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 118
    :cond_6
    :try_start_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.util.Enumeration<java.util.zip.ZipEntry>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p0

    .line 117
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
