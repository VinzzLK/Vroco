.class public final synthetic Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iput-boolean p2, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v1, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->$r8$lambda$qSDSepgU4X6YwlXplWhiOaX1k2Y(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
