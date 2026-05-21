.class public final Lcom/miui/home/safemode/LoadAppTask;
.super Ljava/lang/Object;
.source "LoadAppTask.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final adapter:Lcom/miui/home/safemode/SafeAppListAdapter;

.field private final context:Landroid/content/Context;

.field private final fresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/miui/home/safemode/LoadAppTask;->adapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    .line 20
    iput-boolean p3, p0, Lcom/miui/home/safemode/LoadAppTask;->fresh:Z

    const-string p1, "LoadAppTask"

    .line 22
    iput-object p1, p0, Lcom/miui/home/safemode/LoadAppTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getIcon(Lcom/miui/home/safemode/LoadAppTask;Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/safemode/LoadAppTask;->getIcon(Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/miui/home/safemode/LoadAppTask;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getIcon(Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/safemode/LoadAppTask;->getOriginIcon(Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 79
    :cond_2
    :goto_1
    sget-object v1, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/safemode/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/miui/home/safemode/SafeModeUtil;->loadIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final getOriginIcon(Lcom/miui/home/safemode/model/SafeAppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-object p0, v0

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 91
    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/safemode/model/SafeAppInfo;->getInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 94
    :goto_2
    invoke-static {p0}, Lcom/miui/home/safemode/IconUtil;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final getAdapter()Lcom/miui/home/safemode/SafeAppListAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->adapter:Lcom/miui/home/safemode/SafeAppListAdapter;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/safemode/LoadAppTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getFresh()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/miui/home/safemode/LoadAppTask;->fresh:Z

    return p0
.end method

.method public run()V
    .locals 6

    .line 25
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/miui/home/safemode/LoadAppTask$run$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/miui/home/safemode/LoadAppTask$run$1;-><init>(Lcom/miui/home/safemode/LoadAppTask;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
