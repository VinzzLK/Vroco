.class public final Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SessionsActivityLifecycleCallbacks.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionsActivityLifecycleCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionsActivityLifecycleCallbacks.kt\ncom/google/firebase/sessions/SessionsActivityLifecycleCallbacks\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

.field private static hasPendingForeground:Z

.field private static lifecycleClient:Lcom/google/firebase/sessions/SessionLifecycleClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->INSTANCE:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->lifecycleClient:Lcom/google/firebase/sessions/SessionLifecycleClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->backgrounded()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->lifecycleClient:Lcom/google/firebase/sessions/SessionLifecycleClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->foregrounded()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->hasPendingForeground:Z

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setLifecycleClient(Lcom/google/firebase/sessions/SessionLifecycleClient;)V
    .locals 0

    .line 34
    sput-object p1, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->lifecycleClient:Lcom/google/firebase/sessions/SessionLifecycleClient;

    if-eqz p1, :cond_0

    .line 36
    sget-boolean p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->hasPendingForeground:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 37
    sput-boolean p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->hasPendingForeground:Z

    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->foregrounded()V

    :cond_0
    return-void
.end method
