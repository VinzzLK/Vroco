.class public final Lcom/miui/home/safemode/model/AppViewModel;
.super Ljava/lang/Object;
.source "AppViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppViewModel.kt\ncom/miui/home/safemode/model/AppViewModel\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n111#2,11:119\n111#2,8:130\n120#2,2:140\n1849#3,2:138\n*S KotlinDebug\n*F\n+ 1 AppViewModel.kt\ncom/miui/home/safemode/model/AppViewModel\n*L\n46#1:119,11\n70#1:130,8\n70#1:140,2\n77#1:138,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

.field private static final mAppInfoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/safemode/model/SafeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Lkotlinx/coroutines/sync/Mutex;

.field private static mProvider:Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;

.field private static final mTopIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VaMY8HX97OTAmxsITrSCm0NFEmI(Lcom/miui/home/safemode/model/SafeAppInfo;Lcom/miui/home/safemode/model/SafeAppInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/safemode/model/AppViewModel;->sortIcons$lambda-6(Lcom/miui/home/safemode/model/SafeAppInfo;Lcom/miui/home/safemode/model/SafeAppInfo;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/miui/home/safemode/model/AppViewModel;

    invoke-direct {v0}, Lcom/miui/home/safemode/model/AppViewModel;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/model/AppViewModel;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 17
    invoke-static {v0, v2, v4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mLock:Lkotlinx/coroutines/sync/Mutex;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sget-boolean v2, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v4, 0x7

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.deskclock"

    const/4 v7, 0x4

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.miui.gallery"

    const/4 v10, 0x2

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "com.android.camera"

    const/4 v12, 0x6

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-nez v2, :cond_0

    const-string v2, "com.android.contacts"

    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.mms"

    .line 24
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.miui.weather2"

    .line 27
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.miui.securitycenter"

    .line 29
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.miui.securitymanager"

    .line 30
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.tencent.mm"

    .line 31
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.dialer"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.apps.messaging"

    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.settings"

    .line 37
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.chrome"

    .line 39
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.whatsapp"

    .line 40
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    sput-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mTopIcons:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final sortIcons()V
    .locals 1

    .line 86
    sget-object p0, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static final sortIcons$lambda-6(Lcom/miui/home/safemode/model/SafeAppInfo;Lcom/miui/home/safemode/model/SafeAppInfo;)I
    .locals 3

    .line 87
    sget-object v0, Lcom/miui/home/safemode/model/AppViewModel;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

    const-string v1, "o1"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/model/AppViewModel;->sortValue(Lcom/miui/home/safemode/model/SafeAppInfo;)I

    move-result v1

    const-string v2, "o2"

    .line 88
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/miui/home/safemode/model/AppViewModel;->sortValue(Lcom/miui/home/safemode/model/SafeAppInfo;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const-string v2, ""

    if-nez p0, :cond_1

    move-object p0, v2

    :cond_1
    invoke-direct {v0, p0}, Lcom/miui/home/safemode/model/AppViewModel;->toPinYin(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-direct {v0, v2}, Lcom/miui/home/safemode/model/AppViewModel;->toPinYin(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    goto :goto_2

    .line 92
    :cond_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_2
    return p0
.end method

.method private final sortValue(Lcom/miui/home/safemode/model/SafeAppInfo;)I
    .locals 5

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const/4 v3, 0x2

    const-string v4, "com.android.contacts.activities.PeopleActivity"

    .line 99
    invoke-static {p0, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/16 p0, 0xa

    if-eqz v1, :cond_2

    goto :goto_2

    .line 102
    :cond_2
    sget-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mTopIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_4

    :cond_3
    const-string p1, ""

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 101
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_2
    return p0
.end method

.method private final toPinYin(Ljava/lang/CharSequence;)I
    .locals 3

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 110
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 112
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :cond_2
    return p0
.end method


# virtual methods
.method public final loadApps(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/miui/home/safemode/model/SafeAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;

    iget v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;-><init>(Lcom/miui/home/safemode/model/AppViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    .line 44
    iget v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean p2, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->Z$0:Z

    iget-object p1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->L$0:Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, p3

    goto :goto_1

    .line 128
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadApps: fresh "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppViewModel"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p0, Lcom/miui/home/safemode/model/AppViewModel;->mLock:Lkotlinx/coroutines/sync/Mutex;

    .line 116
    iput-object p1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->Z$0:Z

    iput v2, v0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    invoke-interface {p0, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_3

    return-object p3

    .line 47
    :cond_3
    :goto_1
    :try_start_0
    sget-object p3, Lcom/miui/home/safemode/model/AppViewModel;->mProvider:Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;

    if-nez p3, :cond_4

    .line 48
    new-instance p3, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;-><init>(Landroid/content/Context;)V

    sput-object p3, Lcom/miui/home/safemode/model/AppViewModel;->mProvider:Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;

    .line 50
    :cond_4
    sget-object p1, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 51
    sget-object p1, Lcom/miui/home/safemode/model/AppViewModel;->mProvider:Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;

    if-eqz p1, :cond_9

    if-nez p2, :cond_5

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->getAllLauncherActivityInfo()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 53
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->loadApps()V

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->getAllLauncherActivityInfo()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "it.allLauncherActivityInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 57
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/safemode/model/SafeAppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 58
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    .line 59
    sget-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/safemode/model/SafeAppInfo;

    invoke-direct {v1, p2, v3, p3}, Lcom/miui/home/safemode/model/SafeAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    :cond_8
    sget-object p1, Lcom/miui/home/safemode/model/AppViewModel;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

    invoke-direct {p1}, Lcom/miui/home/safemode/model/AppViewModel;->sortIcons()V

    .line 64
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "unmodifiableList(ArrayList(mAppInfoData))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final loadAppsBackup(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/miui/home/safemode/model/SafeAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;

    iget v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;-><init>(Lcom/miui/home/safemode/model/AppViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    .line 68
    iget v1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, p2

    goto :goto_1

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p0, "AppViewModel"

    const-string v1, "loadAppsBackup: "

    .line 69
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object p0, Lcom/miui/home/safemode/model/AppViewModel;->mLock:Lkotlinx/coroutines/sync/Mutex;

    .line 116
    iput-object p1, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/miui/home/safemode/model/AppViewModel$loadAppsBackup$1;->label:I

    invoke-interface {p0, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_3

    return-object p2

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 72
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 73
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string p2, "packageManager.queryInte\u2026Activities(mainIntent, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_4

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 78
    sget-object v0, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/safemode/model/SafeAppInfo;

    invoke-direct {v1, v3, p2, v3}, Lcom/miui/home/safemode/model/SafeAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/miui/home/safemode/model/AppViewModel;->mAppInfoData:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "unmodifiableList(ArrayList(mAppInfoData))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
