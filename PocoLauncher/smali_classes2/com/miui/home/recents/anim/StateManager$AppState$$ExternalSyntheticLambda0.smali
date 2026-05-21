.class public final synthetic Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager$AppState;

.field public final synthetic f$1:Lcom/miui/home/recents/event/Event;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/StateManager$AppState;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/event/Event;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/StateManager$AppState;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/event/Event;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager$AppState;->$r8$lambda$Byd71jd9fDeQOgqEjMgEnHmNtAE(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V

    return-void
.end method
