.class public final synthetic Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/views/RecentsView;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iput-wide p2, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iget-wide v1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->$r8$lambda$Fiui2HMOt4RxTR3Yqstai0wual8(Lcom/miui/home/recents/views/RecentsView;J)V

    return-void
.end method
