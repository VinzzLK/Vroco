.class public Lcom/miui/home/launcher/util/WorkProfileDialogTracker;
.super Ljava/lang/Object;
.source "WorkProfileDialogTracker.java"


# static fields
.field private static final liveDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertDialog;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$L768ZtHcfcb56QMbqwl-lE_400E(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->lambda$showWithTracking$0(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T9MUSZj40wilX1moFl7poD5DPCE(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->lambda$showWithTracking$1(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzzmh3rReQ4SY2u34q_Y7WkefO0(Lmiuix/appcompat/app/AlertDialog;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->lambda$cleanup$2(Lmiuix/appcompat/app/AlertDialog;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->liveDialogs:Ljava/util/Set;

    return-void
.end method

.method private static cleanup(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->liveDialogs:Ljava/util/Set;

    new-instance v1, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static dismissAll()V
    .locals 3

    .line 33
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->liveDialogs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->liveDialogs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private static synthetic lambda$cleanup$2(Lmiuix/appcompat/app/AlertDialog;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 29
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showWithTracking$0(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->cleanup(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method private static synthetic lambda$showWithTracking$1(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 22
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p1, p0, :cond_0

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->dismissAll()V

    :cond_0
    return-void
.end method

.method public static showWithTracking(Landroidx/activity/ComponentActivity;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 19
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->liveDialogs:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 21
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
