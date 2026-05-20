.class public Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
    }
.end annotation


# instance fields
.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getPinyinString(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->getInstance()Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    move-result-object v1

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 64
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3, p1, v1}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->matchesCharacter(Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseAppInfo;->getPinyinList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseAppInfo;->getPinyinList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->matchesChinesePinyin(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static isBreak(III)Z
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_9

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    if-eq p0, v1, :cond_6

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3

    const/4 p2, 0x3

    if-eq p0, p2, :cond_7

    const/16 p2, 0x14

    if-eq p0, p2, :cond_2

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return v2

    :pswitch_0
    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    :pswitch_1
    return v1

    :cond_3
    if-gt p1, v0, :cond_5

    if-gtz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-ne p2, v1, :cond_7

    return v1

    :cond_7
    if-eq p1, v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :cond_9
    :goto_2
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static matchesCharacter(Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z
    .locals 9

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_3

    if-gtz v0, :cond_0

    goto :goto_2

    .line 86
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    sub-int v4, v1, v0

    move v5, v2

    move v6, v5

    :goto_0
    if-gt v5, v4, :cond_3

    const/4 v7, 0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v5, v8, :cond_1

    add-int/lit8 v8, v5, 0x1

    .line 93
    invoke-virtual {p0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v2

    .line 94
    :goto_1
    invoke-static {v3, v6, v8}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->isBreak(III)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int v6, v5, v0

    .line 95
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    move v3, v8

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private static matchesChinesePinyin(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;",
            ")Z"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isChinese()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{javaSpaceChar}"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    move v2, v1

    .line 108
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 109
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v2

    :cond_3
    if-gez v0, :cond_4

    return v1

    .line 119
    :cond_4
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->getPinyinString(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->matchesCharacter(Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;-><init>(Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
