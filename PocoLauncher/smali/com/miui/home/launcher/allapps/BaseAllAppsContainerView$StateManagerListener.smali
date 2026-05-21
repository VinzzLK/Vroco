.class Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateManagerListener"
.end annotation


# instance fields
.field private final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    .line 393
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, p0, :cond_1

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->dismissAll()V

    :cond_1
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method
