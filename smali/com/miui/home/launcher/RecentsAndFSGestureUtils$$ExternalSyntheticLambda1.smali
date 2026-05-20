.class public final synthetic Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iput-boolean p2, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p0, p0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->$r8$lambda$eyLjqzkLUR5yDApf60MAzt1R0vc(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
