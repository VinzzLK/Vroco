.class public final synthetic Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field public final synthetic f$2:Lcom/miui/home/launcher/LauncherState;

.field public final synthetic f$3:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iput-object p3, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/LauncherState;

    iput-object p4, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iget-object v2, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/LauncherState;

    iget-object p0, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->$r8$lambda$VS6w_JpIx_SiQVByqcUpFyp4akg(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method
