.class public final synthetic Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/recents/util/RemoteAnimationProvider;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/LauncherInitListener;

.field public final synthetic f$1:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iput-object p2, p0, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iget-object p0, p0, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/CancellationSignal;

    invoke-static {v0, p0, p1}, Lcom/miui/home/recents/LauncherInitListener;->$r8$lambda$cqDL3j9aG10oFZ3T29ddGwG9ndk(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
