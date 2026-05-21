.class Lcom/miui/home/launcher/Launcher$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->reLoadLayoutOnSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;


# direct methods
.method public static synthetic $r8$lambda$gjupsf20R_UcSD1o0_EcCq21MZY(Lcom/miui/home/launcher/Launcher$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$4;->lambda$onComplete$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$4;->val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onComplete$0()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 1585
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$1300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$1200(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-interface {v1, v2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1581
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1582
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1000(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1583
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$1100(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 1584
    sget-object p1, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/launcher/Launcher$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$4$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$4;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
