.class Lcom/miui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lcom/miui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public static synthetic $r8$lambda$npA6H23vCRyxMIhC7vdMAocQ3wU(Lcom/miui/maml/data/ContentProviderBinder$List;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$List;->lambda$fill$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 223
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    const-string v0, "maxCount"

    const v1, 0x7fffffff

    .line 224
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 225
    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method

.method private addItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$fill$0(Ljava/util/ArrayList;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$List;->addItems(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    const-string v1, "ContentProviderBinder"

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 234
    instance-of v2, v0, Lcom/miui/maml/elements/ListScreenElement;

    if-eqz v2, :cond_1

    .line 235
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement;

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to find list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 245
    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    .line 248
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v6, v6, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal column:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 257
    iget v5, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v1, v5, :cond_4

    move v1, v5

    .line 260
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_d

    .line 262
    new-array v7, v2, [Ljava/lang/Object;

    move v8, v4

    :goto_2
    if-ge v8, v2, :cond_c

    const/4 v9, 0x0

    .line 264
    aput-object v9, v7, v8

    .line 265
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 266
    aget v10, v3, v8

    .line 267
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 268
    sget-object v11, Lcom/miui/maml/data/ContentProviderBinder$2;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v12, v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_a

    const/4 v13, 0x6

    if-eq v12, v13, :cond_9

    .line 279
    iget-object v9, v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_8

    const/4 v11, 0x2

    if-eq v9, v11, :cond_7

    const/4 v11, 0x3

    if-eq v9, v11, :cond_6

    const/4 v11, 0x4

    if-eq v9, v11, :cond_5

    goto :goto_3

    .line 290
    :cond_5
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 287
    :cond_6
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 284
    :cond_7
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 281
    :cond_8
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 273
    :cond_9
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-eqz v9, :cond_b

    .line 275
    array-length v10, v9

    invoke-static {v9, v4, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 270
    :cond_a
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    :cond_b
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 297
    :cond_c
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 301
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_e

    .line 302
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$List$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v5}, Lcom/miui/maml/data/ContentProviderBinder$List$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/data/ContentProviderBinder$List;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 306
    :cond_e
    invoke-direct {p0, v5}, Lcom/miui/maml/data/ContentProviderBinder$List;->addItems(Ljava/util/ArrayList;)V

    :goto_4
    return-void
.end method
