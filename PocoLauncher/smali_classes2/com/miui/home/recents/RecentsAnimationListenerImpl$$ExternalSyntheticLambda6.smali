.class public final synthetic Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$1:Z

    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->$r8$lambda$eb0ft_SDkVG26QEu_H2vrFhZq2o(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    return-void
.end method
