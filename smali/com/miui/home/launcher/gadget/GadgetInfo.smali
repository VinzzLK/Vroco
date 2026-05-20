.class public Lcom/miui/home/launcher/gadget/GadgetInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "GadgetInfo.java"


# static fields
.field private static final sCategoryMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryId:I

.field private mGadgetId:I

.field private mIconResId:I

.field private mIdentityInfo:Ljava/lang/String;

.field private mIsDualClock:Z

.field private mMtzFile:Ljava/util/zip/ZipFile;

.field private mMtzLoaded:Z

.field private mMtzMockWidgetId:I

.field private mMtzMockWidgetProvider:Landroid/content/ComponentName;

.field private mMtzTitle:Ljava/lang/String;

.field private mMtzUri:Landroid/net/Uri;

.field private mPreviewImageResId:I

.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "player"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "weather"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "calculator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    .line 86
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzFile:Ljava/util/zip/ZipFile;

    .line 88
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 89
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    .line 92
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    .line 114
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    const/4 p1, 0x5

    .line 115
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 120
    iput p7, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->calculateGadgetSpan(II)V

    .line 122
    iput p4, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleResId:I

    .line 123
    iput p5, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconResId:I

    .line 124
    iput p6, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", mCategoryId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", title="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIdentityInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 139
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return-void
.end method

.method private getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 430
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 431
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1
.end method

.method private getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 441
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 443
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMtzZipFile()Ljava/util/zip/ZipFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    new-instance p0, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 350
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateGadgetSpan(II)V
    .locals 1

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->is1x1Gadget(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->fullScreenWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 132
    iput p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    goto :goto_0

    .line 134
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 135
    iput p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 0

    .line 515
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 1

    .line 525
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "description.xml"

    .line 264
    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 266
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 267
    invoke-interface {v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, p0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, p0

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 288
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_8

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    .line 294
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v2, v0

    .line 284
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 288
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_8

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_8
    move-exception p1

    move-object v2, v0

    .line 282
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_4

    .line 288
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_8

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_9
    move-exception p1

    move-object v2, v0

    .line 279
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_5

    .line 288
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_8

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :goto_6
    if-eqz v0, :cond_6

    .line 288
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_a
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    .line 294
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    :cond_7
    :goto_9
    throw p1

    :cond_8
    :goto_a
    return v1
.end method

.method public getCategoryId()I
    .locals 2

    .line 221
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    :goto_0
    return p0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "description.xml"

    .line 309
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 311
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 312
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 315
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    .line 317
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 333
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 336
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_a

    .line 339
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_5
    move-exception p0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v0, v1

    goto :goto_6

    :catch_7
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    .line 329
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    .line 333
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v0, :cond_8

    .line 336
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_8
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    .line 327
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_4

    .line 333
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_8

    .line 336
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_9
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    .line 324
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_5

    .line 333
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_8

    .line 336
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_6

    .line 333
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_a
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    .line 339
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 341
    :cond_7
    :goto_9
    throw p0

    :cond_8
    :goto_a
    return-object v1
.end method

.method public getGadgetId()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    return p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumbnail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/thumbnail_xhdpi.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "thumbnail/thumbnail_xhdpi.png"

    .line 176
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070745

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 180
    invoke-static {v0, p1, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconResId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getMtzMockWidgetId()I
    .locals 0

    .line 476
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    return p0
.end method

.method public getMtzMockWidgetProvider()Landroid/content/ComponentName;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getMtzTitle()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getMtzUri()Landroid/net/Uri;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/preview_0.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "preview/preview_0.jpg"

    .line 205
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 214
    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleResId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getWidgetCategoryId()I
    .locals 2

    .line 538
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    :goto_0
    return p0
.end method

.method public is1x1Gadget(II)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMtzGadget()Z
    .locals 1

    .line 457
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 2

    .line 511
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 481
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 482
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    .line 483
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 485
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadgetFromUri(Landroid/net/Uri;)Z

    :cond_0
    const/16 p1, 0x9

    .line 487
    invoke-interface {p2, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    :cond_1
    return-void
.end method

.method public loadMtzGadget()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 356
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "description.xml"

    .line 365
    invoke-direct {p0, v5, v6}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    .line 367
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 368
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 370
    :cond_1
    :goto_0
    invoke-static {v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v9, "MIUI-Theme"

    .line 371
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "category"

    .line 372
    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 374
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    :cond_2
    const-string/jumbo v8, "size"

    .line 376
    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, ":"

    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 379
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 380
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v9, v8}, Lcom/miui/home/launcher/gadget/GadgetInfo;->calculateGadgetSpan(II)V

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "title"

    .line 383
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v8, "locale"

    .line 384
    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v8, v0

    .line 388
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v9, "mock_widget"

    .line 389
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 390
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    .line 402
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v5, :cond_a

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception v7

    move-object v6, v4

    goto :goto_1

    :catch_3
    move-exception v7

    move-object v6, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v4

    goto :goto_5

    :catch_4
    move-exception v7

    move-object v5, v4

    move-object v6, v5

    .line 399
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_8

    .line 402
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v5, :cond_a

    goto :goto_3

    :catch_5
    move-exception v7

    move-object v5, v4

    move-object v6, v5

    .line 396
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_9

    .line 402
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 405
    :goto_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 408
    :cond_a
    iget v5, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-lez v5, :cond_10

    iget v5, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-lez v5, :cond_10

    .line 409
    iget v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    goto :goto_4

    :cond_b
    const/16 v3, 0x9

    :goto_4
    iput v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    .line 410
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 412
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    .line 414
    :cond_c
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 415
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    .line 417
    :cond_d
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    return v2

    :catchall_2
    move-exception p0

    move-object v4, v6

    :goto_5
    if-eqz v4, :cond_e

    .line 402
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v5, :cond_f

    .line 405
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 407
    :cond_f
    throw p0

    .line 421
    :cond_10
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return v3
.end method

.method public loadMtzGadgetFromUri(Landroid/net/Uri;)Z
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadget()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public loadSpan(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 500
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 501
    iget p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uri"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 505
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gadgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzMockWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzMockWidgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setIsDualClock(Z)V
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIsDualClock:Z

    return-void
.end method

.method public setMtzMockWidgetId(I)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gadget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
