.class public final synthetic Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->$r8$lambda$RLGrPzrHqzuClG1EQvSF4xR0ggU(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
