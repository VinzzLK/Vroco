.class public final synthetic Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->$r8$lambda$N2oLnVsK_cI94HtXLDo4Pjisj7Q(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Ljava/lang/Runnable;J)V

    return-void
.end method
