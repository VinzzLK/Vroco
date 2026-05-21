.class public Lcom/miui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/LanguageHelper$Plurals;
    }
.end annotation


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final ID_OTHER:I = 0x1000004

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final NAME_TAG:Ljava/lang/String; = "name"

.field private static final PLURALS_TAG:Ljava/lang/String; = "plurals"

.field private static final QUANTITY_TAG:Ljava/lang/String; = "quantity"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"

.field private static final VALUE_TAG:Ljava/lang/String; = "value"

.field private static pluralRules:Landroid/icu/text/PluralRules;


# direct methods
.method public static synthetic $r8$lambda$5ek-LC9SQd2JZerj51s8SkFGwfI(Lcom/miui/maml/data/Variables;Lcom/miui/maml/LanguageHelper$Plurals;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/maml/LanguageHelper;->lambda$setPluralsVariables$0(Lcom/miui/maml/data/Variables;Lcom/miui/maml/LanguageHelper$Plurals;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .locals 2

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p0, 0x1000004

    return p0

    :pswitch_0
    const p0, 0x1000005

    return p0

    :pswitch_1
    const p0, 0x1000009

    return p0

    :pswitch_2
    const p0, 0x1000007

    return p0

    :pswitch_3
    const p0, 0x1000006

    return p0

    :pswitch_4
    const p0, 0x1000008

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18b98 -> :sswitch_4
        0x1ae66 -> :sswitch_3
        0x1c24c -> :sswitch_2
        0x33065f -> :sswitch_1
        0x38fea8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$setPluralsVariables$0(Lcom/miui/maml/data/Variables;Lcom/miui/maml/LanguageHelper$Plurals;Ljava/util/HashMap;)V
    .locals 4

    .line 189
    iget-object v0, p1, Lcom/miui/maml/LanguageHelper$Plurals;->PluralsValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 190
    sget-object v2, Lcom/miui/maml/LanguageHelper;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/maml/LanguageHelper;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "%d"

    .line 193
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    double-to-long v0, v0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 196
    :cond_0
    iget-object p1, p1, Lcom/miui/maml/LanguageHelper$Plurals;->PluralsName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "strings/strings.xml"

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "LanguageHelper"

    if-nez v3, :cond_2

    .line 53
    invoke-virtual {p1, v1}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "no available string resources to load."

    .line 54
    invoke-static {v5, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    move-object v1, v2

    .line 60
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 63
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {p1, v1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 72
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object p0

    sput-object p0, Lcom/miui/maml/LanguageHelper;->pluralRules:Landroid/icu/text/PluralRules;

    .line 80
    invoke-static {v1, p1}, Lcom/miui/maml/LanguageHelper;->setPluralsList(Lorg/w3c/dom/Document;Lcom/miui/maml/ResourceManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " load Plurals fail,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_2
    invoke-static {v1, p2}, Lcom/miui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 67
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 72
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return v4

    :goto_4
    if-eqz v0, :cond_6

    .line 72
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :cond_6
    :goto_5
    throw p0
.end method

.method private static setPluralsList(Lorg/w3c/dom/Document;Lcom/miui/maml/ResourceManager;)V
    .locals 10

    const-string v0, "resources"

    .line 136
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-gtz v1, :cond_0

    const-string v0, "strings"

    .line 138
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 144
    invoke-interface {v0, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "plurals"

    .line 145
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getPluralsMap()Ljava/util/HashMap;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    move v1, p0

    .line 148
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 149
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 151
    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "name"

    .line 153
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "value"

    .line 154
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "item"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_2

    .line 158
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v6, p0

    .line 161
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 162
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 163
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v4, :cond_2

    .line 164
    check-cast v8, Lorg/w3c/dom/Element;

    const-string v9, "quantity"

    .line 166
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-static {v9}, Lcom/miui/maml/LanguageHelper;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v9

    .line 168
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    :cond_3
    new-instance v2, Lcom/miui/maml/LanguageHelper$Plurals;

    invoke-direct {v2, v3, v5}, Lcom/miui/maml/LanguageHelper$Plurals;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static setPluralsVariables(Lcom/miui/maml/data/Variables;Lcom/miui/maml/ResourceManager;)V
    .locals 6

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 182
    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getLastPluralsUpdateTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ResourceManager;->setLastPluralsUpdateTime(J)V

    .line 186
    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getPluralsMap()Ljava/util/HashMap;

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPluralsVariables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguageHelper"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/miui/maml/LanguageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/maml/LanguageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/data/Variables;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p0, "setPluralsVariables: end"

    .line 199
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z
    .locals 7

    const-string v0, "resources"

    .line 100
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    const-string v0, "strings"

    .line 102
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-gtz p0, :cond_0

    return v3

    :cond_0
    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    .line 110
    :goto_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "string"

    .line 111
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 112
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 113
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "name"

    .line 114
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_2

    .line 115
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v5, "value"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v5, "\\\\"

    const-string v6, ""

    .line 120
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v4, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
