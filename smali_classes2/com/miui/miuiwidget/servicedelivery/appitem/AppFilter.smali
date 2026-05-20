.class public Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;
.super Ljava/lang/Object;
.source "AppFilter.java"


# static fields
.field public static final BUILT_IN_APP_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUILT_IN_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppFilter"

.field private static final VOICE_ASSIST_PKG_NAME:Ljava/lang/String; = "com.miui.voiceassist"


# instance fields
.field private final adMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final count:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_PACKAGES:Ljava/util/List;

    const-string v1, "com.android.browser"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.camera"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.mms"

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.settings"

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.market"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.fileexplorer"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.contacts"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.miservice"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.weather2"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.calendar"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.calculator"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.notes"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.deskclock"

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.video"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.player"

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.duokan.reader"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.shop"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_APP_ITEMS:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    invoke-direct {v2}, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;-><init>()V

    .line 59
    iput-object v1, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    const-string v1, "native"

    .line 60
    iput-object v1, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionType:Ljava/lang/String;

    const-string v1, "defaultSystem"

    .line 61
    iput-object v1, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->category:Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_APP_ITEMS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->appList:Ljava/util/List;

    .line 67
    iget-object v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->appList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->adMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->adMap:Ljava/util/Map;

    .line 69
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    return-void
.end method

.method private isValid(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 130
    iget-object v0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionUrl:Ljava/lang/String;

    .line 131
    iget-object v1, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionType:Ljava/lang/String;

    .line 132
    iget-object v2, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 139
    :cond_0
    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    const-string v3, "AppFilter"

    if-eqz p4, :cond_1

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "app is privacy app: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 145
    :cond_1
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "item is selected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 151
    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->isVoiceAssist(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "filter voiceassist item"

    .line 152
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string p0, "native"

    .line 156
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "deeplink"

    .line 157
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 159
    :cond_4
    invoke-static {p1, v2}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "app not install "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 164
    :cond_5
    invoke-static {p1, v2}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->hasLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "app doesn\'t have launch intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 169
    :cond_6
    invoke-interface {p5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "app in docker "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 174
    :cond_7
    iget-object p3, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-interface {p6, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "app at screen "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 181
    :cond_8
    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionType:Ljava/lang/String;

    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 183
    :try_start_0
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 185
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/high16 p2, 0x10000000

    .line 187
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/utils/IntentUtils;->canBeResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid actionUrl: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse uri error uri "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 197
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isValid pkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v4
.end method

.method private isVoiceAssist(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 202
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    const-string p1, "com.miui.voiceassist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setMediumAdItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    .line 234
    iget-object v0, v7, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->adMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 236
    iget v1, v7, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    if-gt v9, v1, :cond_3

    if-gtz v9, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 242
    invoke-direct/range {v0 .. v6}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->isValid(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v9, v9, -0x1

    move-object v0, p2

    .line 243
    invoke-interface {p2, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1

    :cond_2
    move-object v0, p2

    goto :goto_0

    :cond_3
    :goto_2
    move-object v0, p2

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index out of bound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppFilter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setSmallAdItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    .line 216
    iget-object v0, v7, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->adMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x2

    :goto_0
    move v9, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    iget v1, v7, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    if-lt v9, v1, :cond_0

    goto :goto_3

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->isValid(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v9, 0x1

    move-object v1, p2

    .line 221
    invoke-interface {p2, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_2

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public getResult(Landroid/content/Context;IZZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZ)",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/SecurityHelper;->getPrivacyApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 81
    invoke-static {p1}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsInDocker(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResult, screenIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_1

    .line 86
    invoke-static {p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsAtScreen(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    if-eqz p4, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, p2

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->setSmallAdItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, p2

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->setMediumAdItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_2
    const/4 p3, 0x0

    move p4, p3

    .line 98
    :cond_3
    :goto_3
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    if-ge p4, v0, :cond_5

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    invoke-interface {v7, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->appList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, p2

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->isValid(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-interface {v7, p4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    move p2, p3

    .line 113
    :goto_5
    iget p4, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->count:I

    if-ge p3, p4, :cond_9

    .line 114
    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_6

    goto :goto_7

    .line 115
    :cond_6
    :goto_6
    sget-object p4, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_APP_ITEMS:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 116
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    .line 117
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p2, 0x1

    .line 118
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    invoke-interface {v7, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p2, v0

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_9
    return-object v7
.end method
