.class final Lcom/miui/home/safemode/LoadAppTask$run$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoadAppTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/safemode/LoadAppTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.home.safemode.LoadAppTask$run$1"
    f = "LoadAppTask.kt"
    l = {
        0x1b,
        0x22,
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/miui/home/safemode/LoadAppTask;


# direct methods
.method constructor <init>(Lcom/miui/home/safemode/LoadAppTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/safemode/LoadAppTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miui/home/safemode/LoadAppTask$run$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/home/safemode/LoadAppTask$run$1;

    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/safemode/LoadAppTask$run$1;-><init>(Lcom/miui/home/safemode/LoadAppTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/safemode/LoadAppTask$run$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/safemode/LoadAppTask$run$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miui/home/safemode/LoadAppTask$run$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miui/home/safemode/LoadAppTask$run$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget v2, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    :try_start_2
    sget-object p1, Lcom/miui/home/safemode/model/AppViewModel;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

    iget-object v2, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-virtual {v2}, Lcom/miui/home/safemode/LoadAppTask;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-virtual {v6}, Lcom/miui/home/safemode/LoadAppTask;->getFresh()Z

    move-result v6

    iput v5, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->label:I

    invoke-virtual {p1, v2, v6, p0}, Lcom/miui/home/safemode/model/AppViewModel;->loadApps(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 29
    :goto_1
    iget-object v2, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-static {v2}, Lcom/miui/home/safemode/LoadAppTask;->access$getTAG$p(Lcom/miui/home/safemode/LoadAppTask;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "loadApps failed: "

    invoke-static {v2, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 32
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34
    :try_start_3
    sget-object p1, Lcom/miui/home/safemode/model/AppViewModel;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel;

    iget-object v2, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-virtual {v2}, Lcom/miui/home/safemode/LoadAppTask;->getContext()Landroid/content/Context;

    move-result-object v2

    iput v4, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->label:I

    invoke-virtual {p1, v2, p0}, Lcom/miui/home/safemode/model/AppViewModel;->loadAppsBackup(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 36
    :goto_4
    iget-object v2, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-static {v2}, Lcom/miui/home/safemode/LoadAppTask;->access$getTAG$p(Lcom/miui/home/safemode/LoadAppTask;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "loadAppsBackup failed: "

    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 40
    :cond_6
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_6
    const/4 v6, 0x0

    if-ge v4, v5, :cond_e

    .line 44
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/safemode/model/SafeAppInfo;

    .line 46
    :try_start_4
    iget-object v8, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-static {v8, v7}, Lcom/miui/home/safemode/LoadAppTask;->access$getIcon(Lcom/miui/home/safemode/LoadAppTask;Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-object v8, v6

    .line 49
    :goto_7
    :try_start_5
    invoke-virtual {v7}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    .line 50
    :cond_7
    invoke-virtual {v7}, Lcom/miui/home/safemode/model/SafeAppInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-virtual {v10}, Lcom/miui/home/safemode/LoadAppTask;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    :cond_8
    move-object v9, v0

    .line 53
    :cond_9
    :goto_8
    :try_start_6
    invoke-virtual {v7}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v10, :cond_c

    .line 54
    :cond_a
    invoke-virtual {v7}, Lcom/miui/home/safemode/model/SafeAppInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_b

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :cond_b
    move-object v10, v6

    :goto_9
    if-nez v10, :cond_c

    :catch_4
    move-object v10, v0

    .line 57
    :cond_c
    :try_start_7
    invoke-virtual {v7}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 59
    :catch_5
    :cond_d
    new-instance v7, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;

    invoke-direct {v7, v9, v8, v10, v6}, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 62
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 66
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v0, Lcom/miui/home/safemode/LoadAppTask$run$1$1;

    iget-object v4, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->this$0:Lcom/miui/home/safemode/LoadAppTask;

    invoke-direct {v0, v4, v2, v6}, Lcom/miui/home/safemode/LoadAppTask$run$1$1;-><init>(Lcom/miui/home/safemode/LoadAppTask;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/miui/home/safemode/LoadAppTask$run$1;->label:I

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f

    return-object v1

    .line 69
    :cond_f
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 64
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "loadApps failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
