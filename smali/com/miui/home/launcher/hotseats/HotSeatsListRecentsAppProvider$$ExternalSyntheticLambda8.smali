.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda8;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda8;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->$r8$lambda$RvM3HrZkM_qKSRWOeAW8P3HYicQ(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Void;)Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method
